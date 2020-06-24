function graficos()
    kp = linspace(0.4844,0.3945,3);
    ki = linspace(0.0633,0.0630,3);
    p1 = linspace(0.5556 ,0.4545,3);
    p2 = linspace(0.0309 ,0.0207,3);


    for p = kp
            for a = p1
                for b = p2
                    for i = ki
                        Num = [ 0 0 a*i ];
                        Den = [ 1 (b+a*p) a*i];
                        sys = tf(Num, Den);
                        step (sys);
                        hold on;
                    end
                end
            end
    end
   