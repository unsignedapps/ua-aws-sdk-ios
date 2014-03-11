#import <Foundation/Foundation.h>
#import <libxml/tree.h>

@class UADDXMLDocument;

/**
 * Welcome to KissXML.
 * 
 * The project page has documentation if you have questions.
 * https://github.com/robbiehanson/KissXML
 * 
 * If you're new to the project you may wish to read the "Getting Started" wiki.
 * https://github.com/robbiehanson/KissXML/wiki/GettingStarted
 * 
 * KissXML provides a drop-in replacement for Apple's NSXML class cluster.
 * The goal is to get the exact same behavior as the NSXML classes.
 * 
 * For API Reference, see Apple's excellent documentation,
 * either via Xcode's Mac OS X documentation, or via the web:
 * 
 * https://github.com/robbiehanson/KissXML/wiki/Reference
**/

enum {
	UADDXMLInvalidKind                = 0,
	UADDXMLDocumentKind               = XML_DOCUMENT_NODE,
	UADDXMLElementKind                = XML_ELEMENT_NODE,
	UADDXMLAttributeKind              = XML_ATTRIBUTE_NODE,
	UADDXMLNamespaceKind              = XML_NAMESPACE_DECL,
	UADDXMLProcessingInstructionKind  = XML_PI_NODE,
	UADDXMLCommentKind                = XML_COMMENT_NODE,
	UADDXMLTextKind                   = XML_TEXT_NODE,
	UADDXMLDTDKind                    = XML_DTD_NODE,
	UADDXMLEntityDeclarationKind      = XML_ENTITY_DECL,
	UADDXMLAttributeDeclarationKind   = XML_ATTRIBUTE_DECL,
	UADDXMLElementDeclarationKind     = XML_ELEMENT_DECL,
	UADDXMLNotationDeclarationKind    = XML_NOTATION_NODE
};
typedef NSUInteger UADDXMLNodeKind;

enum {
	UADDXMLNodeOptionsNone            = 0,
	UADDXMLNodeExpandEmptyElement     = 1 << 1,
	UADDXMLNodeCompactEmptyElement    = 1 << 2,
	UADDXMLNodePrettyPrint            = 1 << 17,
};


//extern struct _xmlKind;


@interface UADDXMLNode : NSObject <NSCopying>
{
	// Every DDXML object is simply a wrapper around an underlying libxml node
	struct _xmlKind *genericPtr;
	
	// Every libxml node resides somewhere within an xml tree heirarchy.
	// We cannot free the tree heirarchy until all referencing nodes have been released.
	// So all nodes retain a reference to the node that created them,
	// and when the last reference is released the tree gets freed.
	UADDXMLNode *owner;
}

//- (id)initWithKind:(DDXMLNodeKind)kind;

//- (id)initWithKind:(DDXMLNodeKind)kind options:(NSUInteger)options;

//+ (id)document;

//+ (id)documentWithRootElement:(UADDXMLElement *)element;

+ (id)elementWithName:(NSString *)name;

+ (id)elementWithName:(NSString *)name URI:(NSString *)URI;

+ (id)elementWithName:(NSString *)name stringValue:(NSString *)string;

+ (id)elementWithName:(NSString *)name children:(NSArray *)children attributes:(NSArray *)attributes;

+ (id)attributeWithName:(NSString *)name stringValue:(NSString *)stringValue;

+ (id)attributeWithName:(NSString *)name URI:(NSString *)URI stringValue:(NSString *)stringValue;

+ (id)namespaceWithName:(NSString *)name stringValue:(NSString *)stringValue;

+ (id)processingInstructionWithName:(NSString *)name stringValue:(NSString *)stringValue;

+ (id)commentWithStringValue:(NSString *)stringValue;

+ (id)textWithStringValue:(NSString *)stringValue;

//+ (id)DTDNodeWithXMLString:(NSString *)string;

#pragma mark --- Properties ---

- (UADDXMLNodeKind)kind;

- (void)setName:(NSString *)name;
- (NSString *)name;

//- (void)setObjectValue:(id)value;
//- (id)objectValue;

- (void)setStringValue:(NSString *)string;
//- (void)setStringValue:(NSString *)string resolvingEntities:(BOOL)resolve;
- (NSString *)stringValue;

#pragma mark --- Tree Navigation ---

- (NSUInteger)index;

- (NSUInteger)level;

- (UADDXMLDocument *)rootDocument;

- (UADDXMLNode *)parent;
- (NSUInteger)childCount;
- (NSArray *)children;
- (UADDXMLNode *)childAtIndex:(NSUInteger)index;

- (UADDXMLNode *)previousSibling;
- (UADDXMLNode *)nextSibling;

- (UADDXMLNode *)previousNode;
- (UADDXMLNode *)nextNode;

- (void)detach;

- (NSString *)XPath;

#pragma mark --- QNames ---

- (NSString *)localName;
- (NSString *)prefix;

- (void)setURI:(NSString *)URI;
- (NSString *)URI;

+ (NSString *)localNameForName:(NSString *)name;
+ (NSString *)prefixForName:(NSString *)name;
//+ (UADDXMLNode *)predefinedNamespaceForPrefix:(NSString *)name;

#pragma mark --- Output ---

- (NSString *)description;
- (NSString *)XMLString;
- (NSString *)XMLStringWithOptions:(NSUInteger)options;
//- (NSString *)canonicalXMLStringPreservingComments:(BOOL)comments;

#pragma mark --- XPath/XQuery ---

- (NSArray *)nodesForXPath:(NSString *)xpath error:(NSError **)error;

// This is an extension over NSXMLNode.
// It is required if you are using XPath with documents with default namespaces.
- (NSArray *)nodesForXPath:(NSString *)xpath namespaceMappings:(NSDictionary*)namespaceMappings error:(NSError **)error;

//- (NSArray *)objectsForXQuery:(NSString *)xquery constants:(NSDictionary *)constants error:(NSError **)error;
//- (NSArray *)objectsForXQuery:(NSString *)xquery error:(NSError **)error;

+ (void)installErrorHandlersInThread;

@end
