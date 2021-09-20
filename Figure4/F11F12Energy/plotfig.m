color1=[124,162,209]/255;
color2=[248,197,140]/255;
color3=[186,212,244]/255;
%% -----Figure 4b-----
load('Fij_omega.mat');
figure('OuterPosition',[100,200,800,400]);
hold on
axis([-0.5,0.8,-2.5,1]);
set(gca,'FontSize',15,'color','none','box','off','linewidth',2,'FontName','Arial',...
    'Tickdir','out','xtick',[-0.4 -0.2 0 0.2 0.4 0.6 0.8]);
xlabel(gca,'$f_{11}$','FontSize',25,'Interpreter','latex');
ylabel(gca,'$f_{12}$','FontSize',25,'Interpreter','latex');
plot(f11(5:end),f12m(5:end),'linewidth',4,'color',color1);
plot(f11(5:end),f12m(5:end),'o','MarkerSize',8,'MarkerFaceColor',color1,'color',color1);
plot(f11_highlight,f12_highlight,'o','MarkerSize',10,'MarkerFaceColor',color3,'color',color3);
grid on
%% -----Figure 4c-----
load('Fij_omega.mat');
figure('OuterPosition',[100,200,800,400]);
hold on
axis([0,3,-0.4,2.5]);
set(gca,'FontSize',15,'color','none','box','off','linewidth',2,'FontName','Arial',...
    'Tickdir','out','xtick',[0 0.5 1 1.5 2 2.5 3],'ytick',[0 1 2 ]);
xlabel(gca,'$\omega_0/\omega_c$','FontSize',25,'Interpreter','latex');
ylabel(gca,'$f_{11}$','FontSize',25,'Interpreter','latex');
plot(n,f11,'linewidth',4,'color',color1);
plot(n,f11,'o','MarkerSize',8,'MarkerFaceColor',color1,'color',color1);
plot(n_highlight,f11_highlight,'o','MarkerSize',10,'MarkerFaceColor',color3,'color',color3);
grid on
%% -----Figure 4d-----
load('Fij_omega.mat');
figure('OuterPosition',[500,200,800,400]);
hold on
axis([0,3,-20,20]);
set(gca,'FontSize',15,'color','none','box','off','linewidth',2,'TickLabelInterpreter','latex',...
    'Tickdir','out','xtick',[0 0.5 1 1.5 2 2.5 3],'ytick',[-20 0 20]);
xlabel(gca,'$\omega_0/\omega_c$','FontSize',25,'Interpreter','latex');
ylabel(gca,'$f_{12}$','FontSize',25,'Interpreter','latex');
plot(n,f12p,'linewidth',4,'color',color2);
plot(n,f12p,'o','MarkerSize',8,'MarkerFaceColor',color2,'color',color2);
plot(n,f12m,'linewidth',4,'color',color1);
plot(n,f12m,'o','MarkerSize',8,'MarkerFaceColor',color1,'color',color1);
plot(n_highlight,f12_highlight,'o','MarkerSize',10,'MarkerFaceColor',color3,'color',color3);
grid on
%% -----Figure 4e-----
load Energy_omega
n=nFM;
figure('OuterPosition',[500,400,800,400]);
hold on
axis([0.1,3,-1,14]);
set(gca,'FontSize',15,'color','none','box','off','linewidth',2,'FontName','Arial',...
    'Tickdir','out','xtick',[0.1 0.5 1 1.5 2 2.5 3]);
xlabel(gca,'$\omega_0/\omega_c$','FontSize',28,'Interpreter','latex');
ylabel(gca,'$\mathcal{E}$ (pJ/S)','FontSize',28,'Interpreter','latex');
plot(n,dEa,'linewidth',4,'color',color1);
plot(n,dEa,'o','MarkerSize',8,'MarkerFaceColor',color1,'color',color1);
plot(n(5:10),dEa(5:10),'o','MarkerSize',10,'MarkerFaceColor',color3,'color',color3);
plot(n,dEb,'linewidth',4,'color',color2);
plot(n,dEb,'o','MarkerSize',8,'MarkerFaceColor',color2,'color',color2);
grid on