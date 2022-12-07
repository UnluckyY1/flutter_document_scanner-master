#import "FlutterDocumentScannerPlugin.h"
#if __has_include(<flutter_document_scanner/flutter_document_scanner-Swift.h>)
#import <flutter_document_scanner/flutter_document_scanner-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_document_scanner-Swift.h"
#endif

@implementation FlutterDocumentScannerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterDocumentScannerPlugin registerWithRegistrar:registrar];
}
@end
