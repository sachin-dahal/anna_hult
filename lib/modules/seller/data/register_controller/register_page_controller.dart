import 'package:anna_hult/common/ui/ui_helper.dart';
import 'package:anna_hult/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPageController extends GetxController {
  bool isBuyer = true;
  bool _agree = false;

  buyer() {
    isBuyer = true;
    update();
  }

  seller() {
    isBuyer = false;
    update();
  }

  Widget checkedBox() {
    return CheckboxListTile(
      value: _agree,
      onChanged: (value) {
        _agree = !_agree;
        update();
      },
      contentPadding: EdgeInsets.all(0),
      title: GestureDetector(
        onTap: () => Get.defaultDialog(
          backgroundColor: kPrimaryColor,
          title: "TERMS AND CONDITIONS",
          titleStyle: GoogleFonts.montserrat(fontSize: 18.0),
          textConfirm: "Agree",
          buttonColor: kButtonColor1,
          onConfirm: () {
            _agree = !_agree;
            Get.back();
            update();
          },
          content: Container(
            padding: sPadding,
            child: Column(
              children: [
                Text(
                  "Following are the terms and conditions of ANNA",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: kPrimaryTextColor,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Following are the terms and conditions of ANNA",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: kPrimaryTextColor,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        child: Text(
          "I agree to the Terms and Conditions.",
          style: TextStyle(
            color: kPrimaryTextColor,
            fontSize: 15.0,
          ),
        ),
      ),
      controlAffinity: ListTileControlAffinity.leading,
      activeColor: kButtonColor1,
    );
  }

  void changed(value) {
    _agree = !_agree;
    update();
  }
}
