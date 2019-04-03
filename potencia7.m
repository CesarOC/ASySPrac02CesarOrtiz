%Funcion de Potencia que utilizaremos para el ejercicio 4.1.1
function [Px] = potencia7(X,t2,t1)
A=isa(X,'function_handle');
    if A==1
        t=t2:0.001:t1;
        p=@(t) (X(t)).^2;
        Px=(1/(t1-t2)).*(integral(p,t2,t1));
    else
        syms tao;
        Px=limit((1/(2*tao)).*(int(X.^2,-tao,tao)),tao,inf);%En este caso declaramos nuestra integral de la potencia que va de -tao a
%tao por nuestra funcion X.^2.
    end
end 
