% Leer un número entero
numero = input('Ingrese un número entero: ');

% Determinar si el número es par o impar
if mod(numero, 2) == 0
    disp("Es par")
    % Si es par, escribir todos los pares descendentemente hasta el cero
    for i = numero:-2:0
        disp(i);
    end
else
    disp("Es impar")
    % Si es impar, escribir todos los impares descendentemente hasta el uno
    for i = numero:-2:1
        disp(i);
    end
end