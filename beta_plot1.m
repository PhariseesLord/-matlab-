function beta_plot1(x,y,lambda_max)
%x���Ա�������y�����������lambda_max��lambda��0��ʼ+1ֱ�������ֵ
lambda=0:1:lambda_max;%����ȡ����lambda
n=size(lambda,2);%lambdaȡ�ø���
k=size(x,2);%�ع�ϵ������
beta_hat=zeros(k,n);%�ع�ϵ�������ʼ����ÿһ���Ƕ�Ӧĳһ��lambda�ĸ��ع�ϵ��ֵ��ÿһ����ĳһ���ع�ϵ����Ӧ��ͬlambda��ֵ
for j=0:1:lambda_max
beta_hat(:,j+1)=(x.'*x+j.*eye(size(x.'*x)))\x.'*y;%����ÿ��lambda��������ع�ϵ�����������ʼ������
end
for i=1:k
    plot(lambda,beta_hat(i,:),'.');%����ÿһ���ع�ϵ����lambda�ĺ�����ϵ��ͼ
    hold on;
end
xlabel('lambda');
ylabel('betahat');