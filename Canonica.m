%mp normalmente é dado em decimal (fator porcentagem)
%ts normalmente é dado em segundos
function [qsi, wn, canonical] = Canonica(mp, ts)
    qsi = sqrt( (log(mp) * log(mp)) / (log(mp) * log(mp) + pi * pi));
    wn = 4 / (qsi * ts);
    canonical = tf([wn^2] , [1 2*qsi*wn wn^2])
end

