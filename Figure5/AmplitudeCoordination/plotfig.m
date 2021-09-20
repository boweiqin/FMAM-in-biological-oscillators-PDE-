color2=[248,197,140]/255;
load colors.mat
load MergeSol.mat
%% ----- Figure5 a-----
figure('OuterPosition',[00,400,1600,350]);
imagesc(T,x,U1);
colormap(flip(map3));
caxis([0.3 0.5]);
colorbar('FontSize',18,'linewidth',1,'FontName','Arial');
set(gca,'FontSize',18,'color','none','linewidth',1,'FontName','Arial');
xlabel('$t$ (ms)','FontSize',25,'Interpreter','latex');
ylabel('$x$','FontSize',30,'Interpreter','latex');
%% ----- Figure5 b-----
figure('OuterPosition',[00,400,1520,350]);
axis([0,1200,0.19,0.5]);
hold on
set(gca,'FontSize',18,'color','none','box','off','linewidth',1,'FontName','Arial','Tickdir','out'...
    );
xlabel(gca,'$t$ (ms)','FontSize',25,'Interpreter','latex');
ylabel(gca,'$V(x^*,t)$','FontSize',25,'Interpreter','latex');
plot(T,U1(120,:),'linewidth',2,'color',color2);