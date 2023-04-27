enum ImageAsset {
  registerRecipe("register_recipe"),
  splash("splash");

  const ImageAsset(this.name);
  final String name;
  final String pathPrifix = 'asset/img/';
  final String pathSuffix = '.png';

  String get path {
    return pathPrifix + name + pathSuffix;
  }
}
