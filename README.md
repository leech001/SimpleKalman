# Simple Kalman

A project to implement a one-dimensional Kalman filter in Dart language
![photo](https://raw.githubusercontent.com/leech001/SimpleKalman/main/img/kalman.png)

#### Example usage:

Create Kalman filter
```dart
SimpleKalman kalman = SimpleKalman(256, 150, 0.9);
```
@first parameter - value range;
@second parameter - error range;
@third parameter - filter sensitivity factor (0.001 ... 10)
                    0.001 - low sensitivity (smooth change of values)
                    10 - high sensitivity (sharp change of values)


```dart
import 'package:simple_kalman/simple_kalman.dart';

void main() {
  List<int> _data = [127, 0, 133, 136, 139, 256, 145, 148, 151];
  
  SimpleKalman kalman = SimpleKalman(256, 150, 0.9);
  for (var value in _sinData) {
    print("Origin: $value Filtered: ${kalman.filtered(value.toDouble())}");
  }
```

 
## Changelog  
  
Refer to the [Changelog](https://github.com/leech001/SimpleKalman/blob/main/CHANGELOG.md) to get all release notes.  
  
  
## Features and bugs  
  
Please file feature requests and bugs at the [issue tracker][tracker].
  
[tracker]: https://github.com/leech001/SimpleKalman/issues
  
  
## License  
  
[WTFPL](https://github.com/leech001/SimpleKalman/blob/main/LICENSE)  
