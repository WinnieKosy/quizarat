import 'package:flutter/material.dart';

PreferredSize appBarWidget(
  BuildContext ctx,
) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(225),
    child: Container(
        decoration: const BoxDecoration(
            color: Color(0xff0E3C6E),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
        child: Padding(
          padding: const EdgeInsets.all(23),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 25,
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: Image.asset('assets/images/mic.png',color: const Color(0xffFFFFFF)),),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Find your own way',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                  color: Color(0xffFFFFFF),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Search in 600 colleges around!',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: Color(0xffFFFFFF),
                ),
              ),
              const SizedBox(
                height: 48,
              ),
              Row(children: [
                Container(
                  height: 53,
                  width: 279,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffFFFFFF),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(
                          Icons.search,
                          color: Color(0xffD6D6D6),
                        ),
                        Text('Search for colleges, schools.....',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Color(0xffD6D6D6),
                            ))
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 53,
                  width: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffFFFFFF),
                  ),
                  child: const Icon(
                    Icons.mic,
                    color: Color(0xff0E3C6E),
                  ),
                ),
              ]),
            ],
          ),
        )),
  );
}
