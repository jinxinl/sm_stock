run('sm_MaxProfit.m');%运行文件，得到平均收益率
%计算每支股票的标准差，用标准差来估计平均风险率
volatility_ate
volatility_Arate=std(A_profitRate);
volatility_AArate=std(AA_profitRate);
volatility_ABCrate=std(ABC_profitRate);
volatility_ABCBrate=std(ABCB_profitRate);
volatility_ACLSrate=std(ACLS_profitRate);
volatility_ACNBrate=std(ACNB_profitRate);
volatility_ADBErate=std(ADBE_profitRate);
volatility_ADPrate=std(ADP_profitRate);
volatility_AEGrate=std(AEG_profitRate);
volatility_AIRrate=std(AIR_profitRate);

disp(volatility_Arate);