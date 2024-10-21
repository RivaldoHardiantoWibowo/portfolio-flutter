import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/size.dart';
import 'package:portfolio/constants/sns_links.dart';
import 'package:portfolio/widgets/custom_text_field.dart';
import 'dart:js' as js;

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLight1,
      child: Column(
        children: [
          //title
          const Text(
            "Get in Touch",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: CustomColor.whitePrimary),
          ),

          const SizedBox(
            height: 50,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700, maxHeight: 100),
            child: LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth >= kMinDesktopWidth) {
                return buildnameEmailFieldDesktop();
              } else
              return buildnameEmailFieldMobile();
            }),
          ),
          const SizedBox(
            height: 15,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: const CustomTextField(
              hintText: "Your Message",
              maxLines: 10,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      CustomColor.yellowPrimary, // Background kuning
                  foregroundColor: CustomColor.whitePrimary, // Font putih
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // Membuat bundar
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 16), // Agar tombol lebih tinggi
                ),
                child: const Text("Get in touch"),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 300),
            child: const Divider(),
          ),
          const SizedBox(
            height: 15,
          ),

          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    js.context.callMethod('open',[SnsLinks.github]);
                  },
                  child: Image.asset(
                    "github.png",
                    width: 28,
                  )),
              InkWell(
                  onTap: () {
                    js.context.callMethod('open',[SnsLinks.fb]);

                  },
                  child: Image.asset(
                    "fb.png",
                    width: 28,
                  )),
              InkWell(
                  onTap: () {
                    js.context.callMethod('open',[SnsLinks.linkedin]);

                  },
                  child: Image.asset(
                    "linkedin.png",
                    width: 28,
                  )),
              InkWell(
                  onTap: () {
                    js.context.callMethod('open',[SnsLinks.ig]);

                  },
                  child: Image.asset(
                    "ig.png",
                    width: 28,
                  )),
            ],
          )
        ],
      ),
    );
  }

  Row buildnameEmailFieldDesktop() {
    return const Row(
              children: [
                Flexible(
                  child: CustomTextField(
                    hintText: "Your Name",
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Flexible(
                  child: CustomTextField(
                    hintText: "Your Email",
                  ),
                ),
              ],
            );
  }

  Column buildnameEmailFieldMobile() {
    return const Column(
              children: [
                Flexible(
                  child: CustomTextField(
                    hintText: "Your Name",
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Flexible(
                  child: CustomTextField(
                    hintText: "Your Email",
                  ),
                ),
              ],
            );
  }

}
