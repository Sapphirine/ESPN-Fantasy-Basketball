%variance = var(NBAstat);
%inputvector = [1 1 0 0 0 0 0 0];
for i = 1:8
variancetemp(i) = variance(i)*inputvector(i);
end

%select player
rankresult = NBAranktemp(:,2:9)*inputvector';
M = max(rankresult);
list = find(rankresult==M);

if(length(list)==1)
    playerselected = list(1);

else
    [trash index] = max(variancetemp);   
    for i = 1:length(list)
        compare(i,1) = list(i);
        compare(i,2) = NBAranktemp(list(i), index+1);
    end

    MM = max(compare(:,2));
    listcomp = find(compare(:,2)==MM);
    
    for i = 1:length(listcomp)
        NBAsecondcomp(i,1) = compare(listcomp(i), 1);
        NBAsecondcomp(i,2) = NBAtemp(NBAsecondcomp(i,1), 2*index);
    end
    NBAsecondcomp = -1*NBAsecondcomp;
    NBAsecondcomp = sortrows(NBAsecondcomp,2);
    playerselected = -1*NBAsecondcomp(1,1);
end

%delete player
for i=1:17
    NBAtemp(playerselected,i)=0;
end
for i=1:8
    NBAranktemp(playerselected,i)=0;
end
