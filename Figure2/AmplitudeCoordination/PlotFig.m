color2=[248,197,140]/255;
load colors.mat
color1=[180,102,106]/255;
load MergeSol.mat
figure('OuterPosition',[0,400,1600,350]);
imagesc(T,x,U1);
colormap(flip(map3));
caxis([2.5 3]);
colorbar('FontSize',18,'linewidth',1,'FontName','Arial');
set(gca,'FontSize',18,'color','none','linewidth',1,'FontName','Arial');
xlabel('$t$','FontSize',30,'Interpreter','latex');
ylabel('$x$','FontSize',25,'Interpreter','latex');
% %----------------------------------------------------------------------------------------------
figure('OuterPosition',[0,200,1600,350]);
imagesc(T,x,U2);
colormap(flip(map3));
caxis([2 3.1])
colorbar('FontSize',18,'linewidth',1,'FontName','Arial');
set(gca,'FontSize',18,'color','none','linewidth',1,'FontName','Arial');
xlabel('$t$','FontSize',30,'Interpreter','latex');
ylabel('$x$','FontSize',25,'Interpreter','latex');
%% ------------------------------------------------------------------------------
figure('OuterPosition',[0,400,1520,350]);
axis([0,300,2.5,3]);
hold on
set(gca,'FontSize',18,'color','none','box','off','linewidth',1,'FontName','Arial','Tickdir','out'...
    );
xlabel(gca,'$t$','FontSize',30,'Interpreter','latex');
ylabel(gca,'Protein','FontSize',20,'FontName','Arial');
patch([0.5 300 300 0.5],[2.75 2.75 3. 3.],color1,'LineStyle','none')
plot(T,U1(120,:),'linewidth',2,'color',color2);
% %-----------------------------------------------------------------------------------------------------
figure('OuterPosition',[0,400,1520,350]);
axis([0,300,2.,3.2]);
hold on
set(gca,'FontSize',18,'color','none','box','off','linewidth',1,'FontName','Arial','Tickdir','out'...
   );
xlabel(gca,'$t$','FontSize',30,'Interpreter','latex');
ylabel(gca,'miRNA','FontSize',20,'FontName','Arial');
plot(T,U2(120,:),'linewidth',2,'color',color2);