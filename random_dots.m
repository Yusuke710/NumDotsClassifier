% generate images with 0-100 random dots

clear all; close all; clc;
for j = 0:99;
for i = 91:100; %change the number of dots 
    
    numPoints = i;

    % make the figure full screen
    FigH = figure('Position', get(0, 'Screensize'), 'visible','off'); %remove 'visible','off'if you would like to display the figure
    % generate dots
    x = rand(1, numPoints);
    y = rand(1, numPoints);
    sz =25; %MarkerSize
    % plot white dots
    plot(x, y, 'k.','MarkerSize',sz);
    
   % make plot background black
    set(gca,'Color','w')
    % remove axis in plot
    set(gca,'XColor','none','YColor','none','TickDir','out') 
    % make background black
    set(gcf,'color','w')
    
    % save images
        % name of the file
        word1 = '91-100(';
        word2 = num2str(j);
        word3 = ')(';
        word4 = num2str(i);
        word5 = ').jpg';
        str = strcat(word1, word2, word3, word4, word5);
        % specify the directory to save images
        imagepath = '/home/yusuke/Desktop/mini-project/CNN image recognition/dataset/91-100';

        baseFileName = sprintf(str);
        fullFileName = fullfile(imagepath, baseFileName);  
    F = getframe(FigH);
    imwrite(F.cdata,  fullFileName)
    
end;
end;