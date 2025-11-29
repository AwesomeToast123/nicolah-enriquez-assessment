import 'package:assessment_app/utils/constants.dart';
import 'package:assessment_app/widgets/authentication_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    super.key,
    required this.latitude,
    required this.longitude,
    required this.airportName,
    required this.countryName,
    required this.timezone,
    required this.gmt,
    required this.icaoCode,
    required this.countryIso,
    required this.geonameId,
    required this.cityIataCode,
    required this.iataCode,
  });

  final String latitude;
  final String longitude;
  final String airportName;
  final String countryName;
  final String timezone;
  final String gmt;
  final String icaoCode;
  final String countryIso;
  final String geonameId;
  final String cityIataCode;
  final String iataCode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(paddingDetailsScreen),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(radiusAirportCard),
                  ),
                ),
                width: MediaQuery.sizeOf(context).width,
                child: Image(
                  image: NetworkImage(placeholderImage),
                  width: MediaQuery.sizeOf(context).width,
                ),
              ),
              Gap(gapDetailsScreen),
              Text("$latitudeText: $latitude", style: TextStyle(fontSize: fontSizeDetails )),
              Gap(gapDetailsScreen),
              Text("$longitudeText: $longitude", style: TextStyle(fontSize: fontSizeDetails )),
              Gap(gapDetailsScreen),
              Text("$airportName: $airportName", style: TextStyle(fontSize: fontSizeDetails )),
              Gap(gapDetailsScreen),
              Text("$countryNameText: $countryName", style: TextStyle(fontSize: fontSizeDetails )),
              Gap(gapDetailsScreen),
              Text("$timeZoneText: $timezone", style: TextStyle(fontSize: fontSizeDetails )),
              Gap(gapDetailsScreen),
              Text("$gmtText: $gmt", style: TextStyle(fontSize: fontSizeDetails )),
              Gap(gapDetailsScreen),
              Text("$icacaoCodeText: $icaoCode", style: TextStyle(fontSize: fontSizeDetails )),
              Gap(gapDetailsScreen),
              Text("$countryIsoText: $countryIso", style: TextStyle(fontSize: fontSizeDetails )),
              Gap(gapDetailsScreen),
              Text("$geoNameIdText: $geonameId", style: TextStyle(fontSize: fontSizeDetails )),
              Gap(gapDetailsScreen),
              Text("$cityIataCode: $cityIataCode", style: TextStyle(fontSize: fontSizeDetails )),
              Gap(gapDetailsScreen),
              Text("$iataCodeText: $iataCode", style: TextStyle(fontSize: fontSizeDetails )),
              Gap(gapDetailsScreen),
              AuthenticationButton(
                fontSize: fontSizeButtonLogin,
                buttonText: goBackText,
                callBackFunction: () => Navigator.pop(context),
                isColored: true,
                isTextColored: false,
              )
            ],
          ),
        ),
      ),
    );
  }
}
