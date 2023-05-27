// ignore_for_file: public_member_api_docs

import 'package:path/path.dart' as path;

/// Relative path to android resource folder
String androidResFolder(String? appModule, String? flavor) =>
    "${appModule?.isEmpty == true ? '' : '../$appModule/'}android/app/src/${flavor ?? 'main'}/res/";

/// Relative path to android colors.xml file
String androidColorsFile(String? appModule, String? flavor) =>
    "${appModule?.isEmpty == true ? '' : '../$appModule/'}android/app/src/${flavor ?? 'main'}/res/values/colors.xml";

String androidManifestFile(String? appModule) => '${appModule?.isEmpty == true ? '' : '../$appModule/'}android/app/src/main/AndroidManifest.xml';
String androidGradleFile(String? appModule) => '${appModule?.isEmpty == true ? '' : '../$appModule/'}android/app/build.gradle';
String androidLocalPropertiesFile(String? appModule) => '${appModule?.isEmpty == true ? '' : '../$appModule/'}android/local.properties';

/// Relative path to flutter.gradle from flutter sdk path
const String androidFlutterGardlePath =
    'packages/flutter_tools/gradle/flutter.gradle';

/// Default min_sdk value for android
/// https://github.com/flutter/flutter/blob/master/packages/flutter_tools/gradle/flutter.gradle#L35-L37
const int androidDefaultAndroidMinSDK = 21;
const String androidFileName = 'ic_launcher.png';
const String androidAdaptiveForegroundFileName = 'ic_launcher_foreground.png';
const String androidAdaptiveBackgroundFileName = 'ic_launcher_background.png';
String androidAdaptiveXmlFolder(String? appModule, String? flavor) =>
    androidResFolder(appModule, flavor) + 'mipmap-anydpi-v26/';
const String androidDefaultIconName = 'ic_launcher';

String iosDefaultIconFolder(String? appModule) =>
    '${appModule?.isEmpty == true ? '' : '../$appModule/'}ios/Runner/Assets.xcassets/AppIcon.appiconset/';
String iosAssetFolder(String? appModule) => '${appModule?.isEmpty == true ? '' : '../$appModule/'}ios/Runner/Assets.xcassets/';
String iosConfigFile(String? appModule) => '${appModule?.isEmpty == true ? '' : '../$appModule/'}ios/Runner.xcodeproj/project.pbxproj';
const String iosDefaultIconName = 'Icon-App';

// web
/// favicon.ico size
const int kFaviconSize = 16;

/// Relative web direcotry path
String webDirPath = path.join('web');

/// Relative web icons directory path
String webIconsDirPath = path.join(webDirPath, 'icons');

/// Relative web manifest.json file path
String webManifestFilePath = path.join(webDirPath, 'manifest.json');
// TODO(RatakondalaArun): support for other images formats
/// Relative favicon.png path
String webFaviconFilePath = path.join(webDirPath, 'favicon.png');

/// Relative index.html file path
String webIndexFilePath = path.join(webDirPath, 'index.html');

/// Relative pubspec.yaml path
String pubspecFilePath = path.join('pubspec.yaml');

// Windows
/// Relative path to windows directory
String windowsDirPath = path.join('windows');

/// Relative path to windows resources directory
String windowsResourcesDirPath =
    path.join(windowsDirPath, 'runner', 'resources');

/// Relative path to windows icon file path
String windowsIconFilePath = path.join(windowsResourcesDirPath, 'app_icon.ico');

/// Default windows icon size for flutter
///
const int windowsDefaultIconSize = 48;

// MacOS

/// Relative path to macos folder
final macOSDirPath = path.join('macos');

/// Relative path to macos icons folder
final macOSIconsDirPath =
    path.join(macOSDirPath, 'Runner', 'Assets.xcassets', 'AppIcon.appiconset');

/// Relative path to macos contents.json
final macOSContentsFilePath = path.join(macOSIconsDirPath, 'Contents.json');

const String errorMissingImagePath =
    'Missing "image_path" or "image_path_android" + "image_path_ios" within configuration';
const String errorMissingPlatform =
    'No platform specified within config to generate icons for.';
const String errorMissingRegularAndroid =
    'Adaptive icon config found but no regular Android config. '
    'Below API 26 the regular Android config is required';
const String errorIncorrectIconName =
    'The icon name must contain only lowercase a-z, 0-9, or underscore: '
    'E.g. "ic_my_new_icon"';

String introMessage(String currentVersion) => '''
  ════════════════════════════════════════════
     FLUTTER LAUNCHER ICONS (v$currentVersion)                               
  ════════════════════════════════════════════
  ''';
