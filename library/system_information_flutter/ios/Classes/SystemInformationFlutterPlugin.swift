import Flutter
import UIKit
import JNKeychain

public class SystemInformationFlutterPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "system_information_flutter", binaryMessenger: registrar.messenger())
    let instance = SystemInformationFlutterPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("iOS " + UIDevice.current.systemVersion)
    case "getDeviceDrmId":
        let key = "global_corporation.general_developer.azkadev.system_information_flutter/device_id"
        result(self.getDeviceIdentifierFromKeychain(key: key))
    default:
      result(FlutterMethodNotImplemented)
    }
  }



  func getDeviceIdentifierFromKeychain(key : String) -> String {
    // try to get value from keychain
    var deviceUDID = self.keychain_valueForKey(key) as? String
    if deviceUDID == nil {
        deviceUDID = UIDevice.current.identifierForVendor!.uuidString
        // save new value in keychain
        self.keychain_setObject(deviceUDID! as AnyObject, forKey: key)
    }
    return deviceUDID!
  }

  func keychain_setObject(_ object: AnyObject, forKey: String) {
    JNKeychain.saveValue(object, forKey: forKey)
  }

  func keychain_valueForKey(_ key: String) -> AnyObject? {
    let value = JNKeychain.loadValue(forKey: key)
    return value as AnyObject?
  }
}
