clc;clear all;close all;
nprism=2;
T=10^14;
wp=1.36*10^16;
lambda=(100:3000);
c=3e8/10^-9;
w=2*pi*c./lambda;
Eg=1-((wp^2)./(w.^2+1i*T*w));
Kx=w/c.*((Eg)./(Eg+1)).^0.5;
Ka=w./c;

plot(Kx.',w.');
hold on
plot(Ka,w');
%plot(Ka*nprism,w,':r');
xlabel ('Normalized Propogation Constant');
ylabel ('Normalized frequency');
title('Dispertion relation Of a SPP at single metal dielectric');