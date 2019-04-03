%M1.1 del lathi
t1=-2:2;%Intervalo de graficacion , graficas: M1.1,M1.3
t2=-2:0.01:2;%Intervalo de graficacion , graficaS: M1.2,M1.4,M1.6,M1.7,M1.8
t3=-1:0.01:2;%Intervalo de graficacion , graficaM1.5

f=@(t)exp(-t).*cos(2*pi*t);
mifigura(t1,f(t1))%Grafica M1.1
 title('Grafica M1.1')
mifigura(t2,f(t2))%Grafica M1.2
title('Grafica M1.2')
%M1.2 del lathi
u=@(t) (t>=0);
mifigura(t1,u(t1))%Grafica M1.3
title('Grafica M1.3')
mifigura(t2,u(t2))%Grafica M1.4
title('Grafica M1.4')
axis ([-2 2 -0.1 1.1]);
u2 =@(t)((t>=0) & (t<1));
mifigura(t3,u2(t3))%grafica M1.5
title('Grafica M1.5')
xlabel('t'); ylabel('p(t) = u(t)-u(t-1)');
axis ([-1 2 -.1 1.1]);

%M1.3 del lathi
g=@(t)(exp(-t).*cos(2*pi*t).*(t>=0));
mifigura(t2,g(2*t2+1))%Grafica M1.6
title('Grafica M1.6')
xlabel('t'); ylabel('g(2t+1)');grid on;
mifigura(t2,g(-t2+1))%Grafica M1.7
title('Grafica M1.7')
xlabel('t'); ylabel('g(-t+1)');grid on;
mifigura(t2,g(2*t2+1) +g(-t2+1))%Grafica M1.8
title('Grafica M1.8')
xlabel('t'); ylabel('h(t)');grid on;

%M1.4
te=0:0.01:1;
E=@(t)(exp(-t).*((t>=0)&(t<1)));
Ex=sum(E(te).*E(te)*0.01);
disp('Primer resultado usando el comando sum')
disp(Ex)%Primer resultado usando el comando sum
%Calculo usando la recursividad de Simpson
ts=t;
Es=@(t)(exp(-2*t).*((t>=0)&(t>1)));
E_x =quad(Es,0,1);
disp('Calculo usando la recursividad de Simpson')
disp(E_x)
%Calculo usando el comando sum
Es2=@(t)(exp(-2*t).*(cos(2*pi*t).^2).*(t>=0));
ts2 =0:0.001:100;
E_g =sum(Es2(ts2)*0.001)
disp('Segundo calculo usando el comando sum')
disp(E_g)

%Derivacion del calculo anterior , calculo con mas precision usando la recursividad de Simpson

E_g2 =quad(Es2,0,1000)
disp('Derivacion del calculo anterior ,calculo con mas precision usando la recursividad de Simpson')
disp(E_g2)






