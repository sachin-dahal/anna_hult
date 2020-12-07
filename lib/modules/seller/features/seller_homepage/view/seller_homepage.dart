import 'package:anna_hult/common/ui/ui_helper.dart';
import 'package:anna_hult/core/logger/logger.dart';
import 'package:anna_hult/modules/seller/data/seller_home_page_controller/carousel.dart';
import 'package:anna_hult/modules/seller/data/seller_home_page_controller/dummy_data.dart';
import 'package:anna_hult/modules/seller/data/seller_home_page_controller/seller_home_page_controller.dart';
import 'package:anna_hult/modules/seller/features/seller_homepage/widget/analytics_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SellerHomePage extends StatelessWidget {
  final SellerHomepageController _sellerHomepageController =
      Get.put(SellerHomepageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: sPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              lHeightSpan,
              _buildSellerProfile(),
              mHeightSpan,
              //Log.debug("Homepage", "line 27 is clear"),
              // GetBuilder<SellerHomepageController>(
              //   builder: (_sellerHomepageController) {
              //     return _sellerHomepageController.analyticsList();
              //   },
              // ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Analytics",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  mHeightSpan,
                  //Log.debug("Controller", "line 46 is clear"),
                  Container(
                    height: 200,
                    child: Expanded(child: GetBuilder<SellerHomepageController>(
                      builder: (_sellerHomepageController) {
                        return _sellerHomepageController.analyticsList();
                      },
                    )),
                  ),
                ],
              ),
              // Expanded(n
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Text(
              //         "Analytics",
              //         style: GoogleFonts.montserrat(
              //           textStyle: TextStyle(
              //             fontSize: 20.0,
              //             fontWeight: FontWeight.w500,
              //           ),
              //         ),
              //       ),
              //       mHeightSpan,
              //       GetBuilder<SellerHomepageController>(
              //         builder: (_sellerHomepageController) {
              //           return _sellerHomepageController.analyticsList();
              //         },
              //       ),
              //       // Row(
              //       //   children: [
              //       //     AnalyticsWidget(
              //       //       color: Color(0xFF090250),
              //       //       icon: FontAwesome.arrow_up,
              //       //       averageNum: 97.7,
              //       //       givenNumber: 20237,
              //       //       title: "Transaction Success",
              //       //     ),
              //       //     sWidthSpan,
              //       //     AnalyticsWidget(
              //       //       color: Color(0xFF033551),
              //       //       icon: FontAwesome.arrow_up,
              //       //       averageNum: 90,
              //       //       givenNumber: 2,
              //       //       title: "Response Rates",
              //       //     ),
              //       //     sWidthSpan,
              //       //     AnalyticsWidget(
              //       //       color: Color(0xFF562FBE),
              //       //       icon: FontAwesome.arrow_up,
              //       //       averageNum: 97.7,
              //       //       givenNumber: 20237,
              //       //       title: "Transaction Success",
              //       //     ),
              //       //   ],
              //       // ),
              //     ],
              //   ),
              // ),
              mHeightSpan,
              CarouselEffect(
                carouselSlider: _sellerHomepageController.carouselController,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSellerProfile() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.green[200],
          width: 5.0,
        ),
        borderRadius: BorderRadius.circular(25.0),
      ),
      padding: lPadding,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Ashmina and Sumnima"),
                  Text("Address of all baklols"),
                  Text("contact of all baklols"),
                ],
              ),
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/demo.png"),
                radius: 40.0,
              ),
            ],
          ),
          mHeightSpan,
          RaisedButton(
            color: Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            onPressed: () {},
            child: Text("Transacation History"),
          ),
        ],
      ),
    );
  }
}
