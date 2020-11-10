class PopularProductModel {
  String imageUrl;
  int price;
  int oldPrice;
  int discount;
  String name;
  List<String> listImagesUrl;
  String description;
  int battery;
  int input;
  double bluetooth;
  int sound;
  double rating;
  String maxDescription;

  PopularProductModel({
    this.imageUrl,
    this.price,
    this.discount,
    this.oldPrice,
    this.name,
    this.listImagesUrl,
    this.description,
    this.battery,
    this.input,
    this.bluetooth,
    this.sound,
    this.rating,
    this.maxDescription
});
}