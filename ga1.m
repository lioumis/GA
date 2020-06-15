function [x,fval,exitflag,output,population,score] = ga1(nvars,lb,ub,intcon,PopulationSize_Data,CrossoverFraction_Data)
%% This is an auto generated MATLAB file from Optimization Tool.

%% Start with the default options
options = optimoptions('ga');
%% Modify options setting
options = optimoptions(options,'PopulationSize', PopulationSize_Data);
options = optimoptions(options,'CrossoverFraction', CrossoverFraction_Data);
options = optimoptions(options,'CreationFcn', @gacreationuniform);
options = optimoptions(options,'FitnessScalingFcn', @fitscalingprop);
options = optimoptions(options,'Display', 'off');
[x,fval,exitflag,output,population,score] = ...
ga(@fitFunc,nvars,[],[],[],[],lb,ub,[],intcon,options);
