import 'package:upqayt/features/data/local/models/status.dart';
import 'package:upqayt/generated/assets.dart';

import '../models/category_menu.dart';
import '../models/food_category.dart';

Map<String, dynamic> mockVendorProducts = {
  "success": true,
  "data": {
    "total": 24,
    "page": 1,
    "limit": 10,
    "data": [
      {
        "id": 1,
        "created_at": "2025-01-15T10:00:00Z",
        "updated_at": "2025-01-16T12:00:00Z",
        "name_uz": "Tandir Kabob",
        "name_ru": "Тандыр Кебаб",
        "name_en": "Tandir Kebab",
        "img_url": "https://example.com/images/tandir_kabob.jpg",
        "price": 85000,
        "discount": 15,
        "status": "available",
        "vendor": 3242,
        "category": "Kabob"
      },
      {
        "id": 2,
        "created_at": "2025-01-14T11:30:00Z",
        "updated_at": "2025-01-15T09:45:00Z",
        "name_uz": "Lag'mon",
        "name_ru": "Лагман",
        "name_en": "Lagman",
        "img_url": "https://example.com/images/lagman.jpg",
        "price": 45000,
        "discount": 10,
        "status": "available",
        "vendor": 3243,
        "category": "Milliy taomlar"
      },
      {
        "id": 3,
        "created_at": "2025-01-13T08:15:00Z",
        "updated_at": "2025-01-14T07:45:00Z",
        "name_uz": "Gril tovuq",
        "name_ru": "Гриль Курица",
        "name_en": "Grilled Chicken",
        "img_url": "https://example.com/images/grilled_chicken.jpg",
        "price": 65000,
        "discount": 20,
        "status": "available",
        "vendor": 3245,
        "category": "Gril taomlar"
      }
    ]
  },
  "error": ""
};
Map<String, dynamic> mockVendorData = {
  "success": true,
  "data": {
    "total": 5,
    "page": 1,
    "limit": 10,
    "data": [
      {
        "id": 1,
        "created_at": "2025-01-15T08:00:00Z",
        "updated_at": "2025-01-16T10:00:00Z",
        "name_uz": "Osh Markazi",
        "name_ru": "Центр Плова",
        "name_en": "Plov Center",
        "desc_uz": "Milliy taomlarning eng mazali osh turlari.",
        "desc_ru": "Лучшие виды плова из национальной кухни.",
        "desc_en": "The best varieties of plov from national cuisine.",
        "telegram_id": "@plov_center",
        "background_img": "https://resto.uz/data/resto/43/4206/kamolon-osh-markazi-2827.jpg",
        "phone_number": "+998901234567",
        "address_uz": "Toshkent, Amir Temur ko'chasi, 25",
        "address_ru": "Ташкент, улица Амира Темура, 25",
        "address_en": "Tashkent, Amir Temur Street, 25",
        "location": {"lat": "41.311081", "long": "69.240562"},
        "location_name": "Amir Temur ko'chasi",
        "logo_img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBf6DcZ-uYER3jtPhy4B52VYB3HqKswHNdQA&s",
        "status": "open",
        "opening_time": "08:00",
        "closing_time": "22:00"
      },
      {
        "id": 2,
        "created_at": "2025-01-14T09:30:00Z",
        "updated_at": "2025-01-15T12:00:00Z",
        "name_uz": "Burger Express",
        "name_ru": "Бургер Экспресс",
        "name_en": "Burger Express",
        "desc_uz": "Tez va mazali burgerlar.",
        "desc_ru": "Быстрые и вкусные бургеры.",
        "desc_en": "Quick and delicious burgers.",
        "telegram_id": "@burger_express",
        "background_img": "https://burgerexpress.com/wp-content/uploads/2024/05/FCDA7E5F-3839-42B3-BDE7-0F0A8AAEBC94_1_105_c.jpeg",
        "phone_number": "+998909876543",
        "address_uz": "Toshkent, Shayxontohur tumani, 15",
        "address_ru": "Ташкент, Шайхонтохурский район, 15",
        "address_en": "Tashkent, Shaykhontohur District, 15",
        "location": {"lat": "41.326975", "long": "69.228333"},
        "location_name": "Shayxontohur tumani",
        "logo_img": "https://play-lh.googleusercontent.com/xAFmRRftYxXZSX4vRXIJ1_WD1LoseCSev5dt_RcVPNrhuzbqFJchmVD_ZqnzJtUvo78",
        "status": "closed",
        "opening_time": "10:00",
        "closing_time": "20:00"
      }
    ]
  },
  "error": ""
};
Map<String, dynamic> mockVendorCategories = {
  "success": true,
  "data": {
    "total": 15,
    "page": 1,
    "limit": 10,
    "data": [
      {
        "id": 1,
        "created_at": "2025-01-15T10:00:00Z",
        "updated_at": "2025-01-16T12:00:00Z",
        "name_uz": "Shirinliklar",
        "name_ru": "Сладости",
        "name_en": "Desserts",
        "img_url": "https://example.com/images/desserts.jpg",
        "order": 1
      },
      {
        "id": 2,
        "created_at": "2025-01-14T09:30:00Z",
        "updated_at": "2025-01-15T11:45:00Z",
        "name_uz": "Ichimliklar",
        "name_ru": "Напитки",
        "name_en": "Drinks",
        "img_url": "https://example.com/images/drinks.jpg",
        "order": 2
      }
    ]
  },
  "error": ""
};
List<Map<String, dynamic>> mockOrdersList = [
  {
    "vendor_id": 101,
    "client_address_id": 501,
    "comment": "Iltimos, issiq holatda yetkazib bering.",
    "payment_type": "cash",
    "order_details": [
      {"product_id": 123, "count": 2},
      {"product_id": 124, "count": 1}
    ]
  },
  {
    "vendor_id": 102,
    "client_address_id": 502,
    "comment": "Shaftoli sharbatini qo'shishni unutmang.",
    "payment_type": "card",
    "order_details": [
      {"product_id": 125, "count": 3},
      {"product_id": 126, "count": 2}
    ]
  },
  {
    "vendor_id": 103,
    "client_address_id": 503,
    "comment": "Tezroq yetkazib bering, iltimos.",
    "payment_type": "online",
    "order_details": [
      {"product_id": 127, "count": 1},
      {"product_id": 128, "count": 4}
    ]
  }
];
List<Map<String, dynamic>> mockAddressList = [
  {
    "custom_name": "Bosh ofis",
    "location": {"lat": 41.311081, "long": 69.240562},
    "location_name": "Amir Temur ko'chasi",
    "floor": 3,
    "home": "25A",
    "room": "12",
    "entrance": "1",
    "desc": "Ofisning asosiy kirish qismidan chapga.",
    "is_active": true
  },
  {
    "custom_name": "Uy manzili",
    "location": {"lat": 41.326975, "long": 69.228333},
    "location_name": "Chilonzor 14-kvartal",
    "floor": 2,
    "home": "45B",
    "room": "8",
    "entrance": "2",
    "desc": "Hovli darvozasidan keyin o'ngga.",
    "is_active": true
  },
  {
    "custom_name": "Do'kon",
    "location": {"lat": 41.295569, "long": 69.212979},
    "location_name": "Shayxontohur bozori",
    "floor": 1,
    "home": "10",
    "room": "1",
    "entrance": "A",
    "desc": "Bozor ichida 1-qator, chap tomonda.",
    "is_active": false
  }
];
List<Map<String, dynamic>> mockCouriersList = [
  {
    "courier_id": 1,
    "name": "Ali Karimov",
    "phone_number": "+998901234567",
    "vehicle_type": "bike",
    "vehicle_number": "A123BC",
    "location": {"lat": 41.311081, "long": 69.240562},
    "status": "active",
    "delivery_area": "Amir Temur ko'chasi, Toshkent",
    "rating": 4.8
  },
  {
    "courier_id": 2,
    "name": "Sardor Bekov",
    "phone_number": "+998902345678",
    "vehicle_type": "car",
    "vehicle_number": "B456CD",
    "location": {"lat": 41.326975, "long": 69.228333},
    "status": "inactive",
    "delivery_area": "Chilonzor, Toshkent",
    "rating": 4.5
  },
  {
    "courier_id": 3,
    "name": "Dilorom Mamatova",
    "phone_number": "+998903456789",
    "vehicle_type": "bike",
    "vehicle_number": "C789EF",
    "location": {"lat": 41.295569, "long": 69.212979},
    "status": "active",
    "delivery_area": "Shayxontohur, Toshkent",
    "rating": 4.9
  }
];
Map<String, dynamic> mockProductReviews = {
  "success": true,
  "data": {
    "total_reviews": 2,
    "page": 1,
    "limit": 10,
    "product_reviews": [
      {"review_id": 1, "product_id": 123, "user_id": 1001, "rating": 4.5, "comment": "The fruits were fresh and juicy!", "created_at": "2025-01-20T10:00:00Z", "updated_at": "2025-01-20T11:00:00Z"},
      {
        "review_id": 2,
        "product_id": 124,
        "user_id": 1002,
        "rating": 3.0,
        "comment": "The vegetables were not as fresh as expected.",
        "created_at": "2025-01-21T15:00:00Z",
        "updated_at": "2025-01-21T15:30:00Z"
      }
    ]
  },
  "error": ""
};
Map<String, dynamic> mockVendorReviews = {
  "success": true,
  "data": {
    "total_reviews": 2,
    "page": 1,
    "limit": 10,
    "vendor_reviews": [
      {
        "review_id": 101,
        "vendor_id": 201,
        "user_id": 1003,
        "rating": 5.0,
        "comment": "Fast delivery and excellent customer service!",
        "created_at": "2025-01-22T18:00:00Z",
        "updated_at": "2025-01-22T18:15:00Z"
      },
      {
        "review_id": 102,
        "vendor_id": 202,
        "user_id": 1004,
        "rating": 2.5,
        "comment": "Delivery was delayed and items were not packaged properly.",
        "created_at": "2025-01-23T09:30:00Z",
        "updated_at": "2025-01-23T09:45:00Z"
      }
    ]
  },
  "error": ""
};

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

List<Map<String, dynamic>> notify = [
  {
    'title': 'King burgerdan 25% chegirma',
    'teg': 'chegirma',
    'date': DateTime(2024, 1, 8, 16, 24),
  },
  {
    'title': 'Maxsulotlarni bepul yetkazamiz',
    'teg': 'e\'lon',
    'date': DateTime(2024, 1, 19, 12, 24),
  },
];
List<Map<String, dynamic>> orderList = [
  {
    'id': '123456',
    'restaurant_name': 'Burger King',
    'restaurant_image': Assets.imagesBurgerKingLogo,
    'created': DateTime(2024, 6, 5, 14, 53),
    'status': OrderStatus.delivered,
    'products': [
      Assets.imagesBurger2,
      Assets.imagesBurger3,
      Assets.imagesBurger4,
      Assets.imagesBurger5,
    ],
  },
  {
    'id': '234567',
    'restaurant_name': 'Max Food',
    'restaurant_image': Assets.imagesMaxFoodLogo,
    'created': DateTime(2024, 6, 5, 14, 56),
    'status': OrderStatus.canceled,
    'products': [
      Assets.imagesBurger2,
      Assets.imagesBurger3,
    ],
  },
];
