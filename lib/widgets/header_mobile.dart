import 'package:flutter/material.dart';
import 'package:portfolio/widgets/site_logo.dart';
import '../style/style.dart';

class HeaderMobile extends StatefulWidget {
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

  @override
  State<HeaderMobile> createState() => _HeaderMobileState();
}

class _HeaderMobileState extends State<HeaderMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
      decoration: kHederDecoration,
      child: Row(
        children: [
          SiteLogo(onTap: widget.onLogoTap),
          const Spacer(),
          IconButton(
            onPressed: widget.onMenuTap,
            icon: const Icon(Icons.menu),
          ),
          const SizedBox(width: 15)
        ],
      ),
    );
  }
}
