class Meal {
  int? id;
  String? name;
  String? imageUrl;
  String? time;
  String? cost;
  String? type;
  int? ingCount;
  int? bannerColor;
  String? details;

  Meal(
      {this.id,
      this.name,
      this.imageUrl,
      this.time,
      this.ingCount,
      this.bannerColor,
      this.cost,
      this.details,
      this.type});

  static List<Meal> mealsUZ = [
    Meal(
      id: 1,
      type: "Kavkazcha",
      cost: "105 000 so'm",
      name: "Qo'zi qovurg'asi kabobi",
      imageUrl: "assets/images/meal1.png",
      time: "20 min",
      ingCount: 5,
      bannerColor: 0xffF2DFE1,
      details:
          "O‘zbekistonga tashrif buyurgan va haqiqiy o‘zbek palovini ta’mini tatib ko‘rmagan mehmon "
              "o‘zbek madaniyatining mohiatini va mehmondo‘stligini anglamagan hisoblanadi."
              "Ehtimol u hali bu yerda bo‘lgan emas.O‘zbek palovi- bu sharqona taomlarni xush ko‘ruvchilar "
              "va shirin ovqatlarni qadrlovchilar taomidir. Dunyoda 100 dan ortiq palov tayyorlash retsepti "
              "mavjud bo‘lsada, O‘zbekistonda palov tayyorlash o‘zgachadir. O‘zbekistonning har bir mintaqasi "
              "o‘zining yagona palov tayyorlash retseptiga egadir"
    ),
    Meal(
        id: 2,
        type: "Kavkazcha",
        cost: "105 000 сум",
        name: "Qiymali kabob",
        imageUrl: "assets/images/meal2.png",
        time: "20 min",
        ingCount: 4,
        details:
        "O‘zbekistonga tashrif buyurgan va haqiqiy o‘zbek palovini ta’mini tatib ko‘rmagan mehmon "
            "o‘zbek madaniyatining mohiatini va mehmondo‘stligini anglamagan hisoblanadi."
            "Ehtimol u hali bu yerda bo‘lgan emas.O‘zbek palovi- bu sharqona taomlarni xush ko‘ruvchilar "
            "va shirin ovqatlarni qadrlovchilar taomidir. Dunyoda 100 dan ortiq palov tayyorlash retsepti "
            "mavjud bo‘lsada, O‘zbekistonda palov tayyorlash o‘zgachadir. O‘zbekistonning har bir mintaqasi "
            "o‘zining yagona palov tayyorlash retseptiga egadir",
        bannerColor: 0xffDCC7B1),
    Meal(
        id: 3,
        type: "Kavkazcha",
        cost: "105 000 so'm",
        name: "To'y kakob",
        imageUrl: "assets/images/meal3.png",
        time: "18 min",
        ingCount: 5,
        details:
        "O‘zbekistonga tashrif buyurgan va haqiqiy o‘zbek palovini ta’mini tatib ko‘rmagan mehmon "
            "o‘zbek madaniyatining mohiatini va mehmondo‘stligini anglamagan hisoblanadi."
            "Ehtimol u hali bu yerda bo‘lgan emas.O‘zbek palovi- bu sharqona taomlarni xush ko‘ruvchilar "
            "va shirin ovqatlarni qadrlovchilar taomidir. Dunyoda 100 dan ortiq palov tayyorlash retsepti "
            "mavjud bo‘lsada, O‘zbekistonda palov tayyorlash o‘zgachadir. O‘zbekistonning har bir mintaqasi "
            "o‘zining yagona palov tayyorlash retseptiga egadir",
        bannerColor: 0xffFFC5A8),
    Meal(
        id: 4,
        type: "Uyg'urcha",
        cost: "105 000 so'm",
        name: "Lag'mon",
        imageUrl: "assets/images/meal4.png",
        time: "20 min",
        ingCount: 4,
        details:
        "O‘zbekistonga tashrif buyurgan va haqiqiy o‘zbek palovini ta’mini tatib ko‘rmagan mehmon "
            "o‘zbek madaniyatining mohiatini va mehmondo‘stligini anglamagan hisoblanadi."
            "Ehtimol u hali bu yerda bo‘lgan emas.O‘zbek palovi- bu sharqona taomlarni xush ko‘ruvchilar "
            "va shirin ovqatlarni qadrlovchilar taomidir. Dunyoda 100 dan ortiq palov tayyorlash retsepti "
            "mavjud bo‘lsada, O‘zbekistonda palov tayyorlash o‘zgachadir. O‘zbekistonning har bir mintaqasi "
            "o‘zining yagona palov tayyorlash retseptiga egadir",
        bannerColor: 0xff71C3A1),
    Meal(
        id: 5,
        type: "Samarqandcha",
        cost: "105 000 so'm",
        name: "Palov",
        imageUrl: "assets/images/meal5.png",
        time: "20 min",
        ingCount: 4,
        details:
        "O‘zbekistonga tashrif buyurgan va haqiqiy o‘zbek palovini ta’mini tatib ko‘rmagan mehmon "
            "o‘zbek madaniyatining mohiatini va mehmondo‘stligini anglamagan hisoblanadi."
            "Ehtimol u hali bu yerda bo‘lgan emas.O‘zbek palovi- bu sharqona taomlarni xush ko‘ruvchilar "
            "va shirin ovqatlarni qadrlovchilar taomidir. Dunyoda 100 dan ortiq palov tayyorlash retsepti "
            "mavjud bo‘lsada, O‘zbekistonda palov tayyorlash o‘zgachadir. O‘zbekistonning har bir mintaqasi "
            "o‘zining yagona palov tayyorlash retseptiga egadir",
        bannerColor: 0xffA8B6FF),
  ];
  static List<Meal> mealsRU = [
    Meal(
      id: 1,
      type: "Кавказская",
      cost: "105 000 сум",
      name: "Шашлык бараньих ребрышек",
      imageUrl: "assets/images/meal1.png",
      time: "20 мин",
      ingCount: 5,
      bannerColor: 0xffF2DFE1,
      details:
      "Что бы мне не говорили, а самый вкусный шашлык получается из баранины. "
          "Есть правда один минус. На базаре невозможно купить нормальную баранину, все скупают на корню шашлычники."
          "\n"
          "Не беда, если руки растут из нужного места, шашлык можно приготовить из того что оставили нам эти коршуны. "
          "Будем готовить бараньи ребрышки. "
          "Не те кусочки, где больше всего мяса, а те кусочки, которые остались после налета саранчи",
    ),
    Meal(
        id: 2,
        type: "Кавказская",
        cost: "105 000 сум",
        name: "Шашлык",
        imageUrl: "assets/images/meal2.png",
        time: "20 мин",
        ingCount: 4,
        details:
        "Что бы мне не говорили, а самый вкусный шашлык получается из баранины. "
            "Есть правда один минус. На базаре невозможно купить нормальную баранину, все скупают на корню шашлычники."
            "Не беда, если руки растут из нужного места, шашлык можно приготовить из того что оставили нам эти коршуны. "
            "Будем готовить бараньи ребрышки. "
            "Не те кусочки, где больше всего мяса, а те кусочки, которые остались после налета саранчи",
        bannerColor: 0xffDCC7B1),
    Meal(
        id: 3,
        type: "Кавказская",
        cost: "105 000 сум",
        name: "бараньих ребрышек",
        imageUrl: "assets/images/meal3.png",
        time: "18 мин",
        ingCount: 5,
        details:
        "Что бы мне не говорили, а самый вкусный шашлык получается из баранины. "
            "Есть правда один минус. На базаре невозможно купить нормальную баранину, все скупают на корню шашлычники."
            "Не беда, если руки растут из нужного места, шашлык можно приготовить из того что оставили нам эти коршуны. "
            "Будем готовить бараньи ребрышки. "
            "Не те кусочки, где больше всего мяса, а те кусочки, которые остались после налета саранчи",
        bannerColor: 0xffFFC5A8),
    Meal(
        id: 4,
        type: "Кавказская",
        cost: "105 000 сум",
        name: "ребрышек",
        imageUrl: "assets/images/meal4.png",
        time: "20 мин",
        ingCount: 4,
        details:
        "Что бы мне не говорили, а самый вкусный шашлык получается из баранины. "
            "Есть правда один минус. На базаре невозможно купить нормальную баранину, все скупают на корню шашлычники."
            "Не беда, если руки растут из нужного места, шашлык можно приготовить из того что оставили нам эти коршуны. "
            "Будем готовить бараньи ребрышки. "
            "Не те кусочки, где больше всего мяса, а те кусочки, которые остались после налета саранчи",
        bannerColor: 0xff71C3A1),
    Meal(
        id: 4,
        type: "Кавказская",
        cost: "105 000 сум",
        name: "ребрышек",
        imageUrl: "assets/images/meal5.png",
        time: "20 мин",
        ingCount: 4,
        details:
        "Что бы мне не говорили, а самый вкусный шашлык получается из баранины. "
            "Есть правда один минус. На базаре невозможно купить нормальную баранину, все скупают на корню шашлычники."
            "Не беда, если руки растут из нужного места, шашлык можно приготовить из того что оставили нам эти коршуны. "
            "Будем готовить бараньи ребрышки. "
            "Не те кусочки, где больше всего мяса, а те кусочки, которые остались после налета саранчи",
        bannerColor: 0xffA8B6FF),
  ];
  static List<Meal> mealsEN = [
    Meal(
      id: 1,
      type: "Caucasian",
      cost: "105 000 sum",
      name: "Barbeque",
      imageUrl: "assets/images/meal1.png",
      time: "20 min",
      ingCount: 5,
      bannerColor: 0xffF2DFE1,
      details:
      "A guest who has visited Uzbekistan and has not tasted authentic Uzbek pilaf is considered to "
          "have not understood the essence of Uzbek culture and hospitality. Perhaps he has not been here yet. "
          "Uzbek pilaf is a taste of oriental food. it is a food for those who appreciate visionaries and sweet foods. "
          "Although there are more than 100 recipes for making pilaf in the world, making pilaf in "
          "Uzbekistan is special. Each region of Uzbekistan has its own recipe for making pilaf.",
    ),
    Meal(
        id: 2,
        type: "Caucasian",
        cost: "105 000 sum",
        name: "Kebab",
        imageUrl: "assets/images/meal2.png",
        time: "20 min",
        ingCount: 4,
        details:
        "A guest who has visited Uzbekistan and has not tasted authentic Uzbek pilaf is considered to "
            "have not understood the essence of Uzbek culture and hospitality. Perhaps he has not been here yet. "
            "Uzbek pilaf is a taste of oriental food. it is a food for those who appreciate visionaries and sweet foods. "
            "Although there are more than 100 recipes for making pilaf in the world, making pilaf in "
            "Uzbekistan is special. Each region of Uzbekistan has its own recipe for making pilaf.",
        bannerColor: 0xffDCC7B1),
    Meal(
        id: 3,
        type: "Caucasian",
        cost: "105 000 sum",
        name: "Kebab",
        imageUrl: "assets/images/meal3.png",
        time: "18 min",
        ingCount: 5,
        details:
        "A guest who has visited Uzbekistan and has not tasted authentic Uzbek pilaf is considered to "
          "have not understood the essence of Uzbek culture and hospitality. Perhaps he has not been here yet. "
          "Uzbek pilaf is a taste of oriental food. it is a food for those who appreciate visionaries and sweet foods. "
          "Although there are more than 100 recipes for making pilaf in the world, making pilaf in "
          "Uzbekistan is special. Each region of Uzbekistan has its own recipe for making pilaf.",
        bannerColor: 0xffFFC5A8),
    Meal(
        id: 4,
        type: "Caucasian",
        cost: "105 000 sum",
        name: "Kebab",
        imageUrl: "assets/images/meal4.png",
        time: "20 min",
        ingCount: 4,
        details:
        "A guest who has visited Uzbekistan and has not tasted authentic Uzbek pilaf is considered to "
          "have not understood the essence of Uzbek culture and hospitality. Perhaps he has not been here yet. "
          "Uzbek pilaf is a taste of oriental food. it is a food for those who appreciate visionaries and sweet foods. "
          "Although there are more than 100 recipes for making pilaf in the world, making pilaf in "
          "Uzbekistan is special. Each region of Uzbekistan has its own recipe for making pilaf.",
        bannerColor: 0xff71C3A1),
    Meal(
        id: 4,
        type: "Caucasian",
        cost: "105 000 sum",
        name: "Kebab",
        imageUrl: "assets/images/meal5.png",
        time: "20 min",
        ingCount: 4,
        details:
        "A guest who has visited Uzbekistan and has not tasted authentic Uzbek pilaf is considered to "
          "have not understood the essence of Uzbek culture and hospitality. Perhaps he has not been here yet. "
          "Uzbek pilaf is a taste of oriental food. it is a food for those who appreciate visionaries and sweet foods. "
          "Although there are more than 100 recipes for making pilaf in the world, making pilaf in "
          "Uzbekistan is special. Each region of Uzbekistan has its own recipe for making pilaf.",
        bannerColor: 0xffA8B6FF),
  ];
}
