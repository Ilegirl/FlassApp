import 'package:torch_light/torch_light.dart';

class FlashFunction {
  static Future<void> turnOnFlash() async {
    try {
      await TorchLight.enableTorch();
    } on Exception catch (_) {
      // Handle error
    }
  }

  static Future<void> turnOffFlash() async {
    try {
      await TorchLight.disableTorch();
    } on Exception catch (_) {
      // Handle error
    }
  }

  static void toggleFlash(bool isFlashOn) {
    if (isFlashOn) {
      turnOffFlash(); // 플래시를 끔
    } else {
      turnOnFlash(); // 플래시를 켬
    }
  }
}