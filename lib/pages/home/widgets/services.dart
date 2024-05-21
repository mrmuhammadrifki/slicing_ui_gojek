import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gojek_swu/common/styles.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        toolbarHeight: 80.0,
        backgroundColor: AppColors.primaryColor,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: SvgPicture.asset(
              'images/profile.svg',
              semanticsLabel: 'Icon Profile',
            ),
          )
        ],
        title: Container(
          margin: const EdgeInsets.only(
            left: 16.0,
            top: 16.0,
            bottom: 16.0,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(45),
          ),
          child: TextField(
            controller: controller,
            decoration: const InputDecoration(
              hintText: 'Find services, food, or places',
              contentPadding: EdgeInsets.symmetric(horizontal: 20),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Other Services',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Define the action when the button is pressed
                    },
                    child: const Text('Click'),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Loyalty',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16.0),
              ListTile(
                horizontalTitleGap: 12.0,
                contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                leading: SvgPicture.asset('images/goclub.svg',
                    width: 60, semanticsLabel: 'GoClub'),
                title: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('GoClub',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Our new loyalty program',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 14)),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'COVID-19 resources',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16.0),
              ListTile(
                horizontalTitleGap: 12.0,
                contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                minLeadingWidth: 0,
                leading: SvgPicture.asset('images/gomart.svg',
                    width: 60.0, semanticsLabel: 'GoClub'),
                title: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('GoMed',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Medical assistance at your fingertips',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 14)),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Food delivery and shooping',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16.0),
              ListTile(
                horizontalTitleGap: 12.0,
                contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                leading: SvgPicture.asset('images/gofood.svg',
                    width: 60, semanticsLabel: 'GoClub'),
                title: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('GoFood',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('The all-around answer to your appetite',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 14)),
                  ],
                ),
              ),
              const SizedBox(height: 12.0),
              ListTile(
                horizontalTitleGap: 12.0,
                contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                leading: SvgPicture.asset('images/gomart.svg',
                    width: 60, semanticsLabel: 'GoClub'),
                title: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('GoMart',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Shopping for urgent needs? We got ‘em!',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 14)),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
