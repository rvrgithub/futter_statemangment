// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_gauges/gauges.dart';

// class RadialScreen extends StatelessWidget {
//   const RadialScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Radial Graph...."),
//       ),
//       body: SfRadialGauge(axes: <RadialAxis>[
//         RadialAxis(
//           showLabels: false,
//           // minimum: 5,
//           // maximum: 10,
//           pointers: <GaugePointer>[
//             RangePointer(
//                 value: 50,
//                 //  showLabels: false,
//                 cornerStyle: CornerStyle.bothCurve,
//                 width: 25,
//                 sizeUnit: GaugeSizeUnit.logicalPixel,
//                 gradient: const SweepGradient(
//                     colors: <Color>[Color.fromARGB(255, 49, 61, 235), Color.fromARGB(255, 155, 164, 223)],
//                     stops: <double>[0.25, 0.75])),
//             MarkerPointer(
              
//                 value: 47,
//                 enableDragging: true,
//                 markerHeight: 14,
//                 markerWidth: 14,
//                 markerType: MarkerType.circle,
//                 color: Color.fromARGB(255, 248, 248, 248),
//                 borderWidth: 2,
//                 borderColor: const Color.fromARGB(137, 224, 221, 221)),

                
//           ],
//             annotations: <GaugeAnnotation>[
//               GaugeAnnotation(
//                 positionFactor: 5, // Adjust this value to place the label at a different position
//                 widget: Column(
//                   children: [
//                     Text(
//                       'Good',
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                     ),
//               ),
//             ],
//         ),
//       ]),
//     );
//   }
// }







import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class RadialScreen extends StatelessWidget {
  const RadialScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radial Graph...."),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          SfRadialGauge(
            axes: <RadialAxis>[
              RadialAxis(
                    showLabels: false,

                pointers: <GaugePointer>[
                  RangePointer(
                    value: 50,
                    // showLabels: false,
                    cornerStyle: CornerStyle.bothCurve,
                    width: 25,
                    sizeUnit: GaugeSizeUnit.logicalPixel,
                    gradient: const SweepGradient(
                      colors: <Color>[Color.fromARGB(255, 49, 61, 235), Color.fromARGB(255, 155, 164, 223)],
                      stops: <double>[0.25, 0.75],
                    ),
                  ),
                  MarkerPointer(
                    value: 47,
                    enableDragging: true,
                    markerHeight: 14,
                    markerWidth: 14,
                    markerType: MarkerType.circle,
                    color: Color.fromARGB(255, 248, 248, 248),
                    borderWidth: 2,
                    borderColor: const Color.fromARGB(137, 224, 221, 221),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            child: Text(
              'Good',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


             