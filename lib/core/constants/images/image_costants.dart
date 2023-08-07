class ImageConstants {

  ImageConstants._init();
  static ImageConstants? _instance;

  static ImageConstants get instance => _instance ??= ImageConstants._init();

  String get logo => toPng('logo');

  String get projectIcon => toPng('project');

  String toPng(String name) => 'asset/image/$name.png';
}