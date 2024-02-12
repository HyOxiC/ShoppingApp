

class pricingCalculator {
  

  /// ----- Calculate pricing and shipping charges
  
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;

  }

  /// --  Calculate shipping cost
  

static String calculateShippingCost(double productPrice, String location) {
  double shippingCost = getShippingCost(location);
  return shippingCost.toStringAsFixed(2);
}

// -- Calculate Tax

static String calculateTax(double productPrice, String location) {
  double taxRate = getTaxRateForLocation(location);
  double taxAmount = productPrice * taxRate;
  return taxAmount.toStringAsFixed(2);
}

static double getTaxRateForLocation(String location) {
  // Lookup the shipping cost and all with api

  return 0.10;
}

static double getShippingCost(String location) {
  // Lookup the shipping cost and all with api

  return 5.00;
}

// ---- 

}