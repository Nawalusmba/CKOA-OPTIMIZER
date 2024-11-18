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
%               Kepler optimization algorithm: A new metaheuristic algorithm inspired by Kepler’s laws of planetary motion                         %
%               Knowledge-Based Systems
%               DOI: doi.org/10.1016/j.knosys.2023.110454                 %
%                                                                         %
%_________________________________________________________________________%

% This function initialize the first population of search agents using
% Chebyshev map
function Positions=initialization_CHAOS1(SearchAgents_no,dim,ub,lb)
    for i=1:dim
        ub_i=ub(i);
        lb_i=lb(i);
        Positions(:,i)=(abs(chaos1(1,rand,SearchAgents_no-1)))'.*(ub_i-lb_i)+lb_i;      
    end
end