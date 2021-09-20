The codes in this repository are used to generate the data in Figure 7a-c, which corresponds to the case:
hybrid coordination in the FitzHugh-Nagumo model with NBC.

Please run the script in the following sequence:

1.   FNHybrid1.m     % codes for generating solution in time interval 0<t<200
2.   FNHybrid2.m     % codes for generating solution in time interval 200<t<400
3.   FNHybrid3.m     % codes for generating solution in time interval 400<t<600
4.   FNHybrid4.m     % codes for generating solution in time interval 600<t<800
5.   FNHybrid5.m     % codes for generating solution in time interval 800<t<1000
6.   FNHybrid6.m     % codes for generating solution in time interval 1000<t<1200
7.   MergeSol.m  % codes for merging all solutions together
8.   PlotFig.m      % codes for generating the (raw) figures