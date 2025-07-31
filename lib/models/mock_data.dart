final List<Map<String, dynamic>> mockCategories = [
  {"id": "1", "title": "Kiyimlar"},
  {"id": "2", "title": "Oyoq kiyimlar"},
  {"id": "3", "title": "Aksessuarlar"},
  {"id": "4", "title": "Sport anjomlari"},
  {"id": "5", "title": "Uy-ro‘zg‘or buyumlari"},
];

final List<Map<String, dynamic>> mockProducts = [
  {
    "id": "101",
    "title": "Sport krossovkalar",
    "price": 350000,
    "image": "https://picsum.photos/id/21/400/400",
  },
  {
    "id": "102",
    "title": "Qishki kurtka",
    "price": 480000,
    "image": "https://picsum.photos/id/1005/400/400",
  },
  {
    "id": "103",
    "title": "Charm sumka",
    "price": 290000,
    "image": "https://picsum.photos/id/180/400/400",
  },
  {
    "id": "104",
    "title": "Sport futbolka",
    "price": 120000,
    "image": "https://picsum.photos/id/25/400/400",
  },
  {
    "id": "105",
    "title": "Jeans shim",
    "price": 200000,
    "image": "https://picsum.photos/id/32/400/400",
  },
  {
    "id": "106",
    "title": "Soat",
    "price": 450000,
    "image": "https://picsum.photos/id/55/400/400",
  },
  {
    "id": "107",
    "title": "Velosiped dubulg‘asi",
    "price": 175000,
    "image": "https://picsum.photos/id/99/400/400",
  },
  {
    "id": "108",
    "title": "Tennis raketkasi",
    "price": 260000,
    "image": "https://picsum.photos/id/110/400/400",
  },
  {
    "id": "109",
    "title": "Kofe krujkasi",
    "price": 75000,
    "image": "https://picsum.photos/id/165/400/400",
  },
  {
    "id": "110",
    "title": "Yostiq",
    "price": 95000,
    "image": "https://picsum.photos/id/200/400/400",
  },
];

final List<Map<String, dynamic>> mockDetails = [
  {
    "id": "101",
    "title": "Sport krossovkalar",
    "description": "Yengil va qulay sport krossovkalar. Yugurish va kundalik kiyish uchun mos.",
    "sizes": ["39", "40", "41", "42", "43"],
    "colors": ["FFFFFF", "000000", "808080"],
    "images": [
      "https://picsum.photos/id/21/600/600",
      "https://picsum.photos/id/22/600/600",
      "https://picsum.photos/id/23/600/600"
    ]
  },
  {
    "id": "102",
    "title": "Qishki kurtka",
    "description": "Sovuq kunlarda issiq tutuvchi qalin kurtka. Shamol o‘tkazmaydi.",
    "sizes": ["S", "M", "L", "XL"],
    "colors": ["000000", "1E90FF", "228B22"],
    "images": [
      "https://picsum.photos/id/1005/600/600",
      "https://picsum.photos/id/1011/600/600",
      "https://picsum.photos/id/1018/600/600"
    ]
  },
  {
    "id": "103",
    "title": "Charm sumka",
    "description": "O‘ta mustahkam va zamonaviy charm sumka. Kundalik foydalanish uchun ideal.",
    "sizes": ["Kichik", "O‘rta", "Katta"],
    "colors": ["8B4513", "000000"],
    "images": [
      "https://picsum.photos/id/180/600/600",
      "https://picsum.photos/id/250/600/600",
      "https://picsum.photos/id/290/600/600"
    ]
  },
  {
    "id": "104",
    "title": "Sport futbolka",
    "description": "Paxtadan tayyorlangan sport futbolka. Yengil va havo o‘tkazuvchan.",
    "sizes": ["S", "M", "L"],
    "colors": ["FFFFFF", "FF0000", "0000FF"],
    "images": [
      "https://picsum.photos/id/25/600/600",
      "https://picsum.photos/id/26/600/600",
      "https://picsum.photos/id/27/600/600"
    ]
  },
  {
    "id": "105",
    "title": "Jeans shim",
    "description": "Mustahkam va qulay jinsi shim. Kundalik kiyim uchun mos.",
    "sizes": ["30", "32", "34", "36"],
    "colors": ["0000FF", "2F4F4F"],
    "images": [
      "https://picsum.photos/id/32/600/600",
      "https://picsum.photos/id/35/600/600",
      "https://picsum.photos/id/36/600/600"
    ]
  },
  {
    "id": "106",
    "title": "Soat",
    "description": "Zamonaviy dizaynga ega bilak soati.",
    "sizes": ["Bitta o‘lcham"],
    "colors": ["FFD700", "000000"],
    "images": [
      "https://picsum.photos/id/55/600/600",
      "https://picsum.photos/id/56/600/600",
      "https://picsum.photos/id/57/600/600"
    ]
  },
  {
    "id": "107",
    "title": "Velosiped dubulg‘asi",
    "description": "Sportchilar uchun xavfsizlik dubulg‘asi.",
    "sizes": ["M", "L"],
    "colors": ["DC143C", "000000", "FFFFFF"],
    "images": [
      "https://picsum.photos/id/99/600/600",
      "https://picsum.photos/id/101/600/600",
      "https://picsum.photos/id/102/600/600"
    ]
  },
  {
    "id": "108",
    "title": "Tennis raketkasi",
    "description": "Professional tennis raketkasi. Yengil va mustahkam.",
    "sizes": ["Standart"],
    "colors": ["000000", "FFFFFF"],
    "images": [
      "https://picsum.photos/id/110/600/600",
      "https://picsum.photos/id/111/600/600",
      "https://picsum.photos/id/112/600/600"
    ]
  },
  {
    "id": "109",
    "title": "Kofe krujkasi",
    "description": "Keramika materialidan yasalgan chiroyli krujka.",
    "sizes": ["250ml", "350ml"],
    "colors": ["FFFFFF", "8B0000", "000000"],
    "images": [
      "https://picsum.photos/id/165/600/600",
      "https://picsum.photos/id/166/600/600",
      "https://picsum.photos/id/167/600/600"
    ]
  },
  {
    "id": "110",
    "title": "Yostiq",
    "description": "Paxta tolalaridan tayyorlangan yumshoq yostiq.",
    "sizes": ["50x70", "70x70"],
    "colors": ["FFFFFF", "F5F5DC"],
    "images": [
      "https://picsum.photos/id/200/600/600",
      "https://picsum.photos/id/201/600/600",
      "https://picsum.photos/id/202/600/600"
    ]
  },
];
