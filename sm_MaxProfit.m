%从txt中读入数据
data=readmatrix('stock_data.csv');

%训练数据：line2~line2001，共2000个
srcline=2;
dstline=2001;
A=data(srcline:dstline,2);%读取第2行到第2001行，第二列的数据，数组名为股票名
AA=data(srcline:dstline,3);
ABC=data(srcline:dstline,4);
ABCB=data(srcline:dstline,5);
ACLS=data(srcline:dstline,6);
ACNB=data(srcline:dstline,7);
ADBE=data(srcline:dstline,8);
ADP=data(srcline:dstline,9);
AEG=data(srcline:dstline,10);
AIR=data(srcline:dstline,11);

%计算每日收益率
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

mean_Arate=mean(A_profitRate);
mean_AArate=mean(AA_profitRate);
mean_ABCrate=mean(ABC_profitRate);
mean_ABCBrate=mean(ABCB_profitRate);
mean_ACLSrate=mean(ACLS_profitRate);
mean_ACNBrate=mean(ACNB_profitRate);
mean_ADBErate=mean(ADBE_profitRate);
mean_ADPrate=mean(ADP_profitRate);
mean_AEGrate=mean(AEG_profitRate);
mean_AIRrate=mean(AIR_profitRate);

disp(A_profitRate);




