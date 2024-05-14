%function stockData=read_data()
%从txt中读入数据
data=readmatrix('test_2019to2020.csv');

%训练数据：line2~line2001，共2000个
srcline=2;

dstline=127;
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

stockData=[A,AA,ABC,ABCB,ACLS,ACNB,ADBE,ADP,AEG,AIR];