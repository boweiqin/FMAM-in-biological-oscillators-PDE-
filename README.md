# FMAM-in-biological-oscillators-PDE-

This project relates to the article entitled "A frequency-amplitude coordinator and its optimal energy consumption for biological oscillators" which was submitted to Nature Communications.

The customized Maple code for computing the normal form of the FitzHugh-Nagumo model with the Neumann boundary condition is provided in this project. The codes for other cases are available from the corresponding author upon reasonable request.

1. System requirements
a. The codes can be run within Maple environment on any operating system.
b. We implemented the codes using Maple 18 on Windows 10.
c. No non-standard hardware is required.

2. Installation guide
a. The codes can be run directly without installation.
b. No install time is needed.

3. Demo
a. The codes "main1.m", "main2.m", "main3.m" in repository "logistic1" correspond to causal relations X->Y, X->Z & Z->Y, X->Z & Z->Y & Y->X respectively. The data generation process is included in the codes.
b. The codes can be run directly to obtain the results in Fig. 3 of the main text. The output PCM indices are restored in variable "PPC". The code "plotacc.m" is used to generate Fig. S2 of the supplementary information.
c. Expected run time for this demo is less than 1 minute on a "normal" desktop computer.

