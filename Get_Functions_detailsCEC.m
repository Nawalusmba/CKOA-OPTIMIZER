%_________________________________________________________________________%
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
%%

% lb is the lower bound: lb=[lb_1,lb_2,...,lb_d]
% up is the uppper bound: ub=[ub_1,ub_2,...,ub_d]
% dim is the number of variables (dimension of the problem)

function [lb,ub,dim] = Get_Functions_detailsCEC(F)
dim=20;
switch F
    case 1
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        
    case 2
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        
    case 3
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        
    case 4
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        
    case 5
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        
    case 6
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);

    case 7
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
 
    case 8
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
  
    case 9
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        
    case 10
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        
    case 11
        lb=-600*ones(1,dim);
        ub=600*ones(1,dim);
        
    case 12
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        
    case 13
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        
    case 14
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        
    case 15
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        
    case 16
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        
    case 17
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        
    case 18
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        
    case 19
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);     
        
    case 20
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);          
        
    case 21
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);       
        
    case 22
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);          
        
    case 23
        %dim=10;
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
                
  case 24
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);  
        
   case 25
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        
   case 26
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        
   case 27
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        
   case 28
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        
   case 29
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        
   case 30
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
 
 end
end
