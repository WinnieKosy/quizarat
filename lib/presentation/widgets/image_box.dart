import 'package:flutter/material.dart';

class ImageBox extends StatefulWidget {
  String text1;
  String text2;
  String text3;
  String text4;
  Image image;
  ImageBox(
      {Key? key,
      required this.text1,
      required this.text2,
      required this.image,
      required this.text3,
      required this.text4})
      : super(key: key);

  @override
  State<ImageBox> createState() => _ImageBoxState();
}

class _ImageBoxState extends State<ImageBox> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.center,
          height: 158,
          width: 354,
          decoration: const BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              )),
          child: widget.image,
        ),
        Positioned(
          left: 20,
          top: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.text1,
                style: const TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                  color: Color(0xffFFFFFF),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                widget.text2,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                  color: Color(0xffFFFFFF),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 0,
          bottom: 10,
          child: Row(
            children: [
              Text(
                widget.text3,
                style: const TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 11,
                  color: Color(0xff000000),
                ),
              ),
              // const SizedBox(
              //   width: 10,
              // ),
              Text(
                widget.text4,
                style: const TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 10,
                  color: Color(0xff848484),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
