%this is the code to predict the result
X1=zeros(240,1);
X2=zeros(240,1);
id=zeros(240,1);
theta=[-0.1002;1.0667];%our best theta under best iteration and best alpha
m=1;
for i=0:18:239*18
    X1(m,1)=csvread('test.csv',9+i,9,[9+i,9,9+i,9])';
    X2(m,1)=csvread('test.csv',9+i,10,[9+i,10,9+i,10])';
    m=m+1;
end
X=[X1,X2];
res=X*theta;
for i=1:length(res)
    if(res(i,1)<0)
        res(i,1)=0;%PM2.5 must be non-negative
    end
    id(i,1)=i-1;
end
column={'id','res'};
data=table(id,res,'VariableNames',column);
writetable(data,'res.csv');
clear i m X1 X2 id column data