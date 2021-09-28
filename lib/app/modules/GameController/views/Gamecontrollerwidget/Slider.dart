// ignore_for_file: file_names, camel_case_types
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter/material.dart';
import 'package:food/app/modules/GameController/views/game_controller_view.dart';
import 'package:food/app/modules/Mainhome/controllers/mainhome_controller.dart';

class slider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MainhomeController c = MainhomeController();
    GameControllerView g = GameControllerView(
      id: 0,
      color: Colors.white,
      price: "",
      des: "",
      size: "",
      title: "",
      url: "",
    );

    return ImageSlideshow(
      isLoop: true,

      /// Width of the [ImageSlideshow].
      width: double.infinity,

      /// Height of the [ImageSlideshow].
      height: 300,

      /// The page to show when first creating the [ImageSlideshow].
      initialPage: 0,

      /// The color to paint the indicator.
      indicatorColor: Colors.transparent,

      /// The color to paint behind th indicator.
      indicatorBackgroundColor: Colors.transparent,

      /// The widgets to display in the [ImageSlideshow].
      /// Add the sample image file into the images folder

      children: [
        Image.network(
          c.Bestselling[g.id].url,
          fit: BoxFit.cover,
        ),
        Image.network(
          c.Bestselling[g.id].url,
          fit: BoxFit.cover,
        ),
        Image.network(
          c.Bestselling[g.id].url,
          fit: BoxFit.cover,
        ),
      ],

      /// Called whenever the page in the center of the viewport changes.
      onPageChanged: (value) {},

      /// Auto scroll interval.
      /// Do not auto scroll with null or 0.
      autoPlayInterval: 3000,
    );
  }
}
