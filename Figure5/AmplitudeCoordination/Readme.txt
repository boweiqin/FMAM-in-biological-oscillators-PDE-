The codes in this repository are used to generate the data in Figure 5a-b, which corresponds to the case:
independent amplitude coordination in the FitzHugh-Nagumo model with NBC.

Please run the script in the following sequence:

1.   FNAM_NBC1.m     % codes for generating solution in time interval 0<t<200
2.   FNAM_NBC2.m     % codes for generating solution in time interval 200<t<400
3.   FNAM_NBC3.m     % codes for generating solution in time interval 400<t<600
4.   FNAM_NBC4.m     % codes for generating solution in time interval 600<t<800
5.   FNAM_NBC5.m     % codes for generating solution in time interval 800<t<1000
6.   FNAM_NBC6.m     % codes for generating solution in time interval 1000<t<1200
7.   MergeSol.m  % codes for merging all solutions together
8.   PlotFig.m      % codes for generating the figures