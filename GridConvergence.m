%% Grid Convergence 

% Setup a clear workspace
clc; clear; clf; clf reset; close all;

% Display all significant figures
format long

% Grid refinement ratio
r = 2;

% Functional values
f = [4.51005 4.52267 4.53392 4.5613];                     

% Estimate order of convergence using Roache, 1998
p = log( ( f(3) - f(2) ) / ( f(2) - f(1) ) )  /  log(r)

% Richardson's approximation for 'exact' value
fexact = f(1) + ( f(1) - f(2) ) / ( r^p - 1.0 )