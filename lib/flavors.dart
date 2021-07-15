enum Flavor {
  dev,
  prod,
}

class F {
  static Flavor? appFlavor;

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return 'epYou Dev';
      case Flavor.prod:
      default:
        return 'epYou';
    }
  }

  static bool get isDev => appFlavor == Flavor.dev;
  static bool get isProd => appFlavor == Flavor.prod;

  static String get assetsEnv {
    switch (appFlavor) {
      case Flavor.dev:
        return 'assets/dev.env';
      case Flavor.prod:
      default:
        return 'assets/prod.env';
    }
  }
}
