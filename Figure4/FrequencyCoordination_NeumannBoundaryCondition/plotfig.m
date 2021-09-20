load colors.mat
load MergeSol.mat
figure('OuterPosition',[0,400,1600,350]);
imagesc(T,x,U1);
colormap(map1);
caxis([0.23 0.39]);
colorbar('FontSize',18,'linewidth',1,'FontName','Arial');
set(gca,'FontSize',18,'color','none','linewidth',1,'FontName','Arial');
xlabel('$t$ (ms)','FontSize',30,'Interpreter','latex');
ylabel('$x$','FontSize',30,'Interpreter','latex');
