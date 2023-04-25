%% CFD Cell Height Calculator
% Author: Durairaj Shyam (SID: 490393196)

% Setup a clear workspace
clc; clear; clf; clf reset; close all; tic

%% Input conditions

% Desired y+
yplus = 50;

% Free-stream velocity [m/s]
U = 7.4;

% Density [kg/m^3]
rho = 1.215443505;

% Dynamic viscosity [kg/ms]
mu = 1.79e-05;

% Kinematic viscosity [m^2/s]
nu = mu/rho;

% Characteristic length [m]
l = 4;

%% Calculator

% Reynolds number
Re = U*l/nu

% Boundary layer edge velocity [m/s]
Ue = 0.99*U;

% Skin friction empirical eqn.
Cf = 2*0.037*Re^(-1/5);             % For flat plate
%Cf = 2*0.039*Re^(-1/4);             % For duct

% Shear/Friction velocity [m/s]
Utau = Ue*sqrt(Cf/2);

% y-position for CENTROID of first cell [m]
yp = yplus*nu/Utau;

% Minimum cell height for first layer of cells closest to wall [m]
y = 2*yp

%% End script
toc
