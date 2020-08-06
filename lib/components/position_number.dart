import 'package:flutter/material.dart';

class NextNumbers {
  static final NextNumbers _instance = NextNumbers._start();
  NextNumbers._start();
  factory NextNumbers() => _instance;

  double getTrillion({@required String template}) {
    double _trillion = 0;

    return _trillion += double.parse(template[3] +
        template[4] +
        template[5] +
        template[6] +
        template[7] +
        template[8] +
        template[9] +
        template[10] +
        template[11] +
        template[12] +
        template[13] +
        template[14]);
  }

  double getBillion({@required String template}) {
    double _billion = 0;
    return _billion += double.parse(template[6] +
        template[7] +
        template[8] +
        template[9] +
        template[10] +
        template[11] +
        template[12] +
        template[13] +
        template[14]);
  }

  double getMillion({@required String template}) {
    double _million = 0;
    return _million += double.parse(template[9] +
        template[10] +
        template[11] +
        template[12] +
        template[13] +
        template[14]);
  }

  double getThousand({@required String template}) {
    double _thousand = 0;
    return _thousand +=
        double.parse(template[12] + template[13] + template[14]);
  }
}
