function beta_plot(x,y,lambda_max)
%x���Ա�������y�����������,lambda_max��lambda��0��ʼ+1ֱ�������ֵ
for lambda=0:1:lambda_max
beta_hat=(x.'*x+lambda.*eye(size(x.'*x)))\x.'*y;%����ÿ��lambda��������ع�ϵ��
plot(lambda,beta_hat,'.');%�ڵ�ǰlambda����ͼ�����ع�ϵ����ɢ��
hold on
end
xlabel('lambda');
ylabel('betahat');