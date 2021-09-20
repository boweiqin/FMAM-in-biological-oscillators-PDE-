function CNAM3 %Amplitude coordination in Cancer Network Scrtpt 3
m = 0;
x = linspace(0,pi,240);
t = linspace(0,50,2000);
options = odeset('RelTol',1e-8,'AbsTol',1e-8);

sol = pdepe(m,@pdeRN2,@pdeRN2ic,@pdeRN2bc,x,t,options);
% u1 and u2 represent the first and second variable in the PDE,
% respectively.
u1 = sol(:,:,1);
u2 = sol(:,:,2);

save 3.mat u1 u2 t

% --------------------------------------------------------------
function [c,f,s] = pdeRN2(x,t,u,DuDx)
c = [1; 1];
%quiescent state
mini=2.75;pini=mini-1;
%parameters
d1=1;d2=1;
alpha=0.35;a=1;b=2.5;kappa=5;epsilon=0.05;
F11=1;F12=-2.106692;
F21=-25/8*epsilon*F12;F22=-F11;
k11=5;k12=5;k21=5;k22=5;
F11b=F11*k11;F12b=F12*k12;
F21b=F21*k21;F22b=F22*k22;
f = [d1; d2] .* DuDx;  
s = [alpha/epsilon-u(1)/epsilon+kappa*u(1)^2/(a+u(1)^2+b*u(2))/epsilon+F11b*(u(1)-pini)/(u(1)-pini+k11)+F12b*(u(2)-mini)/(u(2)-mini+k12);1+u(1)-u(2)+F21b*(u(1)-pini)/(u(1)-pini+k21)+F22b*(u(2)-mini)/(u(2)-mini+k22)]; 
% --------------------------------------------------------------
function u0 =pdeRN2ic(x)
load 2.mat
xx=linspace(0,pi,240);
N=numel(xx);
for i=1:N
    if xx(i)==x
        u0=[u1(end,i);u2(end,i)];
    end
end

function [pl,ql,pr,qr] = pdeRN2bc(xl,ul,xr,ur,t)
%-----Robin Boundary Condition
d1=1;d2=1;h=1;
mini=2.75;pini=mini-1;
pl =h*[ul(1)-pini;ul(2)-mini]; 
ql =[-1/d1;-1/d2];
pr =h*[ur(1)-pini;ur(2)-mini]; 
qr =[1/d1;1/d2];  