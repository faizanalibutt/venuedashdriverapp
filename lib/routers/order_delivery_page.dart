import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venuedashdriverapp/routers/location_edit_page.dart';
import 'package:venuedashdriverapp/utils/constants.dart';

class OrderDeliveryPage extends StatelessWidget {
  const OrderDeliveryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: size.height * .035,
          ),
          Material(
            color: Colors.white,
            child: Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: size.width,
                  height: size.height * .07,
                  child: Text(
                    "Order Delivery",
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                        color: kBlackHeadingColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: size.width * .03,
                    ),
                    SizedBox(
                      width: size.width * .15,
                      child: InkWell(
                        onTap: () => Get.back(),
                        child: Image.asset(
                          "assets/graphics/ic_back_button.png",
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height * .88,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Ink(
                      height: 70,
                      width: size.width * .9,
                      decoration: const BoxDecoration(
                        color: kLoationFiedlBgColor,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Time Left",
                            style: GoogleFonts.lato(
                                textStyle: const TextStyle(
                              color: kBlackHeadingColor,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            )),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "00:09:44",
                            style: GoogleFonts.lato(
                                textStyle: const TextStyle(
                              color: kBlackHeadingColor,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            )),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Divider(
                        height: 1,
                        color: kBlackColor30,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          "Location:",
                          style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                            color: kBlackHeadingColor,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          )),
                        ),
                        Text(
                          "140 Broadway, New York, NY, US",
                          style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                            color: kBlackHeadingColor,
                            fontSize: 12,
                          )),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Ink(
                      decoration: const BoxDecoration(
                        color: kLoationFiedlBgColor,
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      ),
                      child: InkWell(
                        borderRadius: const BorderRadius.all(Radius.circular(16)),
                        onTap: () {
                          Get.to(() => const LocationEditPage());
                        },
                        child: Row(
                          children: [
                            SizedBox(
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/graphics/google-maps.png",
                                    width: size.width * .15,
                                  ),
                                  Flexible(
                                    child: Text("Get Directions on Google Maps",
                                        style: GoogleFonts.lato(
                                            textStyle: const TextStyle(
                                                color: kBlackHeadingColor,
                                                fontSize: 15,
                                                fontWeight: FontWeight.normal,
                                                overflow: TextOverflow.ellipsis))),
                                  ),
                                ],
                              ),
                              width: size.width * .75,
                            ),
                            SizedBox(
                              child: Image.asset(
                                "assets/graphics/ic_expand_settings_icon.png",
                                width: size.width * .13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: size.width * .9,
                      color: Colors.white,
                      child: Text("Update your status:",
                          style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                            color: kBlackHeadingColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ))),
                    ),
                    const SizedBox(height: 20),
                    Ink(
                      height: 40,
                      decoration: const BoxDecoration(
                        color: kLoationFiedlBgColor,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: size.width * .9,
                      color: Colors.white,
                      child: Text("Payment Method",
                          style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                            color: kBlackHeadingColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ))),
                    ),
                    const SizedBox(height: 10),
                    Ink(
                      width: size.width * .9,
                      decoration: const BoxDecoration(
                        color: kLoationFiedlBgColor,
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      ),
                      child: InkWell(
                        borderRadius: const BorderRadius.all(Radius.circular(16)),
                        child: SizedBox(
                          height: 50,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: SvgPicture.asset("assets/graphics/images/order_payment_method_icon.svg"),
                              ),
                              Text("Cash on Delivery",
                                  style: GoogleFonts.lato(
                                      textStyle: const TextStyle(
                                          color: kBlackHeadingColor, fontSize: 15, fontWeight: FontWeight.normal, overflow: TextOverflow.ellipsis))),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: size.width * .9,
                      color: Colors.white,
                      child: Text("Order Details",
                          style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                            color: kBlackHeadingColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ))),
                    ),
                    const SizedBox(height: 10),
                    Ink(
                      width: size.width * .9,
                      decoration: const BoxDecoration(
                        color: kLoationFiedlBgColor,
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Material(
                                color: kLoationFiedlBgColor,
                                child: MediaQuery.removePadding(
                                    context: context,
                                    removeTop: true,
                                    removeBottom: true,
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      physics: const NeverScrollableScrollPhysics(),
                                      itemBuilder: (context, position) {
                                        return Column(
                                          children: [
                                            Row(
                                              children: [
                                                Flexible(
                                                  child: Row(
                                                    children: [
                                                      Image.asset("assets/graphics/order_detail_item_icon.png"),
                                                      const SizedBox(
                                                        width: 10,
                                                      ),
                                                      Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Text("Eligendi Ad",
                                                              style: GoogleFonts.lato(
                                                                textStyle: const TextStyle(
                                                                  color: kBlackHeadingColor,
                                                                  fontSize: 12,
                                                                  fontWeight: FontWeight.bold,
                                                                ),
                                                              )),
                                                          const SizedBox(
                                                            height: 5,
                                                          ),
                                                          Text("x1",
                                                              textAlign: TextAlign.start,
                                                              style: GoogleFonts.lato(
                                                                textStyle: const TextStyle(
                                                                  color: kBlackHeadingColor,
                                                                  fontSize: 12,
                                                                ),
                                                              ))
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Flexible(
                                                  child: Align(
                                                    alignment: Alignment.centerRight,
                                                    child: Text("\$9.07",
                                                        style: GoogleFonts.lato(
                                                          textStyle: const TextStyle(
                                                            color: kBlackHeadingColor,
                                                            fontSize: 14,
                                                          ),
                                                        )),
                                                  ),
                                                )
                                              ],
                                            ),
                                            const SizedBox(height: 8)
                                          ],
                                        );
                                      },
                                      itemCount: 4,
                                    ))),
                            Column(
                              children: [
                                const Divider(height: 1, color: kBlackColor30),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
                                  child: Row(
                                    children: [
                                      Flexible(
                                        flex: 4,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Total Amount",
                                                style: GoogleFonts.lato(
                                                  textStyle: const TextStyle(color: kBlackHeadingColor, fontSize: 14, fontWeight: FontWeight.bold),
                                                )),
                                            Text("Delivery Charges",
                                                style: GoogleFonts.lato(
                                                  textStyle: const TextStyle(
                                                    color: kBlackHeadingColor,
                                                    fontSize: 14,
                                                  ),
                                                ))
                                          ],
                                        ),
                                      ),
                                      Flexible(
                                        flex: 7,
                                        child: Column(
                                          children: [
                                            Align(
                                              alignment: Alignment.centerRight,
                                              child: Text("\$33.57",
                                                  style: GoogleFonts.lato(
                                                    textStyle: const TextStyle(color: kBlackHeadingColor, fontSize: 14, fontWeight: FontWeight.bold),
                                                  )),
                                            ),
                                            Align(
                                              alignment: Alignment.centerRight,
                                              child: Text("\$5.00",
                                                  style: GoogleFonts.lato(
                                                    textStyle: const TextStyle(
                                                      color: kBlackHeadingColor,
                                                      fontSize: 14,
                                                    ),
                                                  )),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const Divider(
                                  height: 1,
                                  color: kBlackColor30,
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Flexible(
                                  flex: 4,
                                  child: Text("Payable Amount",
                                      style: GoogleFonts.lato(
                                        textStyle: const TextStyle(color: kBlackHeadingColor, fontSize: 14, fontWeight: FontWeight.bold),
                                      )),
                                ),
                                Flexible(
                                  flex: 7,
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text("\$38.57",
                                        style: GoogleFonts.lato(
                                          textStyle: const TextStyle(color: kBlackHeadingColor, fontSize: 14, fontWeight: FontWeight.bold),
                                        )),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
