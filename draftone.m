clear
BDfinalinit;
dimension = 2;
if(dimension == 1)
for p = 1:10
    if(p==1 || p==7)
        x = inputorder(8,1);
    elseif(p==2 || p==8)
        x = inputorder(7,1); 
    elseif(p==3 || p==9)
        x = inputorder(6,1);
    elseif(p==4 || p==10)
        x = inputorder(5,1);
    else
        x = inputorder(8-p+1,1);  
    end
    
    for j = 1:8
            if(j == x)
                inputvector(j) = 1;
            else
                inputvector(j) = 0;
            end
    end
    %draftcode
    
    BDfinal
    William(p) = playerselected;
        I = find (ESPNratingtemp(:,1) == playerselected);
        ESPNratingtemp(I,2) = 0;
    ESPNratingtemp = sortrows(ESPNratingtemp,2);

    computer1(p) = ESPNratingtemp(443,1);
    ESPNratingtemp(443,2) = 0;
    ESPNratingtemp = sortrows(ESPNratingtemp,2);
        for j=1:17
            NBAtemp(computer1(p),j)=0;
        end
        for j=1:8
            NBAranktemp(computer1(p),j)=0;
        end
        
    BDfinal
    Ken(p) = playerselected;
       I = find (ESPNratingtemp(:,1) == playerselected);
       ESPNratingtemp(I,2) = 0; 
    ESPNratingtemp = sortrows(ESPNratingtemp,2);
    
    computer2(p) = ESPNratingtemp(443,1);
    ESPNratingtemp(443,2) = 0;
    ESPNratingtemp = sortrows(ESPNratingtemp,2);
        for j=1:17
            NBAtemp(computer2(p),j)=0;
        end
        for j=1:8
            NBAranktemp(computer2(p),j)=0;
        end  
end

elseif(dimension == 2)
for p = 1:10
    if(p == 1 || p == 4 || p==7 || p==10)
        x = inputorder(8,1);
        y = inputorder(7,1);
    elseif(p == 2 || p == 5 || p == 8)
        x = inputorder(6,1);
        y = inputorder(5,1); 
    elseif(p == 3 || p == 6 || p==9)
        x = inputorder(4,1);
        y = inputorder(3,1);
    end

    for j = 1:8
            if(j == x || j == y)
                inputvector(j) = 1;
            else
                inputvector(j) = 0;
            end
    end
    %draftcode
    
    BDfinal
    William(p) = playerselected;
        I = find (ESPNratingtemp(:,1) == playerselected);
        ESPNratingtemp(I,2) = 0;
    ESPNratingtemp = sortrows(ESPNratingtemp,2);

    computer1(p) = ESPNratingtemp(443,1);
    ESPNratingtemp(443,2) = 0;
    ESPNratingtemp = sortrows(ESPNratingtemp,2);
        for j=1:17
            NBAtemp(computer1(p),j)=0;
        end
        for j=1:8
            NBAranktemp(computer1(p),j)=0;
        end
        
    BDfinal
    Ken(p) = playerselected;
       I = find (ESPNratingtemp(:,1) == playerselected);
       ESPNratingtemp(I,2) = 0; 
    ESPNratingtemp = sortrows(ESPNratingtemp,2);
    
    computer2(p) = ESPNratingtemp(443,1);
    ESPNratingtemp(443,2) = 0;
    ESPNratingtemp = sortrows(ESPNratingtemp,2);
        for j=1:17
            NBAtemp(computer2(p),j)=0;
        end
        for j=1:8
            NBAranktemp(computer2(p),j)=0;
        end  
