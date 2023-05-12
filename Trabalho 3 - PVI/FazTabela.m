% Faz a tabela de métodos Pretendidos
% 
% Atividade 3
%INPUT 
% EscolhaU - escolha do User
% strf     - função f em formato string
% a        - Limite Esquerdo do Intervalo
% b        - Limite Direito do Intervalo
% n        - Número de Sub-Divisões
% y0       - Valor Inicial
%
%OUTPUT
% Não tem
%
% 10/04/2023 - Ricardo Duarte : a2022137878@isec.pt
% 10/04/2023 - Rodrigo Gonçalves : a2022131122@isec.pt
%%


function [header, tabela] = FazTabela(Lista, strF, f, a, b, n, y0)

i = 5;

tamanho = length(Lista);

tabela = zeros(n+1, tamanho*2 + 2);           %matriz de zeros

try
    header = strings(1,tamanho*2 + 2);        %vetor vazio
catch  estaraALerIsto
    disp('Não é possível fazer a alocação do header')
end
h = (b-a)/n;                      %Calcula h
t = a:h:b;                        %Alocação
header{1} = 'z';                  %z na posição 1
tabela(:,1) = t';

sExata = dsolve(['Dy=', strF], ['y(',num2str(a),')=',num2str(y0)]);
g = @(t) eval(vectorize(char(sExata)));
y = g(t);
header{2} = 'Exata';
tabela(:,2) = y';

for x = 1:tamanho
    index = Lista(x);
    switch index
        case 1
            y = NEuler(f, a, b, n, y0);
            header{i} = 'Euler';
            tabela(:,i) = y';
        case 1
            y = NEuler(f, a, b, n, y0);
            header{i} = 'EulerM';
            tabela(:,i) = y';
        case 1
            y = NEuler(f, a, b, n, y0);
            header{i} = 'RK2';
            tabela(:,i) = y';
        case 1
            y = NEuler(f, a, b, n, y0);
            header{i} = 'RK4';
            tabela(:,i) = y';
        case 1
            y = NEuler(f, a, b, n, y0);
            header{i} = 'ODE45';
            tabela(:,i) = y';



        




