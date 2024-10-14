import 'package:bank_sha/shared/theme.dart'; // Ensure theme.dart has proper definitions for import im
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeFriendly extends StatelessWidget {
  final String urlImg;
  final String tips;
  final Uri url;
  
  const HomeFriendly({
    required this.url,
    required this.urlImg,
    required this.tips,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (await canLaunchUrl(url)) {
          await launchUrl(url);
        } 
      },
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 14),
            width: 175,
            height: 196,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Aligning text properly
              children: [
                Container(
                  width: 175,
                  height: 130,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                    image: DecorationImage(
                      image: AssetImage(urlImg),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
                  child: Text(
                    tips,
                    style: blackTextSytle.copyWith(
                      fontSize: 14,
                      fontWeight: semiBold,
                      overflow: TextOverflow.ellipsis,
                    ),
                    maxLines: 2,
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
