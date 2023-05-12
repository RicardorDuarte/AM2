% PARTEGRAFICA Apresenta o gráfico do método requirido pelo user
%
% INPUT: 
%   strF - Função em x e y como string
%   f - Função em x e y
%   a - Limite Esquerdo do Intervalo
%   b - Limite Direito do Intervalo
%   n - Número de Sub-Divisões
%   y0 - Valor Inicial do PVI
%
%OUTPUT.
% Não tem
%  
% 10/04/2023 - Rodrigo Gonçalves : a2022131122@isec.pt
% 10/04/2023 - Ricardo Duarte    : a2022137878@isec.pt
%%



function parteGrafica(strF, f, a, b, n, y0)

menuMNPVI = {'Método de Euler',...
            'Método de EUler Melhorado',...
            'Metodo de Runge-Kutta (ordem 2)',...
            'Metodo de Runge-Kutta (ordem 4)',...
            'Usando ODE45',...
            'Usando Todos os Anteriores'};

Lista = listdlg('ListString',menuMNPVI,'ListSize',[400 120],'Name',...
    'Tabela e Gráficos de Resultados','PromptString',...
    'Escolha um ou Todos os Métodos...','OKString','Continuar',...
    'CancelString','Voltar');
if isempty(Lista) %failsafe para evitar problemas
    return
end


[header, tabela] = FazTabela(Lista, strF, f, a, b, n, y0);
tamanho = length(Lista);

fprintf('------------------------Tabela------------------------');
disp(header);            % cabeçalho
disp(tabela);            % tabela

h = (b-a)/n;             % calcula h
grid on                  % mostra a grelha
t = a:h:b;               % alocação de espaço de memória
plot(t,tabela(:,2),'DisplayName','Sol.Exata');
hold on

i = 5;

for x = 1:tamanho
    index = Lista(x);
    switch index
        case 1 %               Método de Euler
            plot(t,tabela(:,i),'--bo','DisplayName','Euler')

        case 2 %               Método de Euler Melhorado
            plot(t,tabela(:,i),'--r+','DisplayName','EulerM')

        case 3 %               Método de Runge-Kutta orcem 2
             plot(t,tabela(:,i),'--g*','DisplayName','RK2')

        case 4 %               Método de Runge-Kutta ordem 4
             plot(t,tabela(:,i),'--m^','DisplayName','RK4')

        case 5 %               método extra
            

        otherwise 
            errordlg('Desconhecido','ERRO','modal');
    end
    i=i+1;
end

title('Gráfico da Solução do PVI')              %Título
legend show                                     %Mostra Legenda
grid on                                         %Mostra Grelha
hold off                                        
shg;                                            %Mostra o Gráfico










