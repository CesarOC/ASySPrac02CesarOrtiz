function [] = Energia_6a()
%Esta función calcula la energía de una función simbólica.

t = (-5:0.001:5); 
y=@(t) (((t>=0) & (t<1)))+(-((t>1) & (t<2)));
x= @(t) ((t>=0) & (t<2));
h=@(t) (((t>=0) & (t<1)))+(-((t>1) & (t<2)))+((t>=0) & (t<2));
g=@(t) (((t>=0) & (t<1)))+(-((t>1) & (t<2)))-((t>=0) & (t<2));
 
subplot(2,2,1)
 plot(t,x(t));
 title('x(t)')
 xlabel('t'); ylabel('x(t)');
 axis ([-1 3 -2 3]);
 ax = gca;
 ax.XAxisLocation = 'origin'; ax.YAxisLocation = 'origin';
 
 subplot(2,2,2)
 plot(t,y(t));
 title('y(t)')
 xlabel('t'); ylabel('y(t)');
 axis ([-1 3 -2 3]);
 ax = gca;
 ax.XAxisLocation = 'origin'; ax.YAxisLocation = 'origin';
 
 subplot(2,2,3)
 plot(t,h(t));
 title('h(t)=x(t)+y(t)')
 xlabel('t'); ylabel('h(t)');
 axis ([-1 3 -2 3]);
 ax = gca;
 ax.XAxisLocation = 'origin'; ax.YAxisLocation = 'origin';
 
  subplot(2,2,4)
 plot(t,g(t));
 title('g(t)=x(t)-y(t)')
 xlabel('t'); ylabel('g(t)');
 axis ([-1 3 -2 3]);
 ax = gca;
 ax.XAxisLocation = 'origin'; ax.YAxisLocation = 'origin';
 
 Energia_6(h)
 Energia_6(g)
end
