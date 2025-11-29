import 'package:assessment_app/providers/airport_provider.dart';
import 'package:assessment_app/screens/details_screen.dart';
import 'package:assessment_app/utils/constants.dart';
import 'package:assessment_app/utils/theme.dart';
import 'package:assessment_app/widgets/airportcard_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class HomeScreenList extends StatefulWidget {
  const HomeScreenList({super.key});

  @override
  State<HomeScreenList> createState() => _HomeScreenListState();
}

class _HomeScreenListState extends State<HomeScreenList> {
  @override
  void initState() {
    super.initState();
    Provider.of<AirportProvider>(
      context,
      listen: false,
    ).getAirportData(context);
  }

  @override
  Widget build(BuildContext context) {
    final postMdl = Provider.of<AirportProvider>(context);
    return Scaffold(
      backgroundColor: white,
      body: Container(
        child: postMdl.loading
            ? Center(child: const CircularProgressIndicator())
            : ListView.builder(
                itemCount: postMdl.airportData.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Gap(gapAirportCard),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                                latitude: postMdl.airportData[index].latitude,
                                longitude:  postMdl.airportData[index].longitude,
                                airportName: postMdl.airportData[index].airportName,
                                countryName: postMdl.airportData[index].countryName,
                                timezone:  postMdl.airportData[index].timezone,
                                gmt:  postMdl.airportData[index].gmt,
                                icaoCode:  postMdl.airportData[index].icaoCode,
                                countryIso:  postMdl.airportData[index].countryIso2,
                                geonameId:  postMdl.airportData[index].geoNameId,
                                cityIataCode:  postMdl.airportData[index].cityIataCode,
                                iataCode:  postMdl.airportData[index].iataCode,
                              ),
                            ),
                          );
                        },
                        child: AirportCardWidget(
                          airportName: postMdl.airportData[index].airportName,
                          countryName: postMdl.airportData[index].countryName,
                          timezone: postMdl.airportData[index].timezone,
                        ),
                      ),
                    ],
                  );
                },
              ),
      ),
    );
  }
}
