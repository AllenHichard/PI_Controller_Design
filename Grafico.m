function Grafico(Kp1, Kp2, Ki1, Ki2, P2, P1)
    kp = linspace(Kp1,Kp2,3);
    ki = linspace(Ki1,Ki2,3);
    p = linspace(P2,P1,3);
    %p1 = linspace(0.5556 ,0.4545,3);
    %p2 = linspace(0.0309 ,0.0207,3);

    for proporcional = kp
        for integral = ki
            for pg = p
                planta = tf(pg , [1 pg])
                controleI = tf([integral], [1 0])
                sistema = feedback( controleI * feedback(planta, proporcional), 1)
                step (sistema);
                hold on;
            end
        end
    end