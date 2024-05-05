function maxDrawdownRate=volatility_max_drawdown()%返回最大回撤率数组
run('read_data.m')%读入数据
maxDrawdownRate=zeros(1,10);
for i=1:10
    maxDrawdownRate(i)=max_drawdown_rate(stockData(1:end,i));
end




    



