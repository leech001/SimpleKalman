/// Here is a one-dimensional Kalman filter.
///
/// {@category Filter}
class SimpleKalman {
  /// value range
  final double errorMeasure;

  /// error range
  double errorEstimate;

  /// filter sensitivity factor (0.001 ... 10)
  final double q;

  double _lastEstimate = 0.0;

  /// Create Kalman filter object
  SimpleKalman({
    required this.errorMeasure,
    required this.errorEstimate,
    required this.q,
  });

  /// Function to filter values
  double filtered(double value) {
    double kalmanGain;
    double currentEstimate;
    kalmanGain = errorEstimate / (errorEstimate + errorMeasure);
    currentEstimate = _lastEstimate + kalmanGain * (value - _lastEstimate);
    errorEstimate = (1.0 - kalmanGain) * errorEstimate +
        (_lastEstimate - currentEstimate).abs() * q;
    _lastEstimate = currentEstimate;

    return currentEstimate;
  }
}
