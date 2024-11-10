clear;





angulo_independiente = 5; %DEL 1 al 5
valor_angulo_independiente = 90; %Angulo en DEG






%DIMENSIONES
l = [20,20,60,20,35,40,15,50]; %mm
coord_apoyos = [0,0,-35,50,-60,-10]; %mm
options = optimoptions('fsolve','Display','none','Algorithm', 'levenberg-marquardt');

%%% CALCULOS (NO HACE FALTA TOCAR( %%%
q0 = [0,0,0,0,0];
q0(angulo_independiente) = valor_angulo_independiente*pi/180;

fun = @(q)eeg_grupo_cdim(q, l, coord_apoyos, angulo_independiente, q0(angulo_independiente));
posicion = fsolve(fun, q0, options)*180/pi;

disp('############################################################')
fprintf('Para phi %d con un valor de %f:\n', angulo_independiente, valor_angulo_independiente);
fprintf('q={ %f | %f | %f | %f | %f }\n',posicion(1), posicion(2), posicion(3), posicion(4), posicion(5));
disp('############################################################')

