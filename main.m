%___________________________________________________________________________%
%  CHAOS Kepler optimization algorithm (CKOA) source codes               %
%                                                                         %
%  Developed in MATLAB R2021a                                    %
%                                                                         %
%  Author and programmer: Nawal EL GHOUATE (E-mail: nawal.elghouate@usmba.ac.ma)         %
%                                                                         %
%   Main paper: El Ghouate, N., Bencherqui, A. et al. 
%               TITLE:   Improving the Kepler optimization algorithm with chaotic maps: comprehensive performance evaluation and engineering applications. 
%                       Artif Intell Rev 57, 313 (2024). 
%               DOI:    https://doi.org/10.1007/s10462-024-10857-5
                                                                        %
%_________________________________________________________________________%
%_______________________________________________________________________%
%  Kepler optimization algorithm (KOA) source codes demo 1.0               %
%                                                                         %
%  Developed in MATLAB R2019a                                    %
%                                                                         %
%  Author and programmer: Reda Mohamed (E-mail: redamoh@zu.edu.eg) & Mohamed Abdel-Basset (E-mail: mohamedbasset@ieee.org)                              %
%                                                                         %
%   Main paper: Abdel-Basset, M., Mohamed, R.                                    %
%               Kepler optimization algorithm: A new metaheuristic algorithm inspired by Kepler�s laws of planetary motion                         %
%               Knowledge-Based Systems
%               DOI: doi.org/10.1016/j.knosys.2023.110454                 %
%                                                                         %
%_________________________________________________________________________%
%%
clear all
clc
N=25; % Number of search agents (Planets)
Tmax=5000; % Maximum number of Function evaluations
RUN_NO=30; %% Number of independent runs
Fun_id=[1,2,3,4,5,6,7,8,9,10,11,12];

fhd=str2func('cec20_func'); %%Default Benchmark
cec=3;
if cec==3 %% CEC-2020
    fhd=str2func('cec20_func');
    benchmarksType='cec20_func';
elseif cec==4 %% CEC-2022
    fhd=str2func('cec22_func');
    benchmarksType='cec22_func';
end

for i=1:30
 for j=1:RUN_NO
  if cec==3 && i>10
       return
  elseif cec==4 && i>12
       return
  end
  [lb,ub,dim]=Get_Functions_detailsCEC(Fun_id(i));
  fobj=Fun_id(i);
  [Best_score,Best_pos,Convergence_curve]=KOA(N,Tmax,ub,lb,dim,fobj,fhd);
  [Best_score_c1,Best_pos_c1,Convergence_curve_c1]=KOA_CHAOS1(N,Tmax,ub,lb,dim,fobj,fhd);
  
  %Best_score_c=Best_score;
  %Best_pos_c=Best_pos;
  %Convergence_curve_c=Convergence_curve;
  
  fitness(1,j)=Best_score;
  fitness_c1(1,j)=Best_score_c1;
end
fprintf(['benchmark   \t',num2str(cec),'\t','Function_ID\t',num2str(i),'\tAverage Fitness:',num2str(mean(fitness(1,:)),20),'\tAverage Fitness_chaos:',num2str(mean(fitness_c1(1,:)),20),'\n']);
%% Drawing Convergence Curve %%
figure(i)
h=semilogy(Convergence_curve,'.-','MarkerSize',20,'Color','red','LineWidth',1);
h.MarkerIndices = 1000:4000:Tmax;

hold on;
semilogy(Convergence_curve_c1,'.-','MarkerSize',20,'Color','green','LineWidth',1);


legend('KOA','ChaosKOA','location','northeast','FontName','Times New Roman','FontSize',12);
xlabel('Iteration');
ylabel('Best Fitness obtained so-far');
axis tight
grid off
box on

end