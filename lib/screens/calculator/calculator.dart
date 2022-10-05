class Calculator {
  static int _carTax = 0;

  static int car({required int cc, required int year}) {
    double tax1 = 0;

    if (cc <= 6) {
      tax1 = (cc * 100) * 0.5;
    } else if (cc > 6 && cc <= 18) {
      tax1 = 600 * 0.5;
      tax1 = tax1 + (((cc * 100) - 600) * 1.5);
    } else if (cc > 18) {
      tax1 = (6 * 100) * 0.5;
      tax1 = tax1 + ((1800 - 600) * 1.5);
      tax1 = tax1 + (((cc * 100) - 1800) * 4);
    }

    double reduceTax = 0;
    if (year == 6) {
      reduceTax = (tax1 * 0.1);
    } else if (year == 7) {
      reduceTax = (tax1 * 0.2);
    } else if (year == 8) {
      reduceTax = (tax1 * 0.3);
    } else if (year == 9) {
      reduceTax = (tax1 * 0.4);
    } else if (year > 9) {
      reduceTax = (tax1 * 0.5);
    }

    _carTax = (tax1 - reduceTax).toInt();
    return _carTax;
  }

  static int truck({required int kl}) {
    double tax2;
    if (kl >= 501 && kl <= 750) {
      tax2 = 450;
    } else if ((kl >= 751 && kl <= 1000)) {
      tax2 = 600;
    } else if ((kl >= 1001 && kl <= 1250)) {
      tax2 = 750;
    } else if ((kl >= 1251 && kl <= 1500)) {
      tax2 = 900;
    } else if ((kl >= 1501 && kl <= 1750)) {
      tax2 = 1050;
    } else if ((kl >= 1751 && kl <= 2000)) {
      tax2 = 1350;
    } else {
      tax2 = 1650;
    }
    _carTax = tax2.toInt();
    return _carTax;
  }

  static int van({required int kl}) {
    double tax3;
    if (kl <= 1800) {
      tax3 = 1300;
    } else {
      tax3 = 1600;
    }
    _carTax = tax3.toInt();
    return _carTax;
  }
}
