enum Environment {
  development,
  staging,
  production
}

class EnvConfig {
  static Environment currentEnvironment = Environment.development;

  static String get baseUrl {
    switch (currentEnvironment) {
      case Environment.development:
        return 'https://dev-api.parkingdeals.com';
      case Environment.staging:
        return 'https://staging-api.parkingdeals.com';
      case Environment.production:
        return 'https://api.parkingdeals.com';
    }
  }

  // Add other environment-specific configurations as needed
}