import 'package:flutter/material.dart';
import 'fare_details_popup.dart'; 
 // Import the new file

class BusScheduleScreen extends StatelessWidget {
  const BusScheduleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 33, 46, 87),
      body: SafeArea(
        child: Column(
          children: [
            // Main content in a ListView to ensure full visibility
            Expanded(
              child: ListView(
                padding: const EdgeInsets.only(bottom: 16.0),
                children: [
                  // Top logo and title
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Image.asset(
                          'lib/icons/1.png', // Replace with your logo asset
                          height: 50,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Select Your Destination",
                          style: TextStyle(
                            color: Color.fromARGB(255, 250, 250, 250),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Schedule Boxes with tap to open modal
                  GestureDetector(
                    onTap: () => _showFareDetails(context, "PHP 498.00"),
                    child: const ScheduleBox(
                      from: "Dagupan",
                      to: "Cubao",
                      busNo: "1",
                      serviceClass: "Regular Aircon",
                      tripHours: "5 Hours",
                      fare: "PHP 498.00",
                      departure: "5:00 A.M.",
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _showFareDetails(context, "PHP 498.00"),
                    child: const ScheduleBox(
                      from: "Dagupan",
                      to: "Cubao",
                      busNo: "2",
                      serviceClass: "Regular Aircon",
                      tripHours: "5 Hours",
                      fare: "PHP 498.00",
                      departure: "5:00 A.M.",
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _showFareDetails(context, "PHP 498.00"),
                    child: const ScheduleBox(
                      from: "Dagupan",
                      to: "Cubao",
                      busNo: "3",
                      serviceClass: "Regular Aircon",
                      tripHours: "5 Hours",
                      fare: "PHP 498.00",
                      departure: "5:00 A.M.",
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _showFareDetails(context, "PHP 498.00"),
                    child: const ScheduleBox(
                      from: "Dagupan",
                      to: "Cubao",
                      busNo: "4",
                      serviceClass: "Regular Aircon",
                      tripHours: "5 Hours",
                      fare: "PHP 498.00",
                      departure: "5:00 A.M.",
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _showFareDetails(context, "PHP 498.00"),
                    child: const ScheduleBox(
                      from: "Dagupan",
                      to: "Cubao",
                      busNo: "5",
                      serviceClass: "Regular Aircon",
                      tripHours: "5 Hours",
                      fare: "PHP 498.00",
                      departure: "5:00 A.M.",
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _showFareDetails(context, "PHP 498.00"),
                    child: const ScheduleBox(
                      from: "Dagupan",
                      to: "Cubao",
                      busNo: "6",
                      serviceClass: "Regular Aircon",
                      tripHours: "5 Hours",
                      fare: "PHP 498.00",
                      departure: "5:00 A.M.",
                    ),
                  ),
                ],
              ),
            ),

            // Custom Bottom Navigation Bar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.blueAccent, width: 1.5),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Handle home button tap
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 33, 46, 87), // Active tab color
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomLeft: Radius.circular(30),
                            ),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.home,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Handle receipt button tap
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white, // Inactive tab color
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            ),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.receipt,
                              color: Color.fromARGB(255, 33, 46, 87), // Icon color for inactive tab
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showFareDetails(BuildContext context, String baseFare) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
      ),
      builder: (BuildContext context) {
        return FareDetailsPopup(baseFare: baseFare);  // Use the new FareDetailsPopup widget
      },
    );
  }
}

class ScheduleBox extends StatelessWidget {
  final String from;
  final String to;
  final String busNo;
  final String serviceClass;
  final String tripHours;
  final String fare;
  final String departure;

  const ScheduleBox({
    Key? key,
    required this.from,
    required this.to,
    required this.busNo,
    required this.serviceClass,
    required this.tripHours,
    required this.fare,
    required this.departure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        height: 150, // Adjusted height for design fit
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blueAccent, width: 1.5),
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Row: Stations and Line
              SizedBox(
                height: 30,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      from,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.white,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black, width: 1.5),
                            ),
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 1.5,
                          color: Colors.black,
                        ),
                        const CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.black,
                        ),
                      ],
                    ),
                    Text(
                      to,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.black,
                thickness: 3,
                height: 20,
              ),
              const SizedBox(height: 5),

              // Details: Bus No, Service Class, Trip Hours, Fare, Departure
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Bus No.: ',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(
                                text: busNo,
                                style: const TextStyle(
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'Service Class: ',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(
                                text: serviceClass,
                                style: const TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Color.fromARGB(255, 33, 46, 87)),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'Trip Hours: ',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(
                                text: tripHours,
                                style: const TextStyle(
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Fare: ',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(
                                text: fare,
                                style: const TextStyle(
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'Departure: ',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(
                                text: departure,
                                style: const TextStyle(
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
