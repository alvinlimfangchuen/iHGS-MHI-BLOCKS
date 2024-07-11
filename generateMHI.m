function generate_MHI = generateMHI(data,blockName,blockSize,folderName)
    MHI = data;
    bname  = blockName;
    bsize = blockSize;
    fname = folderName;
   
    
    % Define MHI parameter T
    T = size(data,3)+20; % # of frames being considered; maximal value of MHI

    % Load the first frame
    frame1 = data(:,:,1);

    % Get the dimensions of the frames
    [y_max, x_max] = size(frame1);

    % Compute H(x,y,1,T) (the first MHI)
    fst = MHI(:,:,1);
    fst(fst>0) = T;
    MHI(:,:,1) = fst;

    % start global loop for each frame
    for frameIndex = 2 :  size(data,3)
        

        % Load current frame from image array
        frame = data(:,:,frameIndex);
        frame_pre = MHI(:,:,frameIndex-1);


        MHI(:,:,frameIndex) = frame_pre - 1; 

        % Set of all non-zero value to T
        frame(frame > 0) = T;

        [y,x] = find(frame > 1);                

        for i = 1 : size(y,1)                    
            MHI(y(i,:), x(i,:), frameIndex) = frame(y(i,:), x(i,:));
        end
    end
    
    %Save MHI as image
    blockMHI =  MHI(:,:,blockSize);
    imwrite(blockMHI,bname);
    movefile(bname,fname,'f');
    
       
       
    
end

