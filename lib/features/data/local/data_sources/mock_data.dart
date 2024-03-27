import 'package:upqayt/generated/assets.dart';

import '../models/category_menu.dart';
import '../models/food_category.dart';

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
List<Map<String, String>> categories = [
  {'title': 'Pizza', 'image': Assets.imagesChoparPizza},
  {'title': 'Burger', 'image': Assets.imagesBurger},
  {'title': 'Lavash', 'image': Assets.imagesLavash},
  {'title': 'Sushi', 'image': Assets.imagesSushi},
  {'title': 'Hod dog', 'image': Assets.imagesHodDog},
  {'title': 'KFC', 'image': Assets.imagesKfc},
  {'title': 'Butterbrot', 'image': Assets.imagesButterbrot},
  {'title': 'Free', 'image': Assets.imagesFreeAndSous},
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
List<Map<String, String>> foodCategory = [
  {'title': 'Aksiya', 'icon': Assets.imagesRebateLogo},
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
    'products': [
      'pizza',
      'lavash',
      'burger',
      'hod dog',
    ],
    'min_dist_time': 10,
    'max_dist_time': 15,
    'is_favourite': false,
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
    'products': [
      'butterbrot',
      'lavash',
      'burger',
      'kfc',
    ],
    'min_dist_time': 5,
    'max_dist_time': 10,
    'is_favourite': true,
    'rating': 3.8,
    'rating_count': 168,
    'price': '\$\$',
    'rebate': null,
    'distance': 13,
    'taxi_price': 12000,
  },
  {
    'name': 'Terrassa Cafe & Restaurant',
    'description': 'European, Uzbek...',
    'image': Assets.imagesCaravanKhivaRestaurant,
    'opening_time': 10,
    'closing_time': 16,
    'current_time': DateTime.now(),
    'products': [
      'pizza',
      'sushi',
      'burger',
      'free',
    ],
    'min_dist_time': 5,
    'max_dist_time': 10,
    'is_favourite': true,
    'rating': 4.5,
    'rating_count': 189,
    'price': '\$\$\$',
    'rebate': null,
    'distance': 13,
    'taxi_price': 12000,
  },
  {
    'name': 'Khiva Moon',
    'description': 'European, Uzbek...',
    'image': Assets.imagesKhorazmArtRestaurant2,
    'opening_time': 10,
    'closing_time': 22,
    'current_time': DateTime.now(),
    'products': [
      'pizza',
      'lavash',
      'burger',
      'kfc',
    ],
    'min_dist_time': 5,
    'max_dist_time': 10,
    'is_favourite': true,
    'rating': 4.5,
    'rating_count': 189,
    'price': '\$\$\$',
    'rebate': null,
    'distance': 13,
    'taxi_price': 12000,
  },
];

List<Map<String, String>> streetList = [
  {
    'name': 'Al-Xorazmiy',
    'tuman': 'Xorazm, Urganch',
  },
  {
    'name': 'Islom Karimov',
    'tuman': 'Xorazm, Urganch',
  },
  {
    'name': 'Xonqa',
    'tuman': 'Xorazm, Urganch',
  },
  {
    'name': 'Xiva',
    'tuman': 'Xorazm, Urganch',
  },
  {
    'name': 'Gurlan',
    'tuman': 'Xorazm, Urganch',
  }
];

