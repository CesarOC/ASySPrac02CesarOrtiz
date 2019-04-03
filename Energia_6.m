function [] = Energia_6(f)
%Esta función calcula la energía de una función simbólica.

x = @(t)f(t).^2 ;

integral(x, -inf, inf)
end
 
