%==========================================================================
%                   FITNESS FUNCTION
%
% This function will calculate the number of one's in each candidate.
%==========================================================================

function   fitness= fit(pop)


global      popsize;
global      length;


%-------------------------------------------bit counter

fitness=    zeros(popsize,1);

for     i=  1:popsize
        t= 0;
    for j=  1:length
        
        if  pop(i,j)==  1
            t=t+1;
        else
           
        end
    end
    fitness(i,1)= t;
end



