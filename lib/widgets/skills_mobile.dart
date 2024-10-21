import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/skill_items.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 500.0,
      ),
      child: Column(
        children: [
          //platforms
          for (int i = 0; i < platfromItems.length; i++)
            Container(
              margin: const EdgeInsets.only(bottom: 5.0),
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: CustomColor.bgLight2,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 20.0,
                ),
                leading: Image.asset(
                  platfromItems[i]["img"],
                  width: 26.0,
                ),
                title: Text(platfromItems[i]["title"]),
              ),
            ),
          const SizedBox(
            height: 50,
          ),
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            alignment: WrapAlignment.center,
            children: [
              for (int i = 0; i < skillsItems.length; i++)
                Chip(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12.0,
                    horizontal: 16.0,
                  ),
                  backgroundColor: CustomColor.bgLight2,
                  shape: StadiumBorder(),
                  label: Text(skillsItems[i]["title"]),
                  avatar: Image.asset(skillsItems[i]["img"]),
                ),
            ],
          )
          //skills
        ],
      ),
    );
  }
}
