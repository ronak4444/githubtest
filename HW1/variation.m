%==========================================================================
%                   VARIATION
%   Will perform Recombination and Mutation

% • Recombination: one-point crossover with probability Pc = 0.7
% • Mutation: bit-flip with probability Pm = 1/L
%==========================================================================


function children= variation(matingpool)

global      popsize;
global      length;

parent1=    zeros(1,length);
parent2=    zeros(1,length);


children=   zeros(2*popsize,length);

                                    
for i=0:2:popsize-2

    parent1=    matingpool(i+1,:);
    parent2=    matingpool(i+2,:);
 
    
    stage1=     xover(parent1,parent2);
        

    stage2=     mutation(stage1(1,:),stage1(2,:));
    
    
    children(i+1,:)=    stage2(1,:);
    children(i+2,:)=    stage2(2,:);
       
    i=i+2;           

end
end