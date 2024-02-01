import 'package:upqayt/generated/assets.dart';

List<Map<String, String?>> topProduct = [
  {
    'title': 'Chopar pizza',
    'subtitle': 'Fast Food, European...',
    'image': Assets.imagesPizza,
    'rebate': '-5%',
  },
  {
    'title': 'Lavash',
    'subtitle': 'Fast Food, European...',
    'image': Assets.imagesLavashHome,
    'rebate': null,
  },
  {
    'title': 'Chopar pizza lava..',
    'subtitle': 'Fast Food, European...',
    'image': Assets.imagesChoparPizza,
    'rebate': '-5%',
  },
  {
    'title': 'Lavash',
    'subtitle': 'King Burger',
    'image': Assets.imagesKingBurger,
    'rebate': null,
  },
  {
    'title': 'Butterbrot',
    'subtitle': 'Fast Food, European...',
    'image': Assets.imagesButterbrot,
    'rebate': '-5%',
  },
  {
    'title': 'KFC',
    'subtitle': 'Fast Food, European...',
    'image': Assets.imagesKfc,
    'rebate': null,
  },
  {
    'title': 'King BUrger',
    'subtitle': 'Fast Food, European...',
    'image': Assets.imagesKfc,
    'rebate': null,
  },
  {
    'title': 'Butterbrot',
    'subtitle': 'Fast Food, European...',
    'image': Assets.imagesButterbrot,
    'rebate': '-5%',
  },
];

List<Map<String, String>> filterCategory = [
  {'title': 'Filter', 'icon': Assets.iconsFilterIcon},
  {'title': 'Pizza', 'icon': Assets.iconsSlicePizzaIcon2},
  {'title': 'Burger', 'icon': Assets.iconsBurgerIcon},
  {'title': 'Hod dog', 'icon': Assets.iconsHodDogIcon2},
  {'title': 'Coke Cola', 'icon': Assets.iconsCokeIcon},
  {'title': 'Free', 'icon': Assets.iconsFreeIcon},
  {'title': 'Lavash', 'icon': Assets.iconsLavashIcon},
  {'title': 'Sho\'rva', 'icon': Assets.iconsSoupIcon},
  {'title': 'Tovuq', 'icon': Assets.iconsChickenIcon},
  {'title': 'Tuxum', 'icon': Assets.iconsEggIcon},
];

List<Map<String, dynamic>> restaurants = [
  {
    'name': 'Caravan Khiva Restaurant',
    'description': 'European, Uzbek...',
    'image': Assets.imagesCaravanKhivaRestaurant,
    'opening_time': 9,
    'closing_time': 21,
    'current_time': DateTime.now(),
    'min_dist_time': 10,
    'max_dist_time': 15,
    'isFavourite': false,
    'rating': 4.8,
    'rating_count': 128,
    'price': '\$',
    'rebate': '-5%',
    'distance': 5,
    'taxi_price': 35000,
  },
  {
    'name': 'Khorazm Art Restaurant',
    'description': 'European, Uzbek...',
    'image': Assets.imagesKhorazmArtRestaurant2,
    'opening_time': 10,
    'closing_time': 22,
    'current_time': DateTime.now(),
    'min_dist_time': 5,
    'max_dist_time': 10,
    'isFavourite': true,
    'rating': 3.8,
    'rating_count': 168,
    'price': '\$\$',
    'rebate': null,
    'distance': 13,
    'taxi_price': 12000,
  },
];
