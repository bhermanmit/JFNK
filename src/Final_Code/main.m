% Bryan Herman
% 2.29 Numerical Fluid Mechanics Term Project
% Steady State couple physics
clear; close all; clear -global
path(path,'../../Steam')

% input file
jfnk_input

% choose execution option (1-Neutronics Static, 2-Coupled Static,
% 3-Transient)
opt = 2;

% turn on profiler
%profile on -timer cpu

% check for neutronics only
if opt == 1
    myfun = @neut_res_fun;
    x_neut = run_neut_only(myfun);   
end

% check for coupled static or transient
if (opt == 2 || opt == 3)
    myfun = @coupled_steady_res_fun;
    x_steady = run_coupled_static(myfun);
end

% check for control rod transient
if opt == 3
   myfun = @coupled_trans_res_fun;
   mycr = @control_rod;
   [x_trans,pow,tave,rod] = run_coupled_trans(myfun,mycr,x_steady);    
end

% terminate profiler
%profile viewer
%profile off
%profsave(profile('info'),'prof_results')