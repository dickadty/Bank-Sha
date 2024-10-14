import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class ProfileMenu extends StatelessWidget {
  final String iconUrl;
  final String name;
  final VoidCallback? onTap;

  const ProfileMenu({
    required this.iconUrl,
    this.onTap,
    required this.name, 
    super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          margin: const EdgeInsets.only(bottom: 30),
          child: Row(
            children: [
              Image.asset(
                iconUrl,
                height: 24,
                width: 24,
              ),
              const SizedBox(width: 18),
              Expanded(
                child: Text(name,
                    style: blackTextSytle.copyWith(
                      fontWeight: medium,
                    )),
              ),
            ],
          ),
        ),
    );
  }
}
