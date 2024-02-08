import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/features/presentation/pages/home/home_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColors.scaffoldBGColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.scaffoldBGColor,
        elevation: 0,
        titleSpacing: 0,
        title: Container(
          width: size.width,
          height: kToolbarHeight,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: const BoxDecoration(
            color: AppColors.mainColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: const Row(
                  children: [
                    Text(
                      'Joriy manzil',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Colors.white,
                      size: 25,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.bag,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_active_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: buildBody[selectedPageIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: AppColors.mainColor,
          unselectedItemColor: AppColors.subtitleColor,
          type: BottomNavigationBarType.fixed,
          enableFeedback: false,
          items: const [
            BottomNavigationBarItem(
              label: 'Asosiy',
              icon: Icon(
                Icons.home_filled,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Izlash',
              icon: Icon(
                CupertinoIcons.search,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Buyurtmalar',
              icon: Icon(
                Icons.shopping_basket,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Profil',
              icon: Icon(CupertinoIcons.person_fill),
            ),
          ],
          currentIndex: selectedPageIndex,
          onTap: (index) {
            selectedPageIndex = index;
            setState(() {});
          },
        ),
      ),
    );
  }

  int selectedPageIndex = 0;
  List<Widget> buildBody = <Widget>[
    const HomeScreen(),
    Container(),
    Container(),
    Container(),
  ];
}
