import 'dart:io';
import 'package:get_it/get_it.dart';
import '../tracking/tracking_manager.dart';
import 'package:path_provider/path_provider.dart';

class FileManager {
  // get local path of application
  Future<String> get localPath async {
    final directory = await getApplicationDocumentsDirectory();
    GetIt.instance<TrackingManager>()
        .printLogToConsole(content: directory.path, key: 'directory path');
    return directory.path;
  }

  // get file in local storage
  Future<File> _getFile({String fileName = ''}) async {
    final path = await localPath;
    return File('$path/$fileName');
  }

  // write content to File
  Future<File> writeContentToFile(
      {String content = '', String fileName = ''}) async {
    final file = await _getFile(fileName: fileName);
    return file.writeAsString(content);
  }

  Future<String> readCotentFile({String fileName = ''}) async {
    try {
      final file = await _getFile(fileName: fileName);
      // Read the file
      var isFileExist = await file.exists();
      var contents = '';
      if (isFileExist) {
        contents = await file.readAsString();
      }
      GetIt.instance<TrackingManager>()
          .printLogToConsole(content: contents, key: 'readCotentFile');
      return contents;
    } catch (e) {
      GetIt.instance<TrackingManager>().printLogToConsole(
          content: e.toString(), key: 'readCotentFile error');
      return 'error';
    }
  }
}
