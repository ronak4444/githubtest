%==========================================================================
%                   PROBLEM STATEMENT

% 7. Write a computer program to implement a generational GA for the 
% One- Max problem f(x) Xi (see Appendix B) with the following parameters:
% 
% • Representation: binary strings of length L = 25
% • Initialisation: random
% • Parent selection: fitness proportionate, implemented via roulette wheel
% or SUS.
% 
% • Recombination: one-point crossover with probability Pc = 0.7
% • Mutation: bit-flip with probability Pm = 1/L
% • Replacement: strict generational (no elitism)
% • Population size = 100
% • Termination criterion: 100 generations or optimum found (whichever quickest)
% 
% After every generation find the best, worst, and mean fitness in the population,
% and plot these on a graph with time as the x-axis. Now do ten runs and
% find the mean and standard deviation of the time taken to find the optimum.
%==========================================================================

clc
clear all

global      gencycle;
global      p;
global      popsize;
global      length;

popsize=    100
length=     25

rng(1234)
pop=        round(rand(popsize, length));

totalgen=   100;
x=          1:totalgen;
t1=         0;

for gencycle=   1:totalgen
    
    graph       (pop)
    
    matingpool= parentselect(pop);

    children=   variation(matingpool);
    
    pop=        children;
    
                               
end
    
    plot(x,p(x,1), 'kx') 
    hold all
         
    plot(x,p(x,2), 'ro')
    hold all
    
    plot(x,p(x,3), 'b+')
    hold all


    