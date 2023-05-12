%MENUMNPVI  Menu de Métodos Numéricos para um PVI
%   y = MenuMNPVI(f,a,b,n,y0)
%   y'= f(t,y) com t=[a, b] e y(a)=y0 condição inicial  
%
%INPUT:
%   f - função do 2.º membro da Equação Diferencial
%   [a, b] - extremos do intervalo da variável independente t
%   n - número de subintervalos do método
%   y0 - condição (Valor) inicial do PVI
%OUTPUT: 
%   y - vector das soluções aproximações
%
%   10/04/2023 - Ricardo Duarte    : a2022137878@isec.pt
%   10/04/2023 - Rodrigo Gonçalves : a2022131122@isec.pt

function y=MenuMNPVI(f,a,b,n,y0)
y=[];
menuMNPVI = 1;
while menuMNPVI~=5
    clc
    disp('--------------------------------------------------')
    disp('           Métodos Numéricos para PVI             ')
    disp('--------------------------------------------------')
    menuMNPVI=menu('Métodos Numéricos para PVI', ...
                   'Método de Euler',... 
                   'Método de Euler Melhorado',...
                   'Método RK2',...
                   'Método RK4',...
                   'Todos',...
                   'Saír');
    switch menuMNPVI
        case 1
              y=NEuler(f,a,b,n,y0);
        case 2  
              y=NRK2(f,a,b,n,y0);                
        case 3
              y=NRK4(f,a,b,n,y0);           
        case 4
              y=MNumericosPVI(f,a,b,n,y0);                
    end
    disp('-----------Solução aproximada do PVI---------')
    disp(y)
    input('Prima numa tecla para continuar »')
end
            