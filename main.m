clc; clear;

%Load Database
path = 'SAMPLE_DATASET';
addpath(path);
folder = path;
fileList = dir(fullfile(folder, '*.mat'));
fileName = {fileList.name};

%This Custom Algorithm Consit of 4 File
% main.mat is the main program file responsible for loading and pass dataset
% generateBlockForLargeSample.mat
% generateBlockForSmallSample.mat
% generateMHI
