%==========================================================================
%                   PARENT SELECTION CRITERIA

% One- Max problem
% Parent selection: fitness proportionate, implemented 
% via roulette whee or SUS.


%==========================================================================

function matingpool= parentselect(pop)  
                                                
global      popsize;
global      length;

fitness= fit(pop);
%-------------------------------------------- creates fitness proportinate table

 total=  sum (fitness,1); 
 for a=  1:popsize 
     probb(a,1)= fitness(a, 1);              %fitness
     probb(a,2)= fitness(a, 1)/total;        %probability of selection              
     probb(a,3)= popsize * probb(a,2);       %Expected count
     probb(a,4)= round(probb(a,3));          %Actual Count
 end 
 totalprobb= sum(probb(:,2)); 
 
%--------------------------------------------


%-------------------------------------------- cummunlative propability
cumprobb = zeros(popsize,1);
x=         zeros(popsize,1);

for x=1:popsize
    if x==1
        cumprobb(1,1)= probb(1,2);
    else
    cumprobb(x,1)= cumprobb(x-1,1) + probb(x,2);
    end
end
cumprobb;
%--------------------------------------------


%============================================ SUS
%       STOCHASTIC UNIVERSAL SAMPLING

r=              (1/popsize)*rand();
k=              1;
currentparent=  1;
selectedpop=    zeros(popsize, length);

tic
while   currentparent<= popsize
        
     while   r <= cumprobb(k,1)                          %probb(:,2) is selection probability
    
        for j=1:length
            selectedpop(currentparent,j)= pop(k,j);        
        end
                         
        currentparent= currentparent +1;
        r= r+ (1/popsize);
        
     end
     k=k+1;
     
end

matingpool=selectedpop;

%============================================

matingpool= selectedpop(randperm(size(selectedpop,1)),:);  %shuffling rows                                                        toc
                                                        
end