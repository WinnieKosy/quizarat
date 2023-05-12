import 'package:flutter/material.dart';
import 'package:fluttertask/presentation/widgets/appbar_widget.dart';
import 'package:fluttertask/presentation/widgets/image_box.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 25, 20, 20),
          child: Column(
            children: [
              ImageBox(
                text1: 'Top Colleges',
                text2:
                    'Search through thousands of\naccredited colleges and universities\nonline to find the right one for you.\nApply in 3 min, and connect with your\nfuture.',
                text3: '+126',
                image: Image.asset('assets/images/Rectangle 141.png'), text4: 'Colleges',
              ),
              const SizedBox(
                height: 15,
              ),
              ImageBox(
                text1: 'Top Schools',
                text2:
                    'Searching for the best school for you\njust got easier! With our Advanced\nSchool Search, you can easily filter out\nthe schools that are fit for you.',
                image: Image.asset('assets/images/Rectangle 142.png'), text3: '+106', text4: 'Schools',
              ),
              const SizedBox(
                height: 15,
              ),
              ImageBox(
                text1: 'Exams',
                text2:
                    'Find an end to end information about\nthe exams that are happening in India',
                image: Image.asset('assets/images/Rectangle 143.png'), text3: '+16', text4: 'Exams',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
