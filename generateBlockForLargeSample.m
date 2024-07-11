function generateBlockForSmallSample(frameSequence,i)
%Load data 
data = uint8(255 * mat2gray(frameSequence));
number = i;
data = imresize(data, [224 224]);

%Frame count
totalBlock = 10;
startFrame = 1;
endFrame = 10;
totalFrame = size(data, 3);

%Create empty block
for x=1:10
  eval(sprintf('Block_%d = zeros(224, 224, 10, ''uint8'');',x));
end

%Create folder
folderName = sprintf('%d', number);
mkdir(folderName);

%Process for first 9 block
for a=1:9
  %Store Block
  eval(sprintf('Block_%d=  data(:,:,startFrame:endFrame);', a));
 
       
  %Update Count
  startFrame=startFrame+10;
  endFrame=endFrame+10;
  if endFrame > totalFrame
    endFrame=totalFrame;
  end
end


%Process for the last block-10 
lastFrameCount = totalFrame - startFrame;
Block_10 = zeros(224, 224, lastFrameCount);
Block_10 = data(:,:,startFrame:totalFrame);

%Generate Block MHI
for x=1:10
  %Pass Block to generate MHI
  eval(sprintf('block = Block_%d;', x));
  blockSize=size(block,3);
  blockName = sprintf('Block_%d.jpg',x);
  generateMHI(block, blockName, blockSize, folderName);
end