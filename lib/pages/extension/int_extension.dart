import '../others/size_fit.dart';

extension IntFit on int {
  double get px {
    return LEOSizeFit.setPx(this.toDouble());
  }

  double get rpx {
    return LEOSizeFit.setRpx(this.toDouble());
  }
}
