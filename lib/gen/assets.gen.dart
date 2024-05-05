/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/MPLUS1p-Black.ttf
  String get mPLUS1pBlack => 'assets/fonts/MPLUS1p-Black.ttf';

  /// File path: assets/fonts/MPLUS1p-Bold.ttf
  String get mPLUS1pBold => 'assets/fonts/MPLUS1p-Bold.ttf';

  /// File path: assets/fonts/MPLUS1p-ExtraBold.ttf
  String get mPLUS1pExtraBold => 'assets/fonts/MPLUS1p-ExtraBold.ttf';

  /// File path: assets/fonts/MPLUS1p-Light.ttf
  String get mPLUS1pLight => 'assets/fonts/MPLUS1p-Light.ttf';

  /// File path: assets/fonts/MPLUS1p-Medium.ttf
  String get mPLUS1pMedium => 'assets/fonts/MPLUS1p-Medium.ttf';

  /// File path: assets/fonts/MPLUS1p-Regular.ttf
  String get mPLUS1pRegular => 'assets/fonts/MPLUS1p-Regular.ttf';

  /// File path: assets/fonts/MPLUS1p-Thin.ttf
  String get mPLUS1pThin => 'assets/fonts/MPLUS1p-Thin.ttf';

  /// List of all assets
  List<String> get values => [
        mPLUS1pBlack,
        mPLUS1pBold,
        mPLUS1pExtraBold,
        mPLUS1pLight,
        mPLUS1pMedium,
        mPLUS1pRegular,
        mPLUS1pThin
      ];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/Globus.png
  AssetGenImage get globus => const AssetGenImage('assets/icons/Globus.png');

  /// File path: assets/icons/Illustration.png
  AssetGenImage get illustration =>
      const AssetGenImage('assets/icons/Illustration.png');

  /// File path: assets/icons/womenAtComp.png
  AssetGenImage get womenAtComp =>
      const AssetGenImage('assets/icons/womenAtComp.png');

  /// List of all assets
  List<AssetGenImage> get values => [globus, illustration, womenAtComp];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
