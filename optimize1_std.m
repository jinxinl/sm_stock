run("sm_MaxProfit.m")
c = [0,meanRate.*1000*(-1)]; % 收益率的数组
q = volatility_std().*1000; % 风险率的数组，运用最大回撤法
a = 0:0.001:0.1; % 设置 a 的范围

hold on
for i = 1:length(a)
    A = [zeros(10,1),diag(q)]; % 左边不等式约束
    b = a(i) * ones(10,1); % 右边不等式约束
    Aeq = ones(1,11); % 等式约束
    beq = 1;
    Lb = zeros(11,1);
    [x, Q] = linprog(c, A, b, Aeq, beq, Lb);
    Q = -Q;
    plot(a(i), Q, '*','color', 'blue'); % 指定颜色，改为圆形标记
   
end
xlabel('a'), ylabel('Q');
