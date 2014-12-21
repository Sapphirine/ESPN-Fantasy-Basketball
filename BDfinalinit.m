load('NBAdata.txt');
NBAtemp = NBAdata;

for i = 1:443
    NBArank(i,1) = NBAtemp(i,1);
    for j = 1:8
        NBArank(i,j+1) = NBAtemp(i,2*j+1);
        NBAstat(i,j) = NBAtemp(i,2*j);
    end
    score = 1.4*NBAdata(i,6)+NBAdata(i,8)+1.4*NBAdata(i,10)+NBAdata(i,12)+NBAdata(i,14)+NBAdata(i,16);
    ESPNrating(i,:) = [i score];
end
NBAranktemp = NBArank;
ESPNrating = sortrows(ESPNrating,2);
variance = var(NBAstat);
for i = 1:8
    inputorder(i,:) = [i variance(i)];
end
inputorder = sortrows(inputorder,2);
ESPNratingtemp = ESPNrating;