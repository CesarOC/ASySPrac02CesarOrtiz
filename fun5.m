 %Problema 1.2.2 Lathi
 %Encuantra la energía de las señales y comenta el efecto que tienen la inversión,
 %escalamiento y translación de una señal en la energía de la misma.
 p = inline('(t.*((t>=0) & (t<2)))+(-t.*((t<0) & (t>-4)))','t');
 t = (-5:0.001:5); 
 subplot(3,3,1)
 plot(t,p(t));
 title('original')
 xlabel('t'); ylabel('x(t)');
 axis ([-5 5 -5 5]);
 ax = gca;

 
 subplot(3,3,2)
 plot(t,p(t-4));
 title('a')
 xlabel('t'); ylabel('x(t-4)');
 axis ([-5 5 -5 5]);
 ax = gca;
 
 
 subplot(3,3,3)
 plot(t,p(t/1.5));
 title('b')
 xlabel('t'); ylabel('x(t/1.5)');
 axis ([-5 5 -5 5]);
 ax = gca;
 
 
 subplot(3,3,4)
 plot(t,-p(t));
 title('c')
 xlabel('t'); ylabel('-x(t)');
 axis ([-5 5 -5 5]);
 ax = gca;

 
 subplot(3,3,5)
 plot(t,p(2*t-4));
 title('d')
 xlabel('t'); ylabel('x(2t-4)');
 axis ([-5 5 -5 5]);
 ax = gca;
 
 
 subplot(3,3,6)
 plot(t,p(2-t));
 title('e')
 xlabel('t'); ylabel('x(2-t)');
 axis ([-5 5 -5 5]);
 ax = gca;
 
 