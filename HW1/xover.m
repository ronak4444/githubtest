%===================================================
%                       CROSSOVER

%• Recombination: one-point crossover with probability Pc = 0.7
%===================================================


function [child] = xover(parent1, parent2)

global      length;
                                                    
child = zeros(2,length);

r=rand();
pc= 0.7;
crosspoint= randi(length-1,1,1);
%===================================================
%            crossover process      
   j = 1;
                                    
   if r<= pc
       
       for   i =1:length           
        %---------------------------------------child1
            if      i <= crosspoint
                    child(j,i) = parent1(j,i);
                   
            else    
                    child(j,i) = parent2(j,i);
            end
                    
         %--------------------------------------child2
            if      i <= crosspoint
                    child(j+1,i) = parent2(j,i);
                   
            else    
                    child(j+1,i) = parent1(j,i);       
            end            
       end  
   else

%===================================================  
   child(1,:)= parent1;
   child(2,:)= parent2;
   end
   
end




