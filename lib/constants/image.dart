// 이미지 이름 그대로 enum에 작성해주세요;
enum SignboardImage {
  registerRecipe("register_recipe"),
  splash("splash");

  const SignboardImage(this.name);
  final String name;
  final String pathPrifix = 'asset/img/';
  final String pathSuffix = '.png';

  String get path {
    return pathPrifix + name + pathSuffix;
  }
}
