import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  HotelScreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: AppLayout.getWidth(350),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
          color:  Colors.grey.shade200,
          borderRadius: BorderRadius.circular(AppLayout.getWidth(25)),
          boxShadow: [
            BoxShadow(
              color: Styles.primaryColor.withOpacity(0.2),
              blurRadius: 20,
              spreadRadius: 5,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getWidth(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getWidth(12)),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/${hotel['image']}"),
              ),
            ),
          ),
          const Gap(10),
          Text(
            "${hotel['place']}",
            style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
          ),
            Text(
            "${hotel['destination']}",
            style: Styles.headLineStyle3.copyWith(color: Colors.black.withOpacity(0.5)),
          ),
          Text(
            "\$${hotel['price']}/night",
            style: Styles.headLineStyle2.copyWith(color: Colors.black.withOpacity(0.5)),
          ),
        ],
      ),
    );
  }
}
