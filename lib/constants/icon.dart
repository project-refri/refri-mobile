enum IconAsset {
  cookerIcon('cooker_icon'),
  eatingPeopleIcon('eating_people_icon'),
  foodIcon('food_icon'),
  gridIcon('grid_icon'),
  homeIcon('home_icon'),
  ingredientIcon('ingredient_icon'),
  likeIcon('like_icon'),
  logoRecipeIcon('logo_recipe_icon'),
  logoWhiteIcon('logo_white_icon'),
  logoIcon('logo_icon'),
  notiIcon('noti_icon'),
  plusIcon('plus_icon'),
  profileIcon('profile_icon'),
  recipeIcon('recipe_icon'),
  refriIcon('refri_icon'),
  tableIcon('table_icon'),
  tileIcon('tile_icon'),
  timeIcon('time_icon'),
  appleIcon('apple_icon'),
  kakaoIcon('kakao_icon'),
  googleIcon('google_icon'),
  veganIcon('vegan_icon'),
  ;

  const IconAsset(this.name);
  final String name;
  final String pathPrifix = 'asset/svg/';
  final String pathSuffix = '.svg';

  String get path {
    return pathPrifix + name + pathSuffix;
  }
}
