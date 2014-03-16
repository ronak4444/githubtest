%==========================================================================
%                       PLOTING DATA FUNCTION
%It will calculate mean, max and minimum value for ploting.

%Problem statement: After every generation find the best, worst, and mean
%fitness in the population,
% and plot these on a graph with time as the x-axis.
%==========================================================================
function graph(pop)

global p;
global gencycle;

fitness = fit(pop);


p(gencycle,1)   =      max (fitness(:,1));

p(gencycle,2)   =      min (fitness(:,1));
p(gencycle,3)   =      mean(fitness(:,1));

end




