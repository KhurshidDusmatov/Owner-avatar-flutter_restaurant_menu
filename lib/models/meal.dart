class Meal {
  int? id;
  String? name;
  String? imageUrl;
  String? time;
  String? cost;
  String? type;
  int? ingCount;
  int? bannerColor;

  Meal(
      {this.id,
      this.name,
      this.imageUrl,
      this.time,
      this.ingCount,
      this.bannerColor,
      this.cost,
      this.type});

  static List<Meal> meals = [
    Meal(
        id: 1,
        type: "Кавказская",
        cost: "905 000 сум",
        name: "Шашлык бараньих ребрышек",
        imageUrl: "assets/images/meal1.png",
        time: "20 мин",
        ingCount: 5,
        bannerColor: 0xffF2DFE1),
    Meal(
        id: 2,
        type: "Кавказская",
        cost: "905 000 сум",
        name: "Шашлык",
        imageUrl: "assets/images/meal2.png",
        time: "20 мин",
        ingCount: 4,
        bannerColor: 0xffDCC7B1),
    Meal(
        id: 3,
        type: "Кавказская",
        cost: "905 000 сум",
        name: "бараньих ребрышек",
        imageUrl: "assets/images/meal3.png",
        time: "18 мин",
        ingCount: 5,
        bannerColor: 0xffFFC5A8),
    Meal(
        id: 4,
        type: "Кавказская",
        cost: "905 000 сум",
        name: "ребрышек",
        imageUrl: "assets/images/meal4.png",
        time: "20 мин",
        ingCount: 4,
        bannerColor: 0xff71C3A1),
    Meal(
        id: 4,
        type: "Кавказская",
        cost: "905 000 сум",
        name: "ребрышек",
        imageUrl: "assets/images/meal5.png",
        time: "20 мин",
        ingCount: 4,
        bannerColor: 0xffA8B6FF),
  ];
}
