The codes in this repository are used to generate the data in Figure 4f-g, which corresponds to the case:
independent frequency coordination in the FitzHugh-Nagumo model with DBC.

Please run the script in the following sequence:

1.   FNFM_DBC1.m     % codes for generating solution in time interval 0<t<200
2.   FNFM_DBC2.m     % codes for generating solution in time interval 200<t<400
3.   FNFM_DBC3.m     % codes for generating solution in time interval 400<t<600
4.   FNFM_DBC4.m     % codes for generating solution in time interval 600<t<800
5.   FNFM_DBC5.m     % codes for generating solution in time interval 800<t<1000
6.   FNFM_DBC6.m     % codes for generating solution in time interval 1000<t<1200
7.   MergeSol.m  % codes for merging all solutions together
8.   PlotFig.m      % codes for generating the figures