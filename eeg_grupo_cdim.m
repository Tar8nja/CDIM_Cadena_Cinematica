% Ecuaciones de enlace

function f = eeg_grupo_cdim(q, l, coord_apoyos, ang_ind, valor_ang_ind)

    switch ang_ind
        case 1
            f(1) = l(7)*cos(q(5)) - l(6)*cos(q(4)) + l(5)*sin(q(3)) - (coord_apoyos(3)-coord_apoyos(1));
            f(2) = l(7)*sin(q(5)) - l(6)*sin(q(4)) + l(5)*cos(q(3)) - (coord_apoyos(4)-coord_apoyos(2));
            f(3) = -l(4)*cos(q(3)) - l(3)*sin(q(2)) + l(2)*cos(valor_ang_ind) - (coord_apoyos(5)-coord_apoyos(3));
            f(4) = l(4)*sin(q(3)) - l(3)*cos(q(2)) - l(2)*sin(valor_ang_ind) - (coord_apoyos(6)-coord_apoyos(4));

        case 2
            f(1) = l(7)*cos(q(5)) - l(6)*cos(q(4)) + l(5)*sin(q(3)) - (coord_apoyos(3)-coord_apoyos(1));
            f(2) = l(7)*sin(q(5)) - l(6)*sin(q(4)) + l(5)*cos(q(3)) - (coord_apoyos(4)-coord_apoyos(2));
            f(3) = -l(4)*cos(q(3)) - l(3)*sin(valor_ang_ind) + l(2)*cos(q(1)) - (coord_apoyos(5)-coord_apoyos(3));
            f(4) = l(4)*sin(q(3)) - l(3)*cos(valor_ang_ind) - l(2)*sin(q(1)) - (coord_apoyos(6)-coord_apoyos(4));

        case 3
            f(1) = l(7)*cos(q(5)) - l(6)*cos(q(4)) + l(5)*sin(valor_ang_ind) - (coord_apoyos(3)-coord_apoyos(1));
            f(2) = l(7)*sin(q(5)) - l(6)*sin(q(4)) + l(5)*cos(valor_ang_ind) - (coord_apoyos(4)-coord_apoyos(2));
            f(3) = -l(4)*cos(valor_ang_ind) - l(3)*sin(q(2)) + l(2)*cos(q(1)) - (coord_apoyos(5)-coord_apoyos(3));
            f(4) = l(4)*sin(valor_ang_ind) - l(3)*cos(q(2)) - l(2)*sin(q(1)) - (coord_apoyos(6)-coord_apoyos(4));

        case 4
            f(1) = l(7)*cos(q(5)) - l(6)*cos(q(4)) + l(5)*sin(q(3)) - (coord_apoyos(3)-coord_apoyos(1));
            f(2) = l(7)*sin(q(5)) - l(6)*sin(q(4)) + l(5)*cos(q(3)) - (coord_apoyos(4)-coord_apoyos(2));
            f(3) = -l(4)*cos(q(3)) - l(3)*sin(q(2)) + l(2)*cos(q(1)) - (coord_apoyos(5)-coord_apoyos(3));
            f(4) = l(4)*sin(q(3)) - l(3)*cos(q(2)) - l(2)*sin(q(1)) - (coord_apoyos(6)-coord_apoyos(4));

        case 5
            f(1) = l(7)*cos(valor_ang_ind) - l(6)*cos(q(4)) + l(5)*sin(q(3)) - (coord_apoyos(3)-coord_apoyos(1));
            f(2) = l(7)*sin(valor_ang_ind) - l(6)*sin(q(4)) + l(5)*cos(q(3)) - (coord_apoyos(4)-coord_apoyos(2));
            f(3) = -l(4)*cos(q(3)) - l(3)*sin(q(2)) + l(2)*cos(q(1)) - (coord_apoyos(5)-coord_apoyos(3));
            f(4) = l(4)*sin(q(3)) - l(3)*cos(q(2)) - l(2)*sin(q(1)) - (coord_apoyos(6)-coord_apoyos(4));

        otherwise
            disp('Invalid Angle')
    end
end

