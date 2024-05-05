function volatilityRate=volatility_std()
run('sm_MaxProfit.m');%运行文件，得到平均收益率
%计算每支股票的标准差，用标准差来估计平均风险率
volatilityRate=zeros(1,10);
for i=1:10
    volatilityRate(i)=mean(profitRate(i,1:end));
end
