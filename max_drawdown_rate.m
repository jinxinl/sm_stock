function maxDrawdownRate=max_drawdown_rate(stockData)
maxValue = max(stockData);% 获取峰值
maxIndex = find(stockData == maxValue);% 获取峰值的下标
minValue = min(stockData(maxIndex:end));%获取达到峰值后的低谷
minIndex = min(maxIndex - 1 + find(stockData(maxIndex:end) == minValue));%获取低谷下标
maxDrawdownRate=(maxValue-minValue)/maxValue;%计算最大回撤率