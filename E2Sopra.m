% Definir un tipo estructurado para las personas
persona = struct('edad', [], 'sexo', []);

% Leer los datos de las 50 personas
for i = 1:50
    persona(i).edad = input(sprintf('Ingrese la edad de la persona %d: ', i));
    persona(i).sexo = input(sprintf('Ingrese el sexo de la persona %d (1 para masculino, 2 para femenino): ', i), 's');
end

% Inicializar las variables de resultados
cantidad_mayores_edad = 0;
cantidad_menores_edad = 0;
cantidad_masculinos_mayores_edad = 0;
cantidad_femeninos_menores_edad = 0;
cantidad_mujeres = 0;

% Realizar la clasificación
for i = 1:50
    if persona(i).edad >= 18
        cantidad_mayores_edad = cantidad_mayores_edad + 1;
        if persona(i).sexo == '1'
            cantidad_masculinos_mayores_edad = cantidad_masculinos_mayores_edad + 1;
        end
    else
        cantidad_menores_edad = cantidad_menores_edad + 1;
        if persona(i).sexo == '2'
            cantidad_femeninos_menores_edad = cantidad_femeninos_menores_edad + 1;
        end
    end
    if persona(i).sexo == '2'
        cantidad_mujeres = cantidad_mujeres + 1;
    end
end

% Calcular los porcentajes
porcentaje_mayores_edad = cantidad_mayores_edad / 50 * 100;
porcentaje_mujeres = cantidad_mujeres / 50 * 100;

% Escribir los resultados
fprintf('Cantidad de personas mayores de edad: %d\n', cantidad_mayores_edad);
fprintf('Cantidad de personas menores de edad: %d\n', cantidad_menores_edad);
fprintf('Cantidad de personas masculinas mayores de edad: %d\n', cantidad_masculinos_mayores_edad);
fprintf('Cantidad de personas femeninas menores de edad: %d\n', cantidad_femeninos_menores_edad);
fprintf('Porcentaje de personas mayores de edad respecto al total: %.2f%%\n', porcentaje_mayores_edad);
fprintf('Porcentaje de mujeres respecto al total: %.2f%%\n', porcentaje_mujeres);