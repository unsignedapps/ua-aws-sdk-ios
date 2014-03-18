#!/bin/sh

# Define these to suit your nefarious purposes
FRAMEWORK_NAME="UAAWS${UA_FRAMEWORK_TARGET}"
FRAMEWORK_VERSION=A


# Where we'll put the build framework.
# The script presumes we're in the project root
# directory. Xcode builds in "build" by default
FRAMEWORK_BUILD_PATH="build/framework"


# Clean any existing framework that might be there
# already
echo "Framework: Cleaning framework..."
if [ -d "$FRAMEWORK_BUILD_PATH" ]
then
	rm -rf "$FRAMEWORK_BUILD_PATH/$FRAMEWORK_NAME.framework"
fi


if [ -n $1 ] && [ "$1" == "clean" ];
then
	rm -rf build
	echo "Cleaning Completed"
	exit 0
else
    # Build .a files
	xcodebuild -configuration Debug \
        -project "AWS iOS SDK.xcodeproj" \
        -target "${UA_FRAMEWORK_TARGET}" \
        -sdk iphonesimulator \
        clean build
    # xcodebuild -configuration Debug64 \
    #     -project "AWS iOS SDK.xcodeproj" \
    #     -target "${UA_FRAMEWORK_TARGET}" \
    #     -sdk iphonesimulator \
    #     clean build
    xcodebuild -configuration Release \
        -project "AWS iOS SDK.xcodeproj" \
        -target "${UA_FRAMEWORK_TARGET}" \
        -sdk iphoneos \
        clean build
    # xcodebuild -configuration Release64 \
    #         -project "AWS iOS SDK.xcodeproj" \
    #         -target "${UA_FRAMEWORK_TARGET}" \
    #         -sdk iphoneos \
    #         clean build


	# This is the full name of the framework we'll
	# build
	FRAMEWORK_DIR=$FRAMEWORK_BUILD_PATH/$FRAMEWORK_NAME.framework


	# Build the canonical Framework bundle directory
	# structure
	echo "Framework: Setting up directories..."
	mkdir -p $FRAMEWORK_DIR
	mkdir -p $FRAMEWORK_DIR/Versions
	mkdir -p $FRAMEWORK_DIR/Versions/$FRAMEWORK_VERSION
	mkdir -p $FRAMEWORK_DIR/Versions/$FRAMEWORK_VERSION/Resources
	mkdir -p $FRAMEWORK_DIR/Versions/$FRAMEWORK_VERSION/Headers

	echo "Framework: Creating symlinks..."
	ln -s $FRAMEWORK_VERSION $FRAMEWORK_DIR/Versions/Current
	ln -s Versions/Current/Headers $FRAMEWORK_DIR/Headers
	ln -s Versions/Current/Resources $FRAMEWORK_DIR/Resources
	ln -s Versions/Current/$FRAMEWORK_NAME $FRAMEWORK_DIR/$FRAMEWORK_NAME


	# The trick for creating a fully usable library is
	# to use lipo to glue the different library
	# versions together into one file. When an
	# application is linked to this library, the
	# linker will extract the appropriate platform
	# version and use that.
	# The library file is given the same name as the
	# framework with no .a extension.
	echo "Framework: Creating library..."
	lipo -create \
        "build/Debug-iphonesimulator/libUAAWS${UA_FRAMEWORK_TARGET}.a" \
        "build/Release-iphoneos/libUAAWS${UA_FRAMEWORK_TARGET}.a" \
        -o "$FRAMEWORK_DIR/Versions/Current/$FRAMEWORK_NAME"


	# Now copy the final assets over: your library
	# header files and the plist file
	echo "Framework: Copying assets into current version..."
	if [ "${UA_FRAMEWORK_TARGET}" == "Common" ];
	then
		cp -a AWS\ iOS\ SDK/Common/*.h $FRAMEWORK_DIR/Headers/
		cp -a AWS\ iOS\ SDK/Extensions/*.h $FRAMEWORK_DIR/Headers/
		cp -a Vendor/*/*.h $FRAMEWORK_DIR/Headers/
		cp -a Vendor/Mantle/*/*.h $FRAMEWORK_DIR/Headers/
		cp -a Vendor/KissXML/*/*.h $FRAMEWORK_DIR/Headers/
	else
		cp -a AWS\ iOS\ SDK/${UA_FRAMEWORK_TARGET}/*.h $FRAMEWORK_DIR/Headers/
		cp -a AWS\ iOS\ SDK/${UA_FRAMEWORK_TARGET}/Models/*.h $FRAMEWORK_DIR/Headers/
		cp -a AWS\ iOS\ SDK/${UA_FRAMEWORK_TARGET}/Requests/*.h $FRAMEWORK_DIR/Headers/
		cp -a AWS\ iOS\ SDK/${UA_FRAMEWORK_TARGET}/Responses/*.h $FRAMEWORK_DIR/Headers/
        cp -a AWS\ iOS\ SDK/Framework\ Includes/UAAWS${UA_FRAMEWORK_TARGET}.h $FRAMEWORK_DIR/Headers/
	fi


	# prune out non-public files
	cp -a AWS\ iOS\ SDK/AWS\ iOS\ SDK-Info.plist $FRAMEWORK_DIR/Resources/Info.plist


	# Copy Framework to 'sample project' accessible location
	echo "Copying framework to samples accessible location"
    	rm -rf build/../../$FRAMEWORK_NAME.framework
	cp -a $FRAMEWORK_BUILD_PATH/$FRAMEWORK_NAME.framework build/../../$FRAMEWORK_NAME.framework


	# run checks against the completed Framework
	# failing this will stop the build
	if [ -x "Scripts/checkfiles.sh" ]; then
		Scripts/checkfiles.sh
	fi
fi
