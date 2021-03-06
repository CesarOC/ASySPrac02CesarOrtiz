function [] = Energia_6b()
%Esta función calcula la energía de una función simbólica.

t = (-5*pi:pi/480:5*pi); 
x=@(t) (sin(t).*((t>=0) & (t<2*pi)));
y= @(t) ((t>=0) & (t<2*pi));
h=@(t) (sin(t).*((t>=0) & (t<2*pi)))+((t>=0) & (t<2*pi));
g=@(t) (sin(t).*((t>=0) & (t<2*pi)))-((t>=0) & (t<2*pi));
 
subplot(2,2,1)
 plot(t,x(t));
 title('x(t)')
 xlabel('t'); ylabel('x(t)');
 axis ([-pi 3*pi -2 3]);
 ax = gca;
 ax.XAxisLocation = 'origin'; ax.YAxisLocation = 'origin';
 set(gca,'XTick',0:pi/2:2*pi) 
 set(gca,'XTickLabel',{'0','pi/2','pi','3*pi/2','2*pi'})
 
 subplot(2,2,2)
 plot(t,y(t));
 title('y(t)')
 xlabel('t'); ylabel('y(t)');
 axis ([-pi 3*pi -2 3]);
 ax = gca;
 ax.XAxisLocation = 'origin'; ax.YAxisLocation = 'origin';
 set(gca,'XTick',0:pi/2:2*pi) 
 set(gca,'XTickLabel',{'0','pi/2','pi','3*pi/2','2*pi'})
 
 subplot(2,2,3)
 plot(t,h(t));
 title('h(t)=x(t)+y(t)')
 xlabel('t'); ylabel('h(t)');
  axis ([-pi 3*pi -2 3]);
 ax = gca;
 ax.XAxisLocation = 'origin'; ax.YAxisLocation = 'origin';
 set(gca,'XTick',0:pi/2:2*pi) 
 set(gca,'XTickLabel',{'0','pi/2','pi','3*pi/2','2*pi'})
 
  subplot(2,2,4)
 plot(t,g(t));
 title('g(t)=x(t)-y(t)')
 xlabel('t'); ylabel('g(t)');
  axis ([-pi 3*pi -2 3]);
 ax = gca;
 ax.XAxisLocation = 'origin'; ax.YAxisLocation = 'origin';
 set(gca,'XTick',0:pi/2:2*pi) 
 set(gca,'XTickLabel',{'0','pi/2','pi','3*pi/2','2*pi'})
 disp('Se muestra la energ{ia de la señal h(t) para el inciso b')
 Energia_6(h)
 disp('Se muestra la energ{ia de la señal h(t) para el inciso b')
 Energia_6(g)
end

