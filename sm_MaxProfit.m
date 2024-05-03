run('read_data.m')%读入数据
A_profitRate=ProfitRate(A);
AA_profitRate=ProfitRate(AA);
ABC_profitRate=ProfitRate(ABC);
ABCB_profitRate=ProfitRate(ABCB);
ACLS_profitRate=ProfitRate(ACLS);
ACNB_profitRate=ProfitRate(ACNB);
ADBE_profitRate=ProfitRate(ADBE);
ADP_profitRate=ProfitRate(ADP);
AEG_profitRate=ProfitRate(AEG);
AIR_profitRate=ProfitRate(AIR);
profitRate=[A_profitRate,AA_profitRate,ABC_profitRate,ABCB_profitRate,ACLS_profitRate,
    ACNB_profitRate,ADBE_profitRate,ADP_profitRate,AEG_profitRate,AIR_profitRate]
%计算平均收益率
meanRate=zeros(1,10);
for i=1:10
    meanRate(i)=mean(profitRate(1:end,i));
end






