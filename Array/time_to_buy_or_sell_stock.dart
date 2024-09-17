int maxProfit(List<int> prices) {
    if (prices.isEmpty) return 0;

    int minPrice = prices[0];
    int maxProfit = 0;

    for (int i = 1; i < prices.length; i++) {
        // Calculate profit if sold at current price
      int profit = prices[i] - minPrice;
        
        // Update maxProfit if the current profit is greater
      if (profit > maxProfit) {
        maxProfit = profit;
    }
        
        // Update minPrice if the current price is lower
      if (prices[i] < minPrice) {
        minPrice = prices[i];
    }
  }

  return maxProfit;
}

void main(){
  List<int> prices1 = [7, 1, 5, 3, 6, 4];
  List<int> prices2 = [7, 6, 4, 3, 1];
  
  print(maxProfit(prices1)); // Output: 5
  print(maxProfit(prices2)); // Output: 0
}