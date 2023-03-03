import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Text _getText(String text, double fontsize, FontWeight fweight,
    {Color color = Colors.black}) {
  return Text(
    text,
    style: GoogleFonts.actor(
        textStyle:
            TextStyle(fontSize: fontsize, fontWeight: fweight, color: color)),
  );
}

class DeviceDimensions {
  BuildContext context;

  DeviceDimensions(this.context);

  double get width => MediaQuery.of(context).size.width;
  double get height => MediaQuery.of(context).size.height;
}

class MyHorizontalList extends StatelessWidget {
  String cardMessage;
  String imgPath;
  double height;
  double width;
  MyHorizontalList(
      {super.key,
      required this.cardMessage,
      required this.imgPath,
      required this.height,
      required this.width});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 35,
                child: Image(
                  width: 30,
                  height: 35,
                  image: AssetImage(imgPath),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              _getText(cardMessage, 20, FontWeight.normal),
            ],
          ),
        ),
      ),
    );
  }
}













// import 'package:flutter/material.dart';

// class MyHorizontalList extends StatelessWidget {
//   String imgPath;
//   String cardessage;
//   MyHorizontalList({required this.imgPath, required this.cardessage});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 120,
//       height: 150,
//       padding: const EdgeInsets.all(20),
//       decoration: BoxDecoration(
//           color: Colors.transparent, borderRadius: BorderRadius.circular(20)),
//       child: Column(
//         children: [
//           CircleAvatar(
//             radius: 42,
//             backgroundColor: Colors.black,
//             child: CircleAvatar(
//               backgroundColor: Colors.white,
//               radius: 40,
//               child: Image(
//                 width: 45,
//                 height: 45,
//                 image: AssetImage(imgPath),
//               ),
//             ),
//           ),
//           const Spacer(),
//           Text(cardessage),
//         ],
//       ),
//     );
//   }
// }
