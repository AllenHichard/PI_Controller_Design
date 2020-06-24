clear;
%Análise Tradicional
mp = 0.1;
ts = 30;
R = 20
C = 2
[qsi, wn, canonical] = Canonica(mp, ts)
planta = tf([1/(R*C)] , [1 1/(R*C)])
[Kp, Ki] = ControlePI(planta, canonical)

%Análise Intervalar
tsi = [20,30];
mpi = [0.04, 0.1];
R = [18, 22];
C = [1.8, 2.2];
P2 = 1/(R(1)*C(1))
P1 = 1/(R(2)*C(2))

[qsi1, wn1, canonical1] = Canonica(mpi(1), tsi(1))
[qsi2, wn2, canonical2] = Canonica(mpi(2), tsi(2))

planta = tf([P2] , [1 P2])
[Kp1, Ki1] = ControlePI(planta, canonical1)

planta = tf([P1] , [1 P1])
[Kp2, Ki2] = ControlePI(planta, canonical2)

Grafico(Kp1, Kp2, Ki1, Ki2, P2, P1)