%% -----Figure 7a-----
load MergeSol.mat
load colormaps.mat
figure('OuterPosition',[0,400,1600,350]);
imagesc(T,x,U1);
colormap(map5);
caxis([0.2 0.5]);
colorbar('FontSize',18,'linewidth',1,'FontName','Arial');
set(gca,'FontSize',18,'color','none','linewidth',1,'FontName','Arial');
xlabel('$t$ (ms)','FontSize',30,'Interpreter','latex');
ylabel('$x$','FontSize',25,'Interpreter','latex');
%% -----Figure 7b-----
load MergeSol.mat
load colormaps.mat
figure('OuterPosition',[0,400,1520,350]);
axis([0,1200,0.19,0.5]);
hold on
set(gca,'FontSize',18,'color','none','box','off','linewidth',1,'FontName','Arial','Tickdir','out'...
    );
xlabel(gca,'$t$ (ms)','FontSize',30,'Interpreter','latex');
ylabel(gca,'$V(x^*,t)$','FontSize',25,'Interpreter','latex');
plot(T,U1(120,:),'linewidth',2,'color',color5);
%% -----Figure 7c-----
load MergeSol.mat
figure('OuterPosition',[100,100,1300,600]);
color5=[0.376470588235294,0.682352941176471,0.572549019607843]/1.3;
hold on
plot(U1(120,1:2000),U2(120,1:2000),'color',color5,'linewidth',2);
plot(U1(120,2001:3999),U2(120,2001:3999),'color',color5,'linewidth',2);
plot(U1(120,4000:5998),U2(120,4000:5998),'color',color5*1.2,'linewidth',2);
plot(U1(120,5999:7997),U2(120,5999:7997),'color',color5*1.4,'linewidth',2);
plot(U1(120,7998:9996),U2(120,7998:9996),'color',color5*1.6,'linewidth',2);
plot(U1(120,9997:11995),U2(120,9997:11995),'color',color5*1.8,'linewidth',2);
axis([0.185,0.49,0.083,0.182]);
set(gca,'FontSize',18,'color','none','box','off','linewidth',2,'FontName','Arial',...
    'Tickdir','out');
xlabel(gca,'$V$','FontSize',25,'Interpreter','latex');
ylabel(gca,'$W$','FontSize',25,'Interpreter','latex');