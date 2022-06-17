%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Mario Avila Cálculo tasas
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
trimestre = datetime(2007,06,30):calmonths(3):datetime(2017,12,31);
q = trimestre;
% Tasas de crecimiento Consumo
pctsconsumo=[];
for i = 1:44
    if i~=44 
    x = datard{i,2};
    y = datard{i+1,2};
    result = ((y-x)/x);
    pctsconsumo{i} = result;
    end
end
Pctsc=cell2mat(pctsconsumo)
figure(1)
plot (q, Pctsc.*100)

% Tasas de crecimiento gasto público
pctscpublico=[];
for i = 1:44
    if i~=44 
    x = datard{i,3};
    y = datard{i+1,3};
    result = ((y-x)/x);
    pctscpublico{i} = result;
    end
end
Pctscpub=cell2mat(pctscpublico)
figure(2)
plot (q, Pctscpub.*100)

% Tasas de crecimiento formación bruta de capital
pctsfbkap=[];
for i = 1:44
    if i~=44 
    x = datard{i,4};
    y = datard{i+1,4};
    result = ((y-x)/x);
    pctsfbkap{i} = result;
    end
end
Pctsfbk=cell2mat(pctsfbkap)
figure(3)
plot (q, Pctsfbk.*100)

% Tasas de crecimiento exportaciones
pctsexp=[];
for i = 1:44
    if i~=44 
    x = datard{i,5};
    y = datard{i+1,5};
    result = ((y-x)/x);
    pctsexp{i} = result;
    end
end
Pctsex=cell2mat(pctsexp)
figure(4)
plot (q, Pctsex.*100)

% Tasas de crecimiento importaciones
pctsimp=[];
for i = 1:44
    if i~=44 
    x = datard{i,6};
    y = datard{i+1,6};
    result = ((y-x)/x);
    pctsimp{i} = result;
    end
end
Pctsim=cell2mat(pctsimp)
figure(5)
plot (q, Pctsim.*100)

% Tasas de crecimiento tasa de cambio nominal
pctstcn=[];
for i = 1:44
    if i~=44 
    x = datard{i,7};
    y = datard{i+1,7};
    result = ((y-x)/x);
    pctstcn{i} = result;
    end
end
Pctstc=cell2mat(pctstcn)
figure(6)
plot (q, Pctstc.*100)

% Tasas de crecimiento ipc
pctsipcon=[];
for i = 1:44
    if i~=44 
    x = datard{i,8};
    y = datard{i+1,8};
    result = ((y-x)/x);
    pctsipcon{i} = result;
    end
end
Pctsipc=cell2mat(pctsipcon)
figure(7)
plot (q, Pctsipc.*100)

%Imp/Exp
figure(8)
plot(q, Pctsim.*100,"b", q, Pctsex.*100, "r")

%Gráficos finales
figure(9)
subplot(3,3,1)
plot (q, Pctsc.*100)
title("Consumo")
subplot(3,3,2)
plot (q, Pctscpub.*100)
title("Gasto Público")
subplot(3,3,3)
plot (q, Pctsfbk.*100)
title("Formación Bruta de Capital")
subplot(3,3,4)
plot (q, Pctsim.*100,"b", q, Pctsex.*100, "r")
title("Importaciones (azul) y Exportaciones (rojo)")
subplot(3,3,5)
plot (q, Pctstc.*100)
title("Tipo de cambio")
subplot(3,3,6)
plot (q, Pctsipc.*100)
title("IPC")
