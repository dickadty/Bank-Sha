import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widget/button.dart';
import 'package:bank_sha/ui/widget/package_item.dart';
import 'package:bank_sha/ui/widget/textform.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PackageProvider extends StatelessWidget {
  const PackageProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Paket Data", style: blackTextSytle.copyWith(fontSize: 18)),
      ),
      body: ListView(
        padding: EdgeInsets.all(24),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text("Phone Number",
              style:
                  blackTextSytle.copyWith(fontSize: 18, fontWeight: semiBold)),
          const SizedBox(
            height: 14,
          ),
          Textform(
            filled: true,
            filledcolor: whiteColor,
            title: "+628",
            isShowTitle: false,
          ),
          const SizedBox(
            height: 40,
          ),
          Text("Select Package",
              style:
                  blackTextSytle.copyWith(fontSize: 16, fontWeight: semiBold)),
          const SizedBox(
            height: 14,
          ),
          const Wrap(
            runSpacing: 20,
            spacing: 20,
            children: [
              PackageItemProvider(
                isSelect: true,
                data: "10GB",
                harga: "50.000",
              ),
              PackageItemProvider(
                data: "25GB",
                harga: "70.000",
              ),
              PackageItemProvider(
                data: "40GB",
                harga: "100.000",
              ),
              PackageItemProvider(
                data: "99GB",
                harga: "150.000",
              ),
            ],
          ),
          const SizedBox(
            height: 85,
          ),
          CustomFilledButton(
              title: "CONTINUE",
              onPressed: () async {
                if (await Navigator.pushNamed(context, '/pin') == true) {
                  await launchUrl(Uri.parse('https://demo.midtrans.com'));
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/paket-succes', (Route) => false);
                }
              }),
        ],
      ),
    );
  }
}
