import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/utils/projects_utils.dart';
import 'dart:js' as js;


class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({
    super.key,
    required this.project,
  });
   final ProjectsUtils project;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height:290,
      width: 260,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColor.bgLight2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          //project img
          Image.asset(project.image,
          height: 140,
          width: 260,
          fit: BoxFit.cover,
          ),
    
          //title
          Padding(
            padding: const EdgeInsets.fromLTRB(12,15,12,12),
            child: Text(project.title,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: CustomColor.whitePrimary,
            ),
            ),
          ),
    
          //subtitle
          Padding(
            padding: const EdgeInsets.fromLTRB(12,0,12,12),
            child: Text(project.subtitle,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: CustomColor.whiteSecondary,
              fontSize: 12,
            ),
            ),
          ),
          const Spacer(),
          //footer
          Container(
            color: CustomColor.bgLight1,
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),
            child: Row(
              children: [
                const Text("Available on:",
                style: TextStyle(
                  color: CustomColor.yellowSecondary,
                  fontSize: 10,
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: InkWell(
                      onTap: () {
                        js.context.callMethod("open", [project.webLink]); 
                      },
                      child: Image.asset("web.png",
                      width: 17,),
                    ),
                  ),
              ]
            ),
          )
        ],
      ),
    );
  }
}
