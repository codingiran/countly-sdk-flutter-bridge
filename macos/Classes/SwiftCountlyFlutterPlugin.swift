import Flutter
import AppKit

public class SwiftCountlyFlutterPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "countly_flutter", binaryMessenger: registrar.messenger())
    let instance = SwiftCountlyFlutterPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    let sys = NSDictionary(contentsOfFile: "/System/Library/CoreServices/SystemVersion.plist")
    let version = (sys?["ProductVersion"] as? String) ?? "Unknown"
    result("MacOS " + version)
  }
}
