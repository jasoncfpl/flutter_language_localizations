import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:path_provider/path_provider.dart';

class DLStorage {
  static Future<String> getLocalPath() async {
    final _path = await getTemporaryDirectory();
    log("_localPath :$_path");
    return _path.path;
  }

  static loadFile() async{
    log("loadFile..");
    String path = await  DLStorage.getLocalPath();
    log("writeFile path :$path");

    File file = File("$path/cn.txt");
    String jsonOrigin = "{\"title\":\"test\"}";
    file.writeAsString(jsonOrigin);

    var contents = await file.readAsString();
    log("contents:$contents");
    log("contents:${contents.runtimeType}");

    return jsonDecode(contents);
  }
}
