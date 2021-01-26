# Simple Kalman

A project to implement a one-dimensional [Kalman filter](https://en.wikipedia.org/wiki/Kalman_filter) in Dart language

![photo](https://raw.githubusercontent.com/leech001/SimpleKalman/main/img/kalman.png)

#### Example usage:

Create Kalman filter

```dart
import 'package:simple_kalman/simple_kalman.dart';

void main() {
  var _data = <int>[127, 0, 133, 136, 139, 256, 145, 148, 151];
  
  var kalman = SimpleKalman(errorMeasure: 256, errorEstimate: 150, q: 0.9);
  for (final value in _data) {
    print('Origin: $value Filtered: ${kalman.filtered(value.toDouble())}');
  }
```


## Changelog  
  
Refer to the [Changelog](https://github.com/leech001/SimpleKalman/blob/main/CHANGELOG.md) to get all release notes.  
  
  
## Features and bugs  
  
Please file feature requests and bugs at the [issue tracker][tracker].
  
[tracker]: https://github.com/leech001/SimpleKalman/issues
  
  
## License  
  
[WTFPL](https://github.com/leech001/SimpleKalman/blob/main/LICENSE)  
