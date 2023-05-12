% Interface
% Problema de Valor Inicial (PVI)
% Métodos Numéricos Para Aprox. de Soluções de EDO's
% Atividade 3
%
% 10/04/2023 - Ricardo Duarte : a2022137878@isec.pt
% 10/04/2023 - Rodrigo Gonçalves : a2022131122@isec.pt
%% 

clear
primeiraVez=1;
menuPVI=1;
while menuPVI~=5 
    clc;
    disp('--------------------------------------------------------------')
    disp('            PROBLEMAS DE VALOR INICIAL (PVI)                  ')
    disp('------------------------------------------------------------- ')
    if (~primeiraVez)
    menuPVI=menu('Métodos Numéricos para PVI',...
                 'Dados do PVI',...
                 'Solução Exata',...
                 'Solução Aproximada',...
                 'Tabela e Gráficos de Resultados',...
                 'Saír');
    else
        primeiraVez=0;
        menuPVI=1;
    end
    y=[];
    switch menuPVI
        case 1
              strF=input('\n f(t,y) = ','s');
              f=@(t,y) eval(vectorize(strF));
              a=str2num(input('a = ','s'));
              b=str2num(input('b = ','s'));
              n=str2num(input('n = ','s'));
              y0=str2num(input('y0 = ','s'));
        case 2
              sExata=dsolve(['Dy=', strF],...
                            ['y(',num2str(a),')=',num2str(y0)]);
              g=@(t) eval(vectorize(char(sExata)));
              h=(b-a)/n;
              t=a:h:b;
              yExata=g(t);
              disp('--- Solução exata do PVI ---')
              disp(yExata)
        case 3
            y=MenuMNPVI(f,a,b,n,y0);
        case 4
            parteGrafica(strF, f, a, b, n, y0);
    end
    input('Prima numa tecla para continuar »')
end
    
