%X1,X2,Y =>last hour,now,next hour
X1=zeros(5280,1);%5280=240X22
X2=zeros(5280,1);
Y=zeros(5280,1);
m=1;
size_one_row=length(csvread('train.csv',10,3,[10,3,10,24]));
for i=0:18:239*18 
    X1(m:m+size_one_row-1,1)=csvread('train.csv',10+i,3,[10+i,3,10+i,24])';
    X2(m:m+size_one_row-1,1)=csvread('train.csv',10+i,4,[10+i,4,10+i,25])';
    Y(m:m+size_one_row-1,1)=csvread('train.csv',10+i,5,[10+i,5,10+i,26])';
    m=m+size_one_row;
end
X=[X1,X2];
clear m size_one_row i X1 X2;