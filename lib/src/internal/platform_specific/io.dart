import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

PictureProvider? assetPictureProvider(String assetName, String? package) =>
    ExactAssetPicture(SvgPicture.svgStringDecoderBuilder, assetName, package: package);

PictureProvider? memoryPictureProvider(Uint8List bytes) =>
    MemoryPicture(SvgPicture.svgByteDecoderBuilder, bytes);

PictureProvider? networkPictureProvider(String url) =>
    NetworkPicture(SvgPicture.svgByteDecoderBuilder, url);

PictureProvider? filePictureProvider(String path) =>
    FilePicture(SvgPicture.svgByteDecoderBuilder, File(path));

Widget? svgPictureString(String bytes) => SvgPicture.string(bytes);
