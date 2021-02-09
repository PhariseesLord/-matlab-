function beta_plot1(x,y,lambda_max)
%x是自变量矩阵，y是因变量矩阵，lambda_max对lambda从0开始+1直到的最大值
lambda=0:1:lambda_max;%所有取到的lambda
n=size(lambda,2);%lambda取用个数
k=size(x,2);%回归系数个数
beta_hat=zeros(k,n);%回归系数矩阵初始化，每一列是对应某一个lambda的各回归系数值，每一行是某一个回归系数对应不同lambda的值
for j=0:1:lambda_max
beta_hat(:,j+1)=(x.'*x+j.*eye(size(x.'*x)))\x.'*y;%对于每个lambda计算出各回归系数，并放入初始化矩阵
end
for i=1:k
    plot(lambda,beta_hat(i,:),'.');%对于每一个回归系数与lambda的函数关系作图
    hold on;
end
xlabel('lambda');
ylabel('betahat');