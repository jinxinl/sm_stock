clc,clear
run('sm_MaxProfit.m');
%A
x_profit=1:length(AIR_profitRate);
plot(x_profit,AIR_profitRate);
title("AIR股票");
ylabel("日收益率");

legend("日收益率");
set(gca,'XTickLabel',[]);

%风险率
volatilityRate_std=volatility_std();
volatilityRate_drawdown=volatility_max_drawdown();
volatilityRate_VaR=voliatility_VaR();
disp(volatilityRate_std);
x_char={'A','AA','ABC','ABCB','ACLS','ACNB','ADBE','ADP','AEG','AIR'};
x_value=categorical(x_char);

%bar(volatilityRate_std,'k');
%title("标准差法风险率")

bar(volatilityRate_drawdown,'k');
title("最大回撤法风险率")

%bar(volatilityRate_VaR,'k');
%title("风险价值法风险率")

%x_volatility=1:length(volatilityRate_std);
%plot(x_volatility,volatilityRate_std,'b-',x_volatility,volatilityRate_drawdown,'r--',x_volatility,volatilityRate_VaR,'g:');
%title("风险率比较折线图")
%legend('std','drawdown','VaR');



