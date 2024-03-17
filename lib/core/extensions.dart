import 'dart:developer';

import 'package:rubix_flutter/data/models/cube_model.dart';

extension ShowCube on CubeModel {
  void printCube() {
    log('front is :');
    log(front.values.toString());
    log('back is :');
    log(back.values.toString());
    log('up is :');
    log(up.values.toString());
    log('down is :');
    log(down.values.toString());
    log('right is :');
    log(right.values.toString());
    log('left is :');
    log(left.values.toString());
  }
}
