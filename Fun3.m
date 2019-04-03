w= -10:0.01:10;
t=-1:0.01:5;
F=complex(0.5,-w); 

Mifig2(w,real(F),imag(F)) %graficacion de la transformada de fourier
 title('Transformada de fourier(1/-2+jw)')
f=@(t)(exp(-2*t)).*(t>=0);%grafica de f(t)
mifigura(t,f(t))
 title('grafica f(t)=e^-2t*u(t)')
%Graficacion del espectro de amplitud
MF=@(w) sqrt(0.5.^2+(imag(F).^2));
mifigura(w,MF(w))
 title('grafica del espectro de magnitud usando una funcion simbolica:MF=@(w) sqrt(0.5.^2+(imag(F).^2)')
%otra opcion de graficacion del espectro de magnitud
mifigura(w,abs(F))
title('grafica del espectro de magnitud usanso el comando abs ')
%graficacion del espectro de fase
A=atan2(imag(F),real(F));
mifigura(w,A)
title('grafica del espectro de fase usando el comando atan2 ')
%Otra opcion de graficacion del espectro de magnitud
mifigura(w,angle(F))
title('grafica del espectro de fase usando el comando angle ')