function [] = Energia_6(f)
%Esta funci�n calcula la energ�a de una funci�n simb�lica.

x = @(t)f(t).^2 ;

integral(x, -inf, inf)
end
 
