import 'package:flutter/material.dart';
import 'package:islamy/mythemedata.dart';

class RadioFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        SizedBox(
          height: 150,
        ),
        Image.asset('assets/images/radio_image.png'),
        SizedBox(
          height: 50,
        ),
        Text(
          'أذاعة القرآن الكريم',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          children: [
            Expanded(
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.fast_rewind_sharp,
                      color: MyThemeData.primarycolor,
                      size: 40,
                    ))),
            Expanded(
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.play_arrow,
                      color: MyThemeData.primarycolor,
                      size: 40,
                    ))),
            Expanded(
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.fast_forward_sharp,
                      color: MyThemeData.primarycolor,
                      size: 40,
                    ))),
          ],
        )
      ],
    );
  }
}
