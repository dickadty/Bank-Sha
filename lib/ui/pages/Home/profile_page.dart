import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widget/profile_menu.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: blackTextSytle.copyWith(
            fontSize: 20,
            fontWeight: semiBold,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          // Gunakan scroll jika konten melebihi tinggi layar
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              // Ganti ListView dengan Column
              children: [
                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding: const EdgeInsets.all(30),
                  width: double.infinity, // Ubah agar selebar mungkin
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: whiteColor,
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 22),
                        width: 120,
                        height: 120,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/images/img1.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Container(
                              width: 26,
                              height: 26,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: whiteColor,
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.check_circle,
                                  color: greenColor,
                                  size: 24,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Shayna Hanna",
                        style: blackTextSytle.copyWith(
                            fontSize: 18, fontWeight: medium),
                      ),
                      const SizedBox(height: 40),
                      ProfileMenu(
                        name: "My Profile",
                        iconUrl: "assets/images/ic_myprofile.png",
                        onTap: () async {
                          if  (await Navigator.pushNamed(context, '/pin') == true){
                            Navigator.pushNamed(context, '/edit-profile');
                          }
                        },
                      ),
                      ProfileMenu(
                        name: "My Pin",
                        iconUrl: "assets/images/ic_mypin.png",
                        onTap: () async {
                          if  (await Navigator.pushNamed(context, '/pin') == true){
                            Navigator.pushNamed(context, '/edit-pin');
                          }
                        },
                      ),
                      ProfileMenu(
                        name: "Wallet Settings",
                        iconUrl: "assets/images/ic_wallet.png",
                        onTap: () {},
                      ),
                      ProfileMenu(
                        name: "My Rewards",
                        iconUrl: "assets/images/ic_reward.png",
                        onTap: () {},
                      ),
                      ProfileMenu(
                        name: "Help Center",
                        iconUrl: "assets/images/ic_help.png",
                        onTap: () {},
                      ),
                      ProfileMenu(
                        name: "Log Out",
                        iconUrl: "assets/images/ic_logout.png",
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 87,
                ),
                Text(
                  "Report a Problem",
                  style: greyTextSytle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
