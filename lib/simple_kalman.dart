class SimpleKalman {
  final double errorMeasure;
  final double q;
  double errorEstimate;
  double _lastEstimate = 0.0;

  SimpleKalman(this.errorMeasure, this.errorEstimate, this.q);

  double filtered(double value) {
    double _kalmanGain;
    double _currentEstimate;
    _kalmanGain = errorEstimate / (errorEstimate + errorMeasure);
    _currentEstimate = _lastEstimate + _kalmanGain * (value - _lastEstimate);
    errorEstimate = (1.0 - _kalmanGain) * errorEstimate +
        (_lastEstimate - _currentEstimate).abs() * q;
    _lastEstimate = _currentEstimate;
    return _currentEstimate;
  }
}
