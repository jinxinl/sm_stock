function VaRRate=voliatility_VaR()
    run('sm_MaxProfit.m');
    num_stocks = 10;%股票数量
    
    %计算VaR
    alpha=0.05; % 置信水平为95%
    VaRRate = zeros(num_stocks, 1);
    
    for i = 1:num_stocks
        stock_returns=profitRate(i,1:end);
        VaRRate(i)=(-1)*quantile(stock_returns, alpha);
    end
   