%% plot organs locations

    figure (1);
    imshow('inputs\3.JPG');
 %   imshow('inputs\4.gif');
%ex.1 title('points to heart, lungs, liver, stomach, kedneys, colon');
%    x=[235, 253, 327, 416, 366, 354];
%    y=[57, 153, 274, 263, 197, 224];
 x = [192, 239, 137, 234, 253, 232];
 y = [220, 180, 282, 287, 363, 414];
    %%
  %{ 
    title('point to heart');
    [heart_x,heart_y]=ginput(1);
    text(192, 220, 'heart');
    
    title('point to lung');
    [lung_x,lung_y]=ginput(1);
    text(239, 180, 'lung');
    
    title('point to liver');
    [liver_x,liver_y]=ginput(1);
    text(137, 282, 'liver');
   
    title('point to stomach');
    [stomach_x,stomach_y]=ginput(1);
    text(234, 287, 'stomach');
    
    title('point to kedney');
    [kedney_x,kedney_y]=ginput(1);
    text(253, 363, 'kedney');
   
     title('point to colon');
    [colon_x,colon_y]=ginput(1);
    text(232, 414, 'colon');
    %}

    %% count organ mentions 
    organs = {'heart', 'lung', 'liver', 'stomach', 'kedney', 'colon'};
    %%
    organs = {'tarchea', 'bronchi', 'lobes', 'pleura', 'bronchus', 'bronchioles'};
    %%
    fileID=fopen('statistics.txt');
    stats = textscan(fileID,'%s %f %f %f', 'Delimiter',',', 'EmptyValue', -Inf);
    fclose(fileID);
    titles = {'Organs Mentioned', 'Number of Mentions Per Organ', 'Dinsity of Mentions'};
    for j = 1 : 3
        figure(j);
            imshow('inputs\3.JPG');
%imshow('inputs\4.gif');
        title(titles(j));
        if(j>1)
            stat=num2cell(stats{j});
            if(j==3)
                stat=num2cell(stats{j-1}./stats{j+1});
            end
        end
        for i = 1 : 6
            if(j>1)
               text(x(i), y(i), stat(i)); 
            else
                text(x(i),y(i), stats{j}(i));
            end
        end
    end
    
%%  
figure(5);
load inputs\data.dat
[n,p]=size(data);
t=1:n;
plot(t,data);
legend(organs{1},organs{2}, organs{3}, organs{4}, organs{5}, organs{6});
xlabel='mentions';
ylabel='book lines';
title('organs mentions across the book');

    
    
    
    
    
    
    
    
    
    
    %% plot results in the correct places



