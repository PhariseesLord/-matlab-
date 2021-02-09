function beta_plot(x,y,lambda_max)
%x是自变量矩阵，y是因变量矩阵,lambda_max对lambda从0开始+1直到的最大值
for lambda=0:1:lambda_max
beta_hat=(x.'*x+lambda.*eye(size(x.'*x)))\x.'*y;%对于每个lambda计算出各回归系数
plot(lambda,beta_hat,'.');%在当前lambda下作图，各回归系数的散点
hold on
end
xlabel('lambda');
ylabel('betahat');