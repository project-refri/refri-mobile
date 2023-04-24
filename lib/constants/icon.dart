enum IconAsset {
  cookerIcon('cooker_icon'),
  eatingPeopleIcon('eating_people_icon'),
  foodIcon('food_icon'),
  gridIcon('grid_icon'),
  homeIcon('home_icon'),
  ingredientIcon('ingredient_icon'),
  likeIcon('like_icon'),
  logoRecipeIcon('logo_recipe_icon'),
  logoFridgeIcon('logo_fridge_icon'),
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
  arrowBottomIcon('arrow_bottom_icon'),
  arrowTopIcon('arrow_top_icon'),
  eggIcon('egg_icon'),
  avocadoIcon('avocado_icon'),
  baconIcon('bacon_icon'),
  cabbageIcon('cabbage_icon'),
  carrotIcon('carrot_icon'),
  fishIcon('fish_icon'),
  garlicIcon('garlic_icon'),
  noodleIcon('noodle_icon'),
  onionIcon('onion_icon'),
  sauceIcon('sauce_icon'),
  shrimpIcon('shrimp_icon'),
  steakIcon('steak_icon'),
  yogurtIcon('yogurt_icon'),
  ;

  const IconAsset(this.name);
  final String name;
  final String pathPrifix = 'asset/svg/';
  final String pathSuffix = '.svg';

  String get path {
    return pathPrifix + name + pathSuffix;
  }
}
