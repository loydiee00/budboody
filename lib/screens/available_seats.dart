import 'package:flutter/material.dart';

class AvailableSeats extends StatefulWidget {
  const AvailableSeats({Key? key}) : super(key: key);

  @override
  _AvailableSeatsState createState() => _AvailableSeatsState();
}

class _AvailableSeatsState extends State<AvailableSeats> {
  final List<bool> reservedSeats = List<bool>.generate(40, (index) => false); // Placeholder for seat reservation status

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A2D54), // Background color matches the design
      body: Column(
        children: [
          const SizedBox(height: 40), // Top padding
          
          // Top Image Section
          Column(
            children: [
              Image.asset(
                'lib/icons/1.png', // Ensure the image is placed in the correct path
                height: 60, // Adjust height as per the screenshot
              ),
              const SizedBox(height: 10),
              const Text(
                'Available SEATS',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // White color for text
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Row 1: First Row (2 Seats)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      seatBox(0),
                      seatBox(1),
                    ],
                  ),
                  const SizedBox(height: 20), // Vertical spacing between rows

                  // Row 2: Second Row (2 Seats)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      seatBox(2),
                      seatBox(3),
                    ],
                  ),
                  const SizedBox(height: 40), // Larger vertical spacing

                  // Row 3: Third Row (4 Seats)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      seatBox(4),
                      seatBox(5),
                      const SizedBox(width: 30), // Spacing for the aisle
                      seatBox(6),
                      seatBox(7),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Row 4: Fourth Row (4 Seats)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      seatBox(8),
                      seatBox(9),
                      const SizedBox(width: 30),
                      seatBox(10),
                      seatBox(11),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Row 5: Fifth Row (4 Seats)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      seatBox(12),
                      seatBox(13),
                      const SizedBox(width: 30),
                      seatBox(14),
                      seatBox(15),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Row 6: Sixth Row (4 Seats)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      seatBox(16),
                      seatBox(17),
                      const SizedBox(width: 30),
                      seatBox(18),
                      seatBox(19),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Row 7: Seventh Row (4 Seats)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      seatBox(20),
                      seatBox(21),
                      const SizedBox(width: 30),
                      seatBox(22),
                      seatBox(23),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Row 8: Eighth Row (4 Seats)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      seatBox(24),
                      seatBox(25),
                      const SizedBox(width: 30),
                      seatBox(26),
                      seatBox(27),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Row 9: Ninth Row (4 Seats)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      seatBox(28),
                      seatBox(29),
                      const SizedBox(width: 30),
                      seatBox(30),
                      seatBox(31),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Row 10: Last Row (4 Seats)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      seatBox(32),
                      seatBox(33),
                      const SizedBox(width: 30),
                      seatBox(34),
                      seatBox(35),
                    ],
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // Go back to the previous screen
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFAFBFEA), // Light purple-blue
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: const Text(
                    "Back",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Continue with seat selection action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1A2D54), // Dark blue
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: const Text(
                    "Continue",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Seat Box Widget
  Widget seatBox(int index) {
    bool isReserved = reservedSeats[index]; // Status for seat
    return GestureDetector(
      onTap: () {
        setState(() {
          reservedSeats[index] = !reservedSeats[index]; // Toggle seat selection
        });
      },
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: isReserved ? Colors.blueGrey : Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isReserved ? Colors.blueGrey : Colors.white,
            width: 2,
          ),
        ),
      ),
    );
  }
}
