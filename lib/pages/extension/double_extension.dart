import '../others/size_fit.dart';

extension DoubleFit on double {
  double get px {
    return LEOSizeFit.setPx(this);
  }

  double get rpx {
    return LEOSizeFit.setRpx(this);
  }
}
