import 'package:e_commerce_app/utils/consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class FAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FAppBar({
    super.key,
    required this.title,
    required this.firstIcon,
    this.secondIcon = IonIcons.cart,
    this.backButton = false,
  });
  final String title;
  final IconData firstIcon;
  final IconData secondIcon;
  final bool backButton;

  @override
  // TODO: implement key
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: backButton ? Icon(Iconsax.arrow_left_2_outline) : null,
      title: Text(
        title,
        style: TextStyle(
          fontFamily: "DMSans",
          fontWeight: FontWeight.w700,
          color: FColors.oceanBlue,
        ),
      ),
      actions: [
        Container(
          padding: EdgeInsets.fromLTRB(10, 10, 5, 10),
          child: Icon(firstIcon, color: Colors.black),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(5, 10, 10, 10),
          child: Icon(HeroIcons.shopping_cart, color: Colors.black),
        ),
      ],
      centerTitle: true,
      elevation: 5,
      backgroundColor: Colors.white,
    );
  }
}
