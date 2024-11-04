package global_corporation.general_developer.azkadev.system_information_flutter

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

import android.media.MediaDrm
import java.util.UUID

/** SystemInformationFlutterPlugin */
class SystemInformationFlutterPlugin : FlutterPlugin, MethodCallHandler {
  /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private lateinit var channel: MethodChannel

  override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "system_information_flutter")
    channel.setMethodCallHandler(this)
  }

  override fun onMethodCall(call: MethodCall, result: Result) {
    if (call.method == "getPlatformVersion") {

      result.success("Android ${android.os.Build.VERSION.RELEASE}")
    } else if (call.method == "getDeviceDrmId") {
      val devId = getDeviceDrmId()
      result.success(devId)
    } else {
      result.notImplemented()
    }
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }

  private fun getDeviceDrmId(): String? {
    val wideVineUuid = UUID(-0x121074568629b532L, -0x5c37d8232ae2de13L)
    return try {
        val wvDrm = MediaDrm(wideVineUuid)
        val wideVineId = wvDrm.getPropertyByteArray(MediaDrm.PROPERTY_DEVICE_UNIQUE_ID)
        wideVineId.joinToString(":") { String.format("%02X", it) }
    } catch (e: java.lang.Exception) {
        null
    }
}
}
