load('NBC1.mat')
T=t;U1=u1';U2=u2';
tt=t(end);
load('NBC2.mat')
T=[T t(2:end)+tt*1];u1=u1';u2=u2';U1=[U1 u1(:,2:end)];U2=[U2 u2(:,2:end)];
load('NBC3.mat')
T=[T t(2:end)+tt*2];u1=u1';u2=u2';U1=[U1 u1(:,2:end)];U2=[U2 u2(:,2:end)];
load('NBC4.mat')
T=[T t(2:end)+tt*3];u1=u1';u2=u2';U1=[U1 u1(:,2:end)];U2=[U2 u2(:,2:end)];
load('NBC5.mat')
T=[T t(2:end)+tt*4];u1=u1';u2=u2';U1=[U1 u1(:,2:end)];U2=[U2 u2(:,2:end)];
load('NBC6.mat')
T=[T t(2:end)+tt*5];u1=u1';u2=u2';U1=[U1 u1(:,2:end)];U2=[U2 u2(:,2:end)];
x=linspace(0,pi,240);
save MergeSol.mat U1 U2 x T