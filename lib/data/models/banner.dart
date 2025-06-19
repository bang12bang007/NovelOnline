class BannerModel {
  final String urlImage;
  final String title;
  final String description;

  BannerModel({
    required this.urlImage,
    required this.title,
    required this.description,
  });
}

List<BannerModel> bannerList = [
  BannerModel(
    urlImage: 'lib/assets/imgs/slider_1.jpeg',
    title: 'Đồng hồ đeo tay',
    description: 'Đồng hồ đeo tay,giá rẻ siêu ưu đãi giảm 15%',
  ),
  BannerModel(
    urlImage: 'lib/assets/imgs/slider_2.jpeg',
    title: 'Điện thoại',
    description: 'Điện thoại,giá rẻ siêu ưu đãi giảm 15%',
  ),
  BannerModel(
    urlImage: 'lib/assets/imgs/slider_3.jpeg',
    title: 'Điện thoại',
    description: 'Điện thoại,giá rẻ siêu ưu đãi giảm 15%',
  ),
  BannerModel(
    urlImage: 'lib/assets/imgs/slider_4.jpeg',
    title: 'Điện thoại',
    description: 'Điện thoại,giá rẻ siêu ưu đãi giảm 15%',
  ),
];
