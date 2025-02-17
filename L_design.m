S = 3048000;
Vdc = 600;
Vac = 400;
delip = 0.005*(S/Vac);
ma = Vac*sqrt(2)/Vdc
fsw = 10e3;
L = (2/3)*((ma*Vdc*(1-ma))/(delip*2*fsw))