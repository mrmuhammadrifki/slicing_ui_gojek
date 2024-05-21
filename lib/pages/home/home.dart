import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gojek_swu/common/styles.dart';
import 'package:gojek_swu/pages/home/widgets/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _bottomNavIndex = 0;

  final List<BottomNavigationBarItem> _bottomNavBarItems = [
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        'images/home-icon.svg',
        height: 30.0,
      ),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        'images/promos-icon.svg',
        height: 30.0,
      ),
      label: 'Promos',
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        'images/orders-icon.svg',
        height: 30.0,
      ),
      label: 'Orders',
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        'images/chat-icon.svg',
        height: 30.0,
      ),
      label: 'Chat',
    ),
  ];

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
              prefixIcon: Icon(Icons.search),
              hintText: 'Find services, food, or places',
              contentPadding: EdgeInsets.symmetric(vertical: 15),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                color: AppColors.secondaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 24.0,
                      ),
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  alignment: PlaceholderAlignment.middle,
                                  child: SvgPicture.asset(
                                    'images/wallet-icon.svg',
                                    height: 19.0,
                                    semanticsLabel: 'Icon Wallet',
                                  ),
                                ),
                                const WidgetSpan(
                                  child: SizedBox(
                                    width: 4.0,
                                  ),
                                ),
                                const TextSpan(
                                  text: 'gopay',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          const Text(
                            'Rp4.084',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 4.0),
                          const Text(
                            'Tap for history',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                SvgPicture.asset(
                                  'images/pay-icon.svg',
                                  semanticsLabel: 'Icon Pay',
                                ),
                                const SizedBox(height: 4.0),
                                const Text(
                                  'Pay',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                SvgPicture.asset(
                                  'images/top up-icon.svg',
                                  semanticsLabel: 'Icon Top Up',
                                ),
                                const SizedBox(height: 4.0),
                                const Text(
                                  'Top up',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                SvgPicture.asset(
                                  'images/rocket.svg',
                                  semanticsLabel: 'Icon Rocket',
                                ),
                                const SizedBox(height: 4.0),
                                const Text(
                                  'Explore',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 39.0),
              GridView.count(
                shrinkWrap: true,
                childAspectRatio: 0.8,
                crossAxisCount: 4,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  const MenuItem(
                    icon: 'images/goride.svg',
                    semanticsLabel: 'Icon GoRide',
                    title: 'GoRide',
                  ),
                  const MenuItem(
                    icon: 'images/gocar.svg',
                    semanticsLabel: 'Icon GoCar',
                    title: 'GoCar',
                  ),
                  const MenuItem(
                    icon: 'images/gofood.svg',
                    semanticsLabel: 'Icon GoFood',
                    title: 'GoFood',
                  ),
                  const MenuItem(
                    icon: 'images/gosend.svg',
                    semanticsLabel: 'Icon GoSend',
                    title: 'GoSend',
                  ),
                  const MenuItem(
                    icon: 'images/gomart.svg',
                    semanticsLabel: 'Icon GoMart',
                    title: 'GoMart',
                  ),
                  const MenuItem(
                    icon: 'images/gotagihan.svg',
                    semanticsLabel: 'Icon GoTagihan',
                    title: 'GoTagihan',
                  ),
                  const MenuItem(
                    icon: 'images/goclub.svg',
                    semanticsLabel: 'Icon GoClub',
                    title: 'GoClub',
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const Services();
                      }));
                    },
                    child: const MenuItem(
                      icon: 'images/more.svg',
                      semanticsLabel: 'Icon More',
                      title: 'More',
                    ),
                  ),
                ],
              ),
              Image.asset('images/ads.png'),
              const SizedBox(height: 16.0),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Discover all the good eats on GoFood',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Image.asset('images/ads2.png'),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        showSelectedLabels: true,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: Colors.grey,
        currentIndex: _bottomNavIndex,
        items: _bottomNavBarItems,
        onTap: (selected) {
          setState(() {
            _bottomNavIndex = selected;
          });
        },
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String icon;
  final String semanticsLabel;
  final String title;

  const MenuItem({
    required this.icon,
    required this.title,
    required this.semanticsLabel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          height: 60,
          icon,
          semanticsLabel: semanticsLabel,
        ),
        const SizedBox(height: 3.0),
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
