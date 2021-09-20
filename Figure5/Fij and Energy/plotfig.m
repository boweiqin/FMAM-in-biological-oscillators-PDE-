color1=[124,162,209]/255;
color2=[248,197,140]/255;
color3=[186,212,244]/255;
color5=[96,174,146]/255;
load colors.mat
%% -----Figure5 d-----
load Energy.mat
figure('OuterPosition',[100,200,800,400]);
hold on
axis([0.5,1.5,-0.5,8]);
set(gca,'FontSize',18,'color','none','box','off','linewidth',2,'FontName','Arial',...
    'Tickdir','out','xtick',[0 0.5 1 1.5 2]);
xlabel(gca,'$r_A$','FontSize',28,'Interpreter','latex');
ylabel(gca,'$\mathcal{E}$ (pJ/S)','FontSize',25,'Interpreter','latex');
patch([0 1/nAM(end) 1/nAM(end) 0],[-0.48 -0.48 8 8],[0.6 0.6 0.6],'LineStyle','none')
patch([1/nAM(end) 1 1 1/nAM(end)],[-0.48 -0.48 8 8],[0.7 0.7 0.7],'LineStyle','none')
plot(1./nAM,dEA,'linewidth',4,'color',color2);
plot(1./nAM,dEA,'o','MarkerSize',10,'MarkerFaceColor',color2,'color',color2);
%% -----Figure5 c-----
load Fij.mat
figure('OuterPosition',[100,200,800,400]);
hold on
axis([-0.8,0.5,-1.5,0.9]);
set(gca,'FontSize',18,'color','none','box','off','linewidth',2,'FontName','Arial',...
    'Tickdir','out','xtick',[-0.8 -0.6 -0.4 -0.2 0 0.2 0.4]);
xlabel(gca,'$f_{11}$','FontSize',25,'Interpreter','latex');
ylabel(gca,'$f_{12}$','FontSize',25,'Interpreter','latex');
patch([-0.795 -0.447 -0.447 -0.795],[-1.49 -1.49 0.9 0.9],[0.6 0.6 0.6],'LineStyle','none')
patch([-0.447 0 0 -0.447],[-1.49 -1.49 0.9 0.9],[0.7 0.7 0.7],'LineStyle','none')
plot(F11,F12,'linewidth',4,'color',color2);
plot(F11_highlight,F12_highlight,'o','MarkerSize',10,'MarkerFaceColor',color2,'color',color2);
