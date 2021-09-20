color1=[124,162,209]/255;
load colors.mat
load MergeSol.mat
figure('OuterPosition',[00,400,1600,350]);
imagesc(T,x,U1);
colormap(map1);
caxis([1.1 2.3]);
colorbar('FontSize',18,'linewidth',1,'FontName','Arial');
set(gca,'FontSize',18,'color','none','linewidth',1,'FontName','Arial');
xlabel('$t$','FontSize',30,'Interpreter','latex');
ylabel('$x$','FontSize',25,'Interpreter','latex');
% %----------------------------------------------------------------------------------------------
figure('OuterPosition',[00,200,1600,350]);
imagesc(T,x,U2);
colormap(map1);
caxis([2.5 2.8 ]);
colorbar('FontSize',18,'linewidth',1,'FontName','Arial');
set(gca,'FontSize',18,'color','none','linewidth',1,'FontName','Arial');
xlabel('$t$','FontSize',30,'Interpreter','latex');
ylabel('$x$','FontSize',25,'Interpreter','latex');
%% ------------------------------------------------------------------------------
figure('OuterPosition',[00,400,1520,350]);
axis([0,300,1,2.4]);
hold on
set(gca,'FontSize',18,'color','none','box','off','linewidth',1,'FontName','Arial','Tickdir','out'...
    );
xlabel(gca,'$t$','FontSize',30,'Interpreter','latex');
ylabel(gca,'Protein','FontSize',20,'FontName','Arial');
plot(T,U1(120,:),'linewidth',2,'color',color1);
% %-----------------------------------------------------------------------------------------------------
figure('OuterPosition',[00,400,1520,350]);
axis([0,300,2.35,3]);
hold on
set(gca,'FontSize',18,'color','none','box','off','linewidth',1,'FontName','Arial','Tickdir','out'...
   );
xlabel(gca,'$t$','FontSize',30,'Interpreter','latex');
ylabel(gca,'miRNA','FontSize',20,'FontName','Arial');
plot(T,U2(120,:),'linewidth',2,'color',color1);