import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek_swu/common/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gojek SWU',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
        const Text('Loyalty',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        ),
        const SizedBox(height: 16.0),
       
         
            ListTile(
              horizontalTitleGap: 0.0,
             contentPadding: const EdgeInsets.symmetric(horizontal:0),
              leading: SvgPicture.asset('images/Group 23.svg',semanticsLabel: 'GoClub' ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('GoClub',style: TextStyle(fontWeight: FontWeight.bold)),
                  const Text('Our new loyalty program',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14)),
                ],
              
              ),
            
            ),
           const SizedBox(height: 16.0),
        const Text('COVID-19 resources',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        ),
        const SizedBox(height: 16.0),
       
         
            ListTile(
             horizontalTitleGap: 0.0,
             contentPadding: const EdgeInsets.symmetric(horizontal:0),
              leading: SvgPicture.asset('images/medic.svg',semanticsLabel: 'GoClub' ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('GoMed',style: TextStyle(fontWeight: FontWeight.bold)),
                  const Text('Medical assistance at your fingertips',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14)),
                ],
              
              ),
            
            ),
            const SizedBox(height: 16.0),
        const Text('Food delivery and shooping',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        ),
        const SizedBox(height: 16.0),
       
         
            ListTile(
              horizontalTitleGap: 0.0,
             contentPadding: const EdgeInsets.symmetric(horizontal:0),
              leading: SvgPicture.asset('images/GoFood icon.svg',semanticsLabel: 'GoClub' ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('GoFood', style: TextStyle(fontWeight: FontWeight.bold)),
                  const Text('The all-around answer to your appetite',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14)),
                ],
              
              ),
            
            ),
            ListTile(
            horizontalTitleGap: 0.0,
             contentPadding: const EdgeInsets.symmetric(horizontal:0),

              leading: SvgPicture.asset('images/gomart.svg',semanticsLabel: 'GoClub' ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('GoMart',style: TextStyle(fontWeight: FontWeight.bold)),
                  const Text('Shopping for urgent needs? We got ‘em!',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14)),
                ],
              
              ),
            
            ),
          
        
       ],
       
            )
        
      ),
    );
  }
}

