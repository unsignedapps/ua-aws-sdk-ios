Pod::Spec.new do |s|
  s.name         = "UAAWSSDK"
  s.version      = "0.6"
  s.summary      = "An iOS SDK for connecting and interacting with the AWS APIs."
  s.description  = <<-DESC
                An iOS SDK for accessing the Amazon Web Service APIs. Designed to be fully asynchronous and simple, its much less verbose
				than the official iOS SDK and is strongly typed where possible, including use of enum values for known strings.
                    DESC
  s.homepage     = "http://github.com/unsignedapps/ua-aws-sdk-ios"
  s.license      = 'MIT'
  s.author       = { "Unsigned Apps" => "uaawssdk@unsignedapps.com" }
  s.source       = { :git => "https://github.com/unsignedapps/ua-aws-sdk-ios.git", :tag => "0.6" }
  s.platform     = :ios, '7.0'
  s.source_files = 'Vendor/**/**/*.{h,m}', 'Vendor/**/*.{h,m}', 'AWS iOS SDK/UAAWSSDK.h', 'AWS iOS SDK/**/*.{h,m}'
  s.exclude_files = 'Classes/Exclude', 'AWS iOS SDK/UAAppDelegate.*', 'AWS iOS SDK/main.m'
  s.library      = 'xml2'
  s.requires_arc = true
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }
end
