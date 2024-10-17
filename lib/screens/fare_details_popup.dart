import 'package:flutter/material.dart';
import 'available_seats.dart'; // Import the new AvailableSeats screen

class FareDetailsPopup extends StatefulWidget {
  final String baseFare;

  const FareDetailsPopup({Key? key, required this.baseFare}) : super(key: key);

  @override
  _FareDetailsPopupState createState() => _FareDetailsPopupState();
}

class _FareDetailsPopupState extends State<FareDetailsPopup> {
  int seatCount = 1; // Default seat count

  @override
  Widget build(BuildContext context) {
    double totalFare = seatCount * double.parse(widget.baseFare.replaceAll('PHP ', ''));

    return Dialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.0), // Bottom left corner rounded
          bottomRight: Radius.circular(30.0), // Bottom right corner rounded
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Number of Seats:",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black54),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove, color: Colors.black54),
                        onPressed: () {
                          setState(() {
                            if (seatCount > 1) {
                              seatCount--;
                            }
                          });
                        },
                      ),
                      Text(
                        seatCount.toString(),
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1A2D54), // Dark blue
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.add, color: Color(0xFF1A2D54)), // Dark blue
                        onPressed: () {
                          setState(() {
                            seatCount++;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Base Fare:",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
                Text(
                  "PHP ${widget.baseFare}",
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color(0xFF8098D1), // Light blue
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Total Fare:",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                Text(
                  "PHP ${totalFare.toStringAsFixed(2)}",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF8098D1), // Light blue
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // Close the modal
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFAFBFEA), // Light purple-blue
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: const Text("Back", style: TextStyle(color: Colors.black)),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AvailableSeats()), // Navigate to the available seats screen
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1A2D54), // Dark blue
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: const Text("Continue", style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
