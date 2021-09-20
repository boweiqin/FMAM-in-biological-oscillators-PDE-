function FNFM_DBC5
m = 0;
x = linspace(0,pi,240);
t = linspace(0,200,2000);
options = odeset('RelTol',1e-8,'AbsTol',1e-8);

sol = pdepe(m,@pdefhn,@pdefhnic,@pdefhnbc,x,t,options);
u1 = sol(:,:,1);
u2 = sol(:,:,2);

save DBC5.mat u1 u2 t

function [c,f,s] = pdefhn(x,t,u,DuDx)
c = [1; 1];
%quiescent states
vini=0.3067558952;uini=.1227023581;
%parameters
d1=0.01;d2=0.01;epsilon=0.096;
theta=0.2;
I=0.1;
gamma=2.5;
F11=-0.212303200000000;F12=0.741507085408057;
F21=-0.096*F12;F22=-F11;
f = [d1; epsilon*d2] .* DuDx;  
s = [u(1)*(u(1)-theta)*(1-u(1))-u(2)+I+F11*(u(1)-vini)+F12*(u(2)-uini); epsilon*(u(1)-gamma*u(2))+F21*(u(1)-vini)+F22*(u(2)-uini)]; 

function u0 =pdefhnic(x)
load DBC4
xx=linspace(0,pi,240);
N=numel(xx);
for i=1:N
    if xx(i)==x
         u0=[u1(end,i);u2(end,i)];
    end
end

function [pl,ql,pr,qr] = pdefhnbc(xl,ul,xr,ur,t)
%% -----Dirichlet Boundary Condition
vini=0.3067558952;
uini=.1227023581;
pl = [ul(1)-vini;ul(2)-uini]; 
ql = [0;0]; 
pr =[ur(1)-vini;ur(2)-uini];
qr = [0;0]; 