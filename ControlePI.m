function [Kp, Ki] = ControlePI(planta, canonical)
    controlp1 = tf(canonical.Denominator{1}, [planta.Numerator{1} 0])
    controlp2 = tf(planta.Denominator{1}, [planta.Numerator{1}])
    controle = simplify(controlp1 -controlp2)
    [num,den] = tfdata(controle)
    coeficienteSimple = den{1}(1)
    numerador = num{1} / coeficienteSimple
    denominador = den{1} / coeficienteSimple
    controle = tf(numerador, denominador)
    Kp = num{1}(1)/ den{1}(1)
    Ki = num{1}(2)/den{1}(1)
end
