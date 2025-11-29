import 'package:assessment_app/utils/constants.dart';
import 'package:assessment_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AirportCardWidget extends StatelessWidget {
  const AirportCardWidget({
    super.key,
    required this.airportName,
    required this.countryName,
    required this.timezone,
  });

  final String airportName;
  final String countryName;
  final String timezone;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(radiusAirportCard)),
          color: airportBlueLight,
        ),
        height: airportCardHeight,
        width: airportCardWidth,
        child: FittedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsGeometry.all(paddingAirportCard),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(radiusAirportCard),
                        ),
                      ),
                      width: imageAirportSizeWidth,
                      height: imageAirportSizeHeight,
                      child: Image(
                        image: NetworkImage(
                          placeholderImage,
                        ),
                      ),
                    ),
                    Gap(gapAirportCardRowSeparator),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          airportName,
                          style: TextStyle(fontSize: fontSizeAirportName, color: white),
                        ),
                        Text(countryName, style: TextStyle(fontSize: fontSizeAirportName, color: white)),
                        Text(timezone, style: TextStyle(fontSize: fontSizeAirportName, color: white)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
