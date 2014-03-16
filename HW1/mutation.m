%==========================================================================
%                       MUTATION CRITERIA

% Mutation: bit-flip with probability Pm = 1/L
%==========================================================================

function stage2=    mutation(xover1,xover2)


global length;

stage2(1,:)= xover1;
stage2(2,:)= xover2;

pm= 1/length;

end
              
             
        
