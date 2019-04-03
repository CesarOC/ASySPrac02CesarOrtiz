t=-2:0.001:2;
syms c;
x=@(t) t.^3;
t1=max(t);
t2=min(t);
x1=@(t) -x(t);
x2=@(t) 2.*x(t);
x3=c.*x;
disp('En cuanto al resultado de Pot1 , se utiliza el codigo de potencia7 ,previamente definido, aqui se muestra el calculo en cuanto al inciso a')
Pot1=potencia7(x1,t2,t1)
disp('se muestra el resultado en RMS inciso a')
RMS1=sqrt(Pot1)
disp('En cuanto al resultado de Pot2, es analogo al anterior solo que muestra el resultado del inciso b')
Pot2=potencia7(x2,t2,t1)
disp('se muestra el resultado en RMS inciso b')
RMS2=sqrt(Pot2)
disp('En cuanto al resultado de Pot3, es analogo al anterior solo que muestra el resultado del inciso c')
Pot3=potencia7(x3,t2,t1)
disp('se muestra el resultado en RMS inciso c')
RMS3=sqrt(Pot3)

