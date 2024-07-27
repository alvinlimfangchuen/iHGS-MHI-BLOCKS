clc; clear;

%Load Database
path = 'SAMPLE_DATASET';
addpath(path);
folder = path;
fileList = dir(fullfile(folder, '*.mat'));
fileName = {fileList.name};

for i=1:size(fileList)
    
    %Load frame sequences
    getFilename = string(fileName(i));
    load(getFilename);
    frameSequence = sign_depth_palmfilter;
    totalFrame = size(frameSequence, 3);
    fprintf("Processing %s FramesCount:%d \n", getFilename, totalFrame);
    
    %Generate block
    if totalFrame < 100
        generateBlockForSmallSample(frameSequence, i);
    else
        generateBlockForLargeSample(frameSequence, i);
    end
    
end
