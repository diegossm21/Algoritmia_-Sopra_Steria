% Leer las horas trabajadas
horasTrabajadas = input('Introduce las horas trabajadas: ');

% Leer la tarifa
tarifa = input('Introduce la tarifa por hora: ');

% Calcular el salario
if horasTrabajadas <= 40
    salario = horasTrabajadas * tarifa;
else
    horasExtras = horasTrabajadas - 40;
    tarifaExtra = tarifa * 1.5;
    salario = 40 * tarifa + horasExtras * tarifaExtra;
end

% Mostrar el salario
disp(['El salario es: ', num2str(salario)]);