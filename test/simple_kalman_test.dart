import 'package:test/test.dart';
import 'package:simple_kalman/simple_kalman.dart';

void main() {
  test('Test Kalman filter', () {
    final origin = <int>[0, 1, 3, 5, 7, 2, 11, 13, 15];
    final filtered = <double>[
      0.0,
      0.2,
      0.6897689768976898,
      1.4209764760046477,
      2.4025998748506314,
      2.32603235990328,
      3.7400931370644575,
      5.579413036698286,
      7.803173710006007,
    ];
    final kalman = SimpleKalman(errorMeasure: 15, errorEstimate: 5, q: 0.9);
    for (var i = 0; i < origin.length; i++) {
      expect(kalman.filtered(origin[i].toDouble()), filtered[i]);
    }
  });
}
