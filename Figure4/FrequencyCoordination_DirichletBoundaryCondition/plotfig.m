load colors.mat
load MergeSol.mat
figure('OuterPosition',[0,400,1600,350]);
imagesc(T,x,U1);
colormap(map1);
caxis([0.23 0.39]);
colorbar('FontSize',14,'linewidth',1,'FontName','Arial');
set(gca,'FontSize',14,'color','none','linewidth',1,'FontName','Arial');
xlabel('$t$ (ms)','FontSize',30,'Interpreter','latex');
ylabel('$x$','FontSize',20,'Interpreter','latex');
%----------------------------------------------------
figure('OuterPosition',[00,400,1520,350]);
axis([0,1200,0.2,0.45]);
hold on
set(gca,'FontSize',14,'color','none','box','off','linewidth',1,'FontName','Arial','Tickdir','out'...
    );
xlabel(gca,'$t$ (ms)','FontSize',20,'Interpreter','latex');
ylabel(gca,'$V(x^*,t)$','FontSize',20,'Interpreter','latex');
plot(T,U1(120,:),'linewidth',2,'color',color1);
yticks([])