List<Map<String, dynamic>> filterUseful = [
  {
    'title': 'Aksiya',
    'image': Assets.imagesRebateLogo,
  }
];
final List<CategoryMenu> category = [
  CategoryMenu(
    category: 'rebate',
    items: [
      Category(title: 'Chopar pizza', image: Assets.imagesPizza, price: 30000, rebatePrice: 23000, rebate: 15),
      Category(title: 'Butterbrot', image: Assets.imagesButterbrot, price: 30000, rebatePrice: 20000, rebate: 15),
      Category(title: 'Nostalgiya Burger', image: Assets.imagesNostalgiaBurger, price: 49000, rebatePrice: 36000, rebate: 15),
      Category(title: 'Chopar pizza', image: Assets.imagesBigBurger, price: 40000, rebatePrice: 27000, rebate: 15),
    ],
  ),
  CategoryMenu(
    category: 'pizza',
    items: [
      Category(title: 'Chopar pizza', image: Assets.imagesPizza, price: 30000),
      Category(title: 'Mix Pizza', image: Assets.imagesMixPizza, price: 12000),
      Category(title: 'Nostalgiya Pizza', image: Assets.imagesMixPizza, price: 18000),
      Category(title: 'Pepperoni pizza', image: Assets.imagesBigBurger, price: 25000),
    ],
  ),
  CategoryMenu(
    category: 'burger',
    items: [
      Category(title: 'Chopar pizza', image: Assets.imagesPizza, price: 30000),
      Category(title: 'Butterbrot', image: Assets.imagesButterbrot, price: 30000),
      Category(title: 'Nostalgiya Burger', image: Assets.imagesNostalgiaBurger, price: 49000),
      Category(title: 'Chopar pizza', image: Assets.imagesBigBurger, price: 40000),
    ],
  ),
  CategoryMenu(
    category: 'hoddog',
    items: [
      Category(title: 'Chopar pizza', image: Assets.imagesPizza, price: 30000),
      Category(title: 'Butterbrot', image: Assets.imagesButterbrot, price: 30000),
      Category(title: 'Nostalgiya Burger', image: Assets.imagesNostalgiaBurger, price: 49000),
      Category(title: 'Chopar pizza', image: Assets.imagesBigBurger, price: 40000),
    ],
  ),
  CategoryMenu(
    category: 'free',
    items: [
      Category(title: 'Chopar pizza', image: Assets.imagesPizza, price: 30000),
      Category(title: 'Butterbrot', image: Assets.imagesButterbrot, price: 30000),
      Category(title: 'Nostalgiya Burger', image: Assets.imagesNostalgiaBurger, price: 49000),
      Category(title: 'Chopar pizza', image: Assets.imagesBigBurger, price: 40000),
    ],
  ),
  CategoryMenu(
    category: 'lavash',
    items: [
      Category(title: 'Chopar pizza', image: Assets.imagesPizza, price: 30000),
      Category(title: 'Butterbrot', image: Assets.imagesButterbrot, price: 30000),
      Category(title: 'Nostalgiya Burger', image: Assets.imagesNostalgiaBurger, price: 49000),
      Category(title: 'Chopar pizza', image: Assets.imagesBigBurger, price: 40000),
    ],
  ),
  CategoryMenu(
    category: 'soup',
    items: [
      Category(title: 'Chopar pizza', image: Assets.imagesPizza, price: 30000),
      Category(title: 'Butterbrot', image: Assets.imagesButterbrot, price: 30000),
      Category(title: 'Nostalgiya Burger', image: Assets.imagesNostalgiaBurger, price: 49000),
      Category(title: 'Chopar pizza', image: Assets.imagesBigBurger, price: 40000),
    ],
  ),
  CategoryMenu(
    category: 'chicken',
    items: [
      Category(title: 'Chopar pizza', image: Assets.imagesPizza, price: 30000),
      Category(title: 'Butterbrot', image: Assets.imagesButterbrot, price: 30000),
      Category(title: 'Nostalgiya Burger', image: Assets.imagesNostalgiaBurger, price: 49000),
      Category(title: 'Chopar pizza', image: Assets.imagesBigBurger, price: 40000),
    ],
  ),
  CategoryMenu(
    category: 'chicken',
    items: [
      Category(title: 'Chopar pizza', image: Assets.imagesPizza, price: 30000),
      Category(title: 'Butterbrot', image: Assets.imagesButterbrot, price: 30000),
      Category(title: 'Nostalgiya Burger', image: Assets.imagesNostalgiaBurger, price: 49000),
      Category(title: 'Chopar pizza', image: Assets.imagesBigBurger, price: 40000),
    ],
  ),
  CategoryMenu(
    category: 'chicken',
    items: [
      Category(title: 'Chopar pizza', image: Assets.imagesPizza, price: 30000),
      Category(title: 'Butterbrot', image: Assets.imagesButterbrot, price: 30000),
      Category(title: 'Nostalgiya Burger', image: Assets.imagesNostalgiaBurger, price: 49000),
      Category(title: 'Chopar pizza', image: Assets.imagesBigBurger, price: 40000),
    ],
  ),
];

Map<String, dynamic>? shoppingBagProductList = {
  'restoran_name': 'Gold burger',
  'products': [
    {
      'category': 'burger',
      'name': 'King burger',
      'image': Assets.imagesBigBurger,
      'quantity': 3,
      'price': 13000,
      'total_price': 39000,
    },
    {
      'category': 'pizza',
      'name': 'Pepperoni pizza',
      'image': Assets.imagesPepperoniPizza,
      'quantity': 2,
      'price': 66000,
      'total_price': 132000,
    },
    {
      'category': 'drink',
      'name': 'Coke-cola',
      'image': Assets.imagesCola025,
      'quantity': 4,
      'price': 7000,
      'total_price': 28000,
    },
  ]
};
