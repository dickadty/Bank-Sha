import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widget/home_friendly.dart';
import 'package:bank_sha/ui/widget/home_send.dart';
import 'package:bank_sha/ui/widget/home_services.dart';
import 'package:bank_sha/ui/widget/home_latest.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: whiteColor,
        clipBehavior: Clip.antiAlias,
        notchMargin: 6,
        elevation: 0,
        shape: const CircularNotchedRectangle(),
        child: BottomNavigationBar(
          backgroundColor: whiteColor,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: lightBlueColor,
          unselectedItemColor: blackColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle:
              lightBlueTextSytle.copyWith(fontSize: 10, fontWeight: medium),
          unselectedLabelStyle:
              blackTextSytle.copyWith(fontSize: 10, fontWeight: medium),
          items: [
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('assets/images/ic_overview.png'),
                width: 20,
                color: lightBlueColor,
              ),
              label: 'Overview',
            ),
            const BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('assets/images/ic_history.png'),
                width: 20,
              ),
              label: 'History',
            ),
            const BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('assets/images/ic_static.png'),
                width: 20,
              ),
              label: 'Statistic',
            ),
            const BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('assets/images/ic_gift.png'),
                width: 20,
              ),
              label: 'Gift',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: purpleColor,
        shape: CircleBorder(),
        child: Image.asset(
          'assets/images/ic_plus_circle.png',
          width: 24,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          children: [
            buildProfile(context),
            walletCard(),
            level(),
            buildServices(context),
            buildLatestTransaction(),
            buildSendAgain(),
            buildFriendlyTips(),
          ],
        ),
      ),
    );
  }

  Widget buildProfile(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "How Day",
                style: greyTextSytle.copyWith(fontSize: 16),
              ),
              Text(
                "saynahan",
                style: blackTextSytle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              )
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
            child: Container(
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/images/img1.png')),
              ),
              alignment: Alignment.topRight,
              child: Container(
                  height: 16,
                  width: 16,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: whiteColor),
                  child: Center(
                      child: Icon(
                    Icons.check_circle,
                    color: greenColor,
                    size: 14,
                  ))),
            ),
          )
        ],
      ),
    );
  }

  Widget walletCard() {
    return Container(
      margin: EdgeInsets.only(top: 32),
      height: 220,
      width: 327,
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/background_card.png',
              )),
          color: purpleColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Madelina Bond",
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
          const SizedBox(
            height: 28,
          ),
          Text(
            "*** *** *** 1280",
            style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
          ),
          const SizedBox(
            height: 21,
          ),
          Text(
            "Balance",
            style: whiteTextStyle.copyWith(fontSize: 14, fontWeight: medium),
          ),
          Text("\$5,209,400",
              style:
                  whiteTextStyle.copyWith(fontSize: 24, fontWeight: semiBold))
        ],
      ),
    );
  }

  Widget level() {
    return Container(
      margin: EdgeInsets.only(top: 50),
      padding: EdgeInsets.all(20),
      width: 327,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: whiteColor,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Level 1",
                style:
                    blackTextSytle.copyWith(fontSize: 14, fontWeight: semiBold),
              ),
              Spacer(),
              Text(
                "55%",
                style:
                    greenTextStyle.copyWith(fontSize: 14, fontWeight: semiBold),
              ),
              Text(
                " of \$10M",
                style:
                    blackTextSytle.copyWith(fontSize: 14, fontWeight: semiBold),
              )
            ],
          ),
          LinearProgressIndicator(
            borderRadius: BorderRadius.circular(20),
            value: 0.55,
            minHeight: 5,
            backgroundColor: lightBackgroundColor,
            valueColor: AlwaysStoppedAnimation(greenColor),
          )
        ],
      ),
    );
  }

  Widget buildServices(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Do Something",
            style: blackTextSytle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeServices(
                title: "Top Up",
                urlImg: "assets/images/ic_ToupUp.png",
                ontap: () {
                  Navigator.pushNamed(context, '/toupup');
                },
              ),
              HomeServices(
                title: "Send",
                urlImg: "assets/images/ic_Send.png",
                ontap: () {
                  Navigator.pushNamed(context, '/transfer');
                },
              ),
              HomeServices(
                title: "Withdraw",
                urlImg: "assets/images/ic_Withdraw.png",
                ontap: () {},
              ),
              HomeServices(
                title: "More",
                urlImg: "assets/images/ic_More.png",
                ontap: () {
                  showDialog(
                      context: context,
                      builder: (context) => const MoreDialog());
                  {}
                },
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget buildLatestTransaction() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Text("Latest Transaction",
              style:
                  blackTextSytle.copyWith(fontSize: 16, fontWeight: semiBold)),
          const SizedBox(
            height: 14,
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            padding: EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              children: [
                Latest(
                  urlImg: "assets/images/ic_TopUp_latest.png",
                  title: "ToupUp",
                  date: "Yesterday",
                  value: "+ 450.000",
                ),
                const SizedBox(
                  height: 16,
                ),
                Latest(
                  urlImg: "assets/images/ic_Cashback_latest.png",
                  title: "Cashback",
                  date: "Sep 11",
                  value: "+ 22.000",
                ),
                const SizedBox(
                  height: 16,
                ),
                Latest(
                  urlImg: "assets/images/ic_Withdraw_latest.png",
                  title: "Withdraw",
                  date: "Sep 2",
                  value: "- 5.000",
                ),
                const SizedBox(
                  height: 16,
                ),
                Latest(
                  urlImg: "assets/images/ic_Transfer_latest.png",
                  title: "Transfer",
                  date: "Aug 27",
                  value: "- 123.500",
                ),
                const SizedBox(
                  height: 16,
                ),
                Latest(
                  urlImg: "assets/images/ic_Electric_latest.png",
                  title: "Electric",
                  date: "Feb 16",
                  value: "- 12.300.000",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildSendAgain() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 30,
        ),
        Text("Send Again",
            style: blackTextSytle.copyWith(fontSize: 16, fontWeight: semiBold)),
        const SizedBox(
          height: 14,
        ),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeSend(
                urlImg: "assets/images/photo1.png",
                username: "Yunita",
              ),
              HomeSend(
                urlImg: "assets/images/photo2.png",
                username: "Jani",
              ),
              HomeSend(
                urlImg: "assets/images/photo3.png",
                username: "Urip",
              ),
              HomeSend(
                urlImg: "assets/images/photo4.png",
                username: "Masa",
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget buildFriendlyTips() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Frindly Tips",
            style: blackTextSytle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          Wrap(
              alignment: WrapAlignment.spaceAround,
              spacing: 28,
              runSpacing: 18,
              children: [
                HomeFriendly(
                    url: Uri.parse('https://www.google.com'),
                    urlImg: 'assets/images/tips1.png',
                    tips: "Best tips for using a credit card"),
                HomeFriendly(
                    url: Uri.parse('https://www.google.com'),
                    urlImg: 'assets/images/tips2.png',
                    tips: "Spot the good pie of finance model"),
                HomeFriendly(
                    url: Uri.parse('https://www.google.com'),
                    urlImg: 'assets/images/tips3.png',
                    tips: "Great hack to get better advices"),
                HomeFriendly(
                    url: Uri.parse('https://www.google.com'),
                    urlImg: 'assets/images/tips4.png',
                    tips: "Save more penny buy this instead"),
              ]),
        ],
      ),
    );
  }
}

class MoreDialog extends StatelessWidget {
  const MoreDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.zero,
      alignment: Alignment.bottomCenter,
      content: Container(
        height: 326,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: lightBackgroundColor,
        ),
      ),
    );
  }
}
