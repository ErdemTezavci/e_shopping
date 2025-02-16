
class TPricingCalculator {
  /// Calculate total price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  /// Calculate shipping cost
  static String calculateShippingCost(String location) {
    double shippingCost = getShippingCost(location);  
    return shippingCost.toStringAsFixed(2);
  }

  /// Calculate tax
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  /// Get tax rate for a location
  static double getTaxRateForLocation(String location) {
    // Lookup the tax rate for the given location using a tax rate API
    return 0.10; // Example: 5% tax rate
  }

  /// Get shipping cost for a location
  static double getShippingCost(String location) {
    // Calculate the shipping cost based on various factors like distance, weight, etc.
    return 5.00; // Example: Flat rate shipping cost
  }

  /// -- Sum all cart values and return total amount
  // Static double calculateCartTotal(CartModel cart) {
  //   return cart.items.map((e) => e.price).fold(0, (previusPrice, currentPrice) => previousPrice + (currentPrice ?? 0));
  // }
}


  
