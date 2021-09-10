import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/models/Recommendation.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController _controller = new ScrollController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Recommendations',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        SingleChildScrollView(
          controller: _controller,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
                demo_recommendations.length,
                (index) => Padding(
                      padding: const EdgeInsets.only(right: defaultPadding),
                      child: RecommendationCard(
                        recommendation: demo_recommendations[index],
                      ),
                    )),
          ),
        ),
        SizedBox(
          height: defaultPadding * 2,
        )
      ],
    );
  }
}

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    Key? key,
    required this.recommendation,
  }) : super(key: key);

  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: secondaryColor,
      ),
      width: 400,
      padding: EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            recommendation.name!,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text(
            recommendation.source!,
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Text(
            recommendation.text!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
        ],
      ),
    );
  }
}
