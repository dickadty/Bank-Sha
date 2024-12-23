import 'package:bank_sha/shared/shared_method.dart';
import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widget/button.dart';
import 'package:bank_sha/ui/widget/data_item_provider.dart';
import 'package:flutter/material.dart';

class DataProvider extends StatelessWidget {
  const DataProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Beli Data", style: blackTextSytle.copyWith(fontSize: 18)),
      ),
      body: ListView(
        padding: EdgeInsets.all(24),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            "From Wallet",
            style: blackTextSytle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/wallet.png",
                width: 80,
                height: 50,
              ),
              const SizedBox(width: 16),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "8008 2208 1996",
                  style:
                      blackTextSytle.copyWith(fontSize: 16, fontWeight: medium),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                "Balance: ${formatCurrency(200000)}",
                  style:
                      greyTextSytle.copyWith(fontSize: 12, fontWeight: reguler),
                )
              ])
            ],
          ),
          const SizedBox(height: 40),
          Text(
            "Select Provider",
            style: blackTextSytle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 14,
          ),
          DataItemProvider(
            urlImg: 'assets/images/telkomsel.png',
            title: "Telkomsel",
            subtitle: "50 mins",
            isSelect: true,
          ),
          SizedBox(
            height: 18,
          ),
          DataItemProvider(
            urlImg: 'assets/images/indosat.png',
            title: "Indosat",
            subtitle: "50 mins",
            isSelect: false,
          ),
          SizedBox(
            height: 18,
          ),
          DataItemProvider(
            urlImg: 'assets/images/singtel.png',
            title: "Singtel",
            subtitle: "50 mins",
            isSelect: false,
          ),
          SizedBox(
            height: 135,
          ),
          CustomFilledButton(title: "Continue", onPressed: () {
            Navigator.pushNamed(context, "/package-provider");
          })
        ],
      ),
    );
  }
}
