import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/models/Project.dart';
import 'package:flutter_profile/responsive.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My projects',
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: defaultPadding),
        Responsive(
            mobile: ProjectsGridView(
              aspectRatio: 1.5,
              crossAxisCount: 1,
            ),
            mobileLarge: ProjectsGridView(
              crossAxisCount: 1,
              aspectRatio: 2.5,
            ),
            tablet: ProjectsGridView(
              crossAxisCount: 2,
              aspectRatio: 1.6,
            ),
            desktop: ProjectsGridView())
      ],
    );
  }
}

class ProjectsGridView extends StatelessWidget {
  const ProjectsGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.aspectRatio = 1.3,
  }) : super(key: key);

  final int crossAxisCount;
  final double aspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        itemCount: demo_projects.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: aspectRatio,
          crossAxisSpacing: defaultPadding,
          mainAxisSpacing: defaultPadding,
        ),
        itemBuilder: (context, index) {
          final project = demo_projects[index];
          return ProjectCard(project: project);
        });
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      color: secondaryColor,
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              project.title!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            const SizedBox(height: defaultPadding),
            Flexible(
              child: Text(
                project.description!,
                maxLines: 10,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(height: 1.5),
              ),
            ),
            const SizedBox(height: defaultPadding),
            TextButton(
              style: ButtonStyle(
                  overlayColor: MaterialStateColor.resolveWith(
                      (states) => primaryColor.withOpacity(0.1))),
              onPressed: () {},
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
                child: Text(
                  'Read more  >>',
                  style: TextStyle(color: primaryColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