end    
elseif(dimension == 3)
for p = 1:10
    if(p == 1 || p==3 || p==5 || p==7 || p==9)
        x = inputorder(8,1);
        y = inputorder(7,1);
        z = inputorder(6,1);
    elseif(p == 2 || p==4 || p==6 || p==8 || p==10)
        x = inputorder(5,1);
        y = inputorder(4,1);
        z = inputorder(3,1);   
    end

    for j = 1:8
            if(j == x || j == y || j==z)
                inputvector(j) = 1;
            else
                inputvector(j) = 0;
            end
    end
    %draftcode
    BDfinal
    William(p) = playerselected;
        I = find (ESPNratingtemp(:,1) == playerselected);
        ESPNratingtemp(I,2) = 0;
    ESPNratingtemp = sortrows(ESPNratingtemp,2);

    computer1(p) = ESPNratingtemp(443,1);
    ESPNratingtemp(443,2) = 0;
    ESPNratingtemp = sortrows(ESPNratingtemp,2);
        for j=1:17
            NBAtemp(computer1(p),j)=0;
        end
        for j=1:8
            NBAranktemp(computer1(p),j)=0;
        end
        
    BDfinal
    Ken(p) = playerselected;
       I = find (ESPNratingtemp(:,1) == playerselected);
       ESPNratingtemp(I,2) = 0; 
    ESPNratingtemp = sortrows(ESPNratingtemp,2);
    
    computer2(p) = ESPNratingtemp(443,1);
    ESPNratingtemp(443,2) = 0;
    ESPNratingtemp = sortrows(ESPNratingtemp,2);
        for j=1:17
            NBAtemp(computer2(p),j)=0;
        end
        for j=1:8
            NBAranktemp(computer2(p),j)=0;
        end  
end    
elseif(dimension == 4)
for p = 1:10
    if(p == 1 || p==4 || p==7 || p==10)
        x = inputorder(8,1);
        y = inputorder(7,1);
        z = inputorder(6,1);
        w = inputorder(5,1);
    elseif(p == 2 || p==5 || p==8)
        x = inputorder(4,1);
        y = inputorder(3,1);
        z = inputorder(8,1);
        w = inputorder(7,1);
    elseif(p == 3 || p==6 || p==9)
        x = inputorder(6,1);
        y = inputorder(5,1);
        z = inputorder(4,1);
        w = inputorder(3,1); 
    end
    
    for j = 1:8
            if(j == x || j == y || j==z || j==w)
                inputvector(j) = 1;
            else
                inputvector(j) = 0;
            end
    end
    %draftcode
    BDfinal
    William(p) = playerselected;
        I = find (ESPNratingtemp(:,1) == playerselected);
        ESPNratingtemp(I,2) = 0;
    ESPNratingtemp = sortrows(ESPNratingtemp,2);

    computer1(p) = ESPNratingtemp(443,1);
    ESPNratingtemp(443,2) = 0;
    ESPNratingtemp = sortrows(ESPNratingtemp,2);
        for j=1:17
            NBAtemp(computer1(p),j)=0;
        end
        for j=1:8
            NBAranktemp(computer1(p),j)=0;
        end
        
    BDfinal
    Ken(p) = playerselected;
       I = find (ESPNratingtemp(:,1) == playerselected);
       ESPNratingtemp(I,2) = 0; 
    ESPNratingtemp = sortrows(ESPNratingtemp,2);
    
    computer2(p) = ESPNratingtemp(443,1);
    ESPNratingtemp(443,2) = 0;
    ESPNratingtemp = sortrows(ESPNratingtemp,2);
        for j=1:17
            NBAtemp(computer2(p),j)=0;
        end
        for j=1:8
            NBAranktemp(computer2(p),j)=0;
        end  
end   
end

for i = 1:8
    Williamresult(i)=0;
    Kenresult(i)=0;
    computer1result(i)=0;
    computer2result(i)=0;
end

% calculate score : PTS REB AST STL BLK 3PM FT% FG%
for i = 1:8
    for j = 1:10
        Williamresult(i) = Williamresult(i) + NBAstat(William(j),i);
        Kenresult(i) = Kenresult(i) + NBAstat(Ken(j),i);
        computer1result(i) = computer1result(i) + NBAstat(computer1(j),i);
        computer2result(i) = computer2result(i) + NBAstat(computer2(j),i);
    end
end

for i = 1:8
    tempscore(1,:) = [1 Williamresult(i)];
    tempscore(2,:) = [2 Kenresult(i)];
    tempscore(3,:) = [3 computer1result(i)];
    tempscore(4,:) = [4 computer2result(i)];
    tempscore = sortrows(tempscore,2);
    for j = 1:4
        if(tempscore(j,1) == 1)
            Williamscore(i) = j;
        elseif(tempscore(j,1) == 2)
            Kenscore(i) = j;
        elseif(tempscore(j,1) == 3)
            computer1score(i) = j;
        elseif(tempscore(j,1) == 4)
            computer2score(i) = j;
        end
    end
end
Williamtotal = sum(Williamscore);
computer1total = sum(computer1score);
Kentotal = sum(Kenscore);
computer2total = sum(computer2score);
dimension
Gamer1 = Williamtotal
Computer1 = computer1total
Gamer2 = Kentotal
Computer2 = computer2total




