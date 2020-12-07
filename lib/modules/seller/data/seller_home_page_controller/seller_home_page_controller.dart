import 'package:anna_hult/modules/seller/features/seller_homepage/widget/analytics_widget.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'dummy_data.dart';

class SellerHomepageController extends GetxController {
  CarouselController carouselController = CarouselController();

  Widget analyticsList() {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: data.length,
        itemBuilder: (context, index) {
          return AnalyticsWidget(
            color: data[index].color,
            icon: data[index].icon,
            averageNum: data[index].averageNum,
            givenNumber: data[index].givenNumber,
            title: data[index].title,
          );
        },
      ),
    );
  }
}
