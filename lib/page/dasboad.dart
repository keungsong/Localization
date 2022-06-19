import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Dasboad extends StatelessWidget {
  List<String> imageList = [
    "https://ied.eu/wp-content/uploads/2018/10/ERP-Business-Intelligence-Wallpaper.png",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3tz_rtwiEf2rlGCbXAKd2eVmGgZz1quwCdZclGsLWhE2oZhDTGwcJc8QxO42tqsXHXRw&usqp=CAU",
    "https://www.mind-your-business.net/media/images/i.a.mind-your-business-01-large.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 8,
        ),
        CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            enableInfiniteScroll: true,
            enlargeCenterPage: true,
            height: 160,
          ),
          items: imageList
              .map((e) => ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.network(e,
                            height: 200, width: 100, fit: BoxFit.cover),
                        //Text(e)
                      ],
                    ),
                  ))
              .toList(),
        )
      ],
    );
  }
}
