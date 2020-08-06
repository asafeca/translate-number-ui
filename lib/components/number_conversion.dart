import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String numberConverter({@required double value}) {
  if (value <= 0) {
    return '';
  }

  String _AGGREGATER = '';
  if (value > 0 && value < 1) {
    value *= 100;
  }

  ///[OUR TEMPLATE]
  String _TEMPLATE = '';

  ///[ADD 2 DECIMAL PLACES]
  String _FORMATTED_VALUE =
      NumberFormat.currency(locale: 'en_us', decimalDigits: 0, name: '')
          .format(value)
          .replaceFirst(',', '')
          .replaceFirst('.', '')
          .trim();

  int leng = ('000'.length - _FORMATTED_VALUE.length);
  if (leng < 0 || leng == 0) {
    _TEMPLATE = _FORMATTED_VALUE;
  } else {
    for (int k = 0; k <= leng - 1; k++) {
      _TEMPLATE += '0';
    }
    _TEMPLATE += _FORMATTED_VALUE;
  }

  int a = int.parse(_TEMPLATE[0]);
  int b = int.parse(_TEMPLATE[1]);
  int c = int.parse(_TEMPLATE[2]);

  if (a == 1) {
    _AGGREGATER += (b + c == 0) ? 'HUNDRED' : 'ONE HUNDRED';
  } else if (a == 2) {
    _AGGREGATER += 'TWO HUNDRED';
  } else if (a == 3) {
    _AGGREGATER += 'THREE HUNDRED';
  } else if (a == 4) {
    _AGGREGATER += 'FOUR HUNDRED';
  } else if (a == 5) {
    _AGGREGATER += 'FIVE HUNDRED';
  } else if (a == 6) {
    _AGGREGATER += 'SIX HUNDRED';
  } else if (a == 7) {
    _AGGREGATER += 'SEVEN HUNDRED';
  } else if (a == 8) {
    _AGGREGATER += 'EIGHT HUNDRED';
  } else if (a == 9) {
    _AGGREGATER += 'NINE HUNDRED';
  }

  if (b == 1) {
    if (c == 0) {
      _AGGREGATER += ((a > 0) ? ' AND ' : '') + 'TEN';
    }
    if (c == 1) {
      _AGGREGATER += ((a > 0) ? ' AND ' : '') + 'ELEVEN';
    }
    if (c == 2) {
      _AGGREGATER += ((a > 0) ? ' AND ' : '') + 'TWELVE';
    }
    if (c == 3) {
      _AGGREGATER += ((a > 0) ? ' AND ' : '') + 'THIRTEEN';
    }
    if (c == 4) {
      _AGGREGATER += ((a > 0) ? ' AND ' : '') + 'FOURTEEN';
    }
    if (c == 5) {
      _AGGREGATER += ((a > 0) ? ' AND ' : '') + 'FIFTEEN';
    }
    if (c == 6) {
      _AGGREGATER += ((a > 0) ? ' AND ' : '') + 'SIXTEEN';
    }
    if (c == 7) {
      _AGGREGATER += ((a > 0) ? ' AND ' : '') + 'SEVENTEEN';
    }
    if (c == 8) {
      _AGGREGATER += ((a > 0) ? ' AND ' : '') + 'EIGHTEEN';
    }
    if (c == 9) {
      _AGGREGATER += ((a > 0) ? ' AND ' : '') + 'NINETEEN';
    }
  } else if (b == 2) {
    _AGGREGATER += ((a > 0 ? ' AND ' : '') + 'TWENTY');
  } else if (b == 3) {
    _AGGREGATER += ((a > 0 ? ' AND ' : '') + 'THIRTY');
  } else if (b == 3) {
    _AGGREGATER += ((a > 0 ? ' AND ' : '') + 'THIRTY');
  } else if (b == 4) {
    _AGGREGATER += ((a > 0 ? ' AND ' : '') + 'FOURTY');
  } else if (b == 5) {
    _AGGREGATER += ((a > 0 ? ' AND ' : '') + 'FIFTY');
  } else if (b == 6) {
    _AGGREGATER += ((a > 0 ? ' AND ' : '') + 'SIXTY');
  } else if (b == 7) {
    _AGGREGATER += ((a > 0 ? ' AND ' : '') + 'SEVENTY');
  } else if (b == 8) {
    _AGGREGATER += ((a > 0 ? ' AND ' : '') + 'EIGHTY');
  } else if (b == 9) {
    _AGGREGATER += ((a > 0 ? ' AND ' : '') + 'NINETY');
  }

  if (b != 1 && c != 0 && _AGGREGATER != '') {
    _AGGREGATER += '  ';
  }
  if (b != 1) {
    if (c == 1) {
      _AGGREGATER += 'ONE';
    } else if (c == 2) {
      _AGGREGATER += 'TWO';
    } else if (c == 3) {
      _AGGREGATER += 'THREE';
    } else if (c == 4) {
      _AGGREGATER += 'FOUR';
    } else if (c == 5) {
      _AGGREGATER += 'FIVE';
    } else if (c == 6) {
      _AGGREGATER += 'SIX';
    } else if (c == 7) {
      _AGGREGATER += 'SEVEN';
    } else if (c == 8) {
      _AGGREGATER += 'EIGHT';
    } else if (c == 9) {
      _AGGREGATER += 'NIVE';
    }
  }

  return _AGGREGATER;
}
