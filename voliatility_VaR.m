function VaRRate=voliatility_VaR(profitRate)
    num_stocks = 10;%股票数量
    
    %计算VaR
    alpha=0.05; % 置信水平为95%
    VaRRate = zeros(num_stocks, 1);
    
    for i = 1:num_stocks
        stock_returns=profitRate(1:end,i);
        VaRRate(i)=quantile(stock_returns, alpha);
    end
    
    % 输出每只股票的 VaR
    disp('每只股票的 VaR:');
    disp(VaRRate);