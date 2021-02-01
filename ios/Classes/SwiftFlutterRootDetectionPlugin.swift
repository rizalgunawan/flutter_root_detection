import Flutter
import UIKit
import DTTJailbreakDetection

public class SwiftFlutterRootDetectionPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_root_detection", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterRootDetectionPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "rooted":
        result(IOSSecuritySuite.amIJailbroken())
        //result(Jbdn.ijb())
        break
    case "developerMode":
        result(false)
        break
    case "onEmulator":
       result(IOSSecuritySuite.amIRunInEmulator())
    case "amIReverseEngineered":
        result(IOSSecuritySuite.amIReverseEngineered())
    case "amIJailbrokenWithFailedChecks":
      let jailbreakStatus = IOSSecuritySuite.amIJailbrokenWithFailedChecks()
      if jailbreakStatus.jailbroken {
        if (jailbreakStatus.failedChecks.contains { $0.check == .existenceOfSuspiciousFiles }) && (jailbreakStatus.failedChecks.contains { $0.check == .suspiciousFilesCanBeOpened }) {
            result(true)
        }
      } else {
         result(false)
      }
      break
    default:
        result(FlutterMethodNotImplemented)
    }
  }
}
