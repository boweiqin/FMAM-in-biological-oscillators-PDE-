function FNAM_NBC4
m = 0;
x = linspace(0,pi,240);
t = linspace(0,200,2000);
options = odeset('RelTol',1e-8,'AbsTol',1e-8);

sol = pdepe(m,@pdefhn,@pdefhnic,@pdefhnbc,x,t,options);
u1 = sol(:,:,1);
u2 = sol(:,:,2);

 save NBC4.mat u1 u2 t 
% --------------------------------------------------------------
function [c,f,s] = pdefhn(x,t,u,DuDx)
c = [1; 1];
%quiscent states
vini=0.3067558952;uini=.1227023581;
%parameters
d1=1;d2=1;epsilon=0.1;
theta=0.2;
I=0.1;
gamma=2.5;
F11=0.340319;
F12=1-sqrt(9.999999999*F11^2+.3651701234+5.039166107*F11+.6348298765);
F21=-0.1*F12;F22=-F11;
f = [d1; epsilon*d2] .* DuDx;  
s = [u(1)*(u(1)-theta)*(1-u(1))-u(2)+I+F11*(u(1)-vini)+F12*(u(2)-uini); epsilon*(u(1)-gamma*u(2))+F21*(u(1)-vini)+F22*(u(2)-uini)]; 
% --------------------------------------------------------------
function u0 =pdefhnic(x)
load NBC3
%----------------------------------------------------------
xx=linspace(0,pi,240);
N=numel(xx);
for i=1:N
    if xx(i)==x
        u0=[u1(end,i);u2(end,i)];
    end
end

function [pl,ql,pr,qr] = pdefhnbc(xl,ul,xr,ur,t)
%% -----Neumann Boundary Condition-----
pl = [0;0]; 
ql = [1;1]; 
pr =[0;0];
qr = [1;1]; 