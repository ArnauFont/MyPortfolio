import 'package:flutter/material.dart';
import 'package:flutter_profile/components/hero_dialog_route.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/models/Project.dart';
import 'package:flutter_profile/responsive.dart';

final String _project_tag = 'project-tag';

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
          return ProjectCard(project: project, index: index);
        });
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
    required this.index,
  }) : super(key: key);

  final Project project;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      color: secondaryColor,
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Hero(
          tag: _project_tag + project.title!,
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
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              const SizedBox(height: defaultPadding),
              TextButton(
                style: ButtonStyle(
                    overlayColor: MaterialStateColor.resolveWith(
                        (states) => primaryColor.withOpacity(0.1))),
                onPressed: () {
                  Navigator.of(context)
                      .push(HeroDialogRoute(builder: (context) {
                    return ProjectExpandedCard(project: project, index: index);
                  }));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: defaultPadding / 2),
                  child: Text(
                    'Read more  >>',
                    style: TextStyle(color: primaryColor),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectExpandedCard extends StatelessWidget {
  const ProjectExpandedCard(
      {Key? key, required this.project, required this.index})
      : super(key: key);

  final Project project;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Responsive.isDesktop(context)
          ? EdgeInsets.symmetric(horizontal: 200.0)
          : EdgeInsets.all(50.0),
      child: Center(
        child: Card(
          margin: EdgeInsets.all(0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          color: secondaryColor,
          child: Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Hero(
              tag: _project_tag + project.title!,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      project.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    const SizedBox(height: defaultPadding),
                    Text(
                      project.description!,
                      maxLines: 15,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    const SizedBox(height: defaultPadding),
                    TextButton(
                      style: ButtonStyle(
                          overlayColor: MaterialStateColor.resolveWith(
                              (states) => primaryColor.withOpacity(0.1))),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding / 2),
                        child: Text(
                          'Github repository',
                          style: TextStyle(color: primaryColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
