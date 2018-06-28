%clear all
clc
close all

%General information
pressureportnumber = 1:15;
pressureportFrontDistance = [65 52 38.7 27 16.7 9.4 5.2 1 0.9 3.6 10.9 22 32.6 43.8 57.7];
chordLength = 154;
relativePortLocation = pressureportFrontDistance./chordLength;

%AOA, Straingauge Force, wind speed matrix:
AOA_force_speed = [];
AOA_force_speed_std = [];


%V=10m/s
data = importdata('day1test/CarWing_V10_A00.lvm');
meanPressureReadingsV10 = mean(data(:,1:15));
standardDeviationV10 = std(data(:,1:15));
C_pV10 = meanPressureReadingsV10./(0.5*1.225*mean(data(:,69))^2);
AOA_force_speed = [AOA_force_speed; mean(data(:,[65:66, 69]))];
AOA_force_speed_std = [AOA_force_speed_std; std(data(:,[65:66, 69]))];

%V=20m/s
data = importdata('day1test/CarWing_V20_A00.lvm');
meanPressureReadingsV20 = mean(data(:,1:15));
standardDeviationV20 = std(data(:,1:15));
C_pV20 = meanPressureReadingsV20./(0.5*1.225*mean(data(:,69))^2);
AOA_force_speed = [AOA_force_speed; mean(data(:,[65:66, 69]))];
AOA_force_speed_std = [AOA_force_speed_std; std(data(:,[65:66, 69]))];

    %AOA = -4
    data = importdata('day2test/CarWing_V20_A04m.lvm');
    meanPressureReadingsV20_A04m = mean(data(:,1:15));
    standardDeviationV20_A04m = std(data(:,1:15));
    C_pV20A04m = meanPressureReadingsV20_A04m./(0.5*1.225*mean(data(:,69))^2);
    AOA_force_speed = [AOA_force_speed; mean(data(:,[65:66, 69]))];
    AOA_force_speed_std = [AOA_force_speed_std; std(data(:,[65:66, 69]))];

    %AOA = -7
    data = importdata('day2test/CarWing_V20_A07m.lvm');
    meanPressureReadingsV20_A07m = mean(data(:,1:15));
    standardDeviationV20_A07m = std(data(:,1:15));
    C_pV20A07m = meanPressureReadingsV20_A07m./(0.5*1.225*mean(data(:,69))^2);
    AOA_force_speed = [AOA_force_speed; mean(data(:,[65:66, 69]))];
    AOA_force_speed_std = [AOA_force_speed_std; std(data(:,[65:66, 69]))];

    %AOA = -10
    data = importdata('day2test/CarWing_V20_A10m.lvm');
    meanPressureReadingsV20_A10m = mean(data(:,1:15));
    standardDeviationV20_A10m = std(data(:,1:15));
    C_pV20A10m = meanPressureReadingsV20_A10m./(0.5*1.225*mean(data(:,69))^2);
    AOA_force_speed = [AOA_force_speed; mean(data(:,[65:66, 69]))];
    AOA_force_speed_std = [AOA_force_speed_std; std(data(:,[65:66, 69]))];

    %AOA = +4
    data = importdata('day2test/CarWing_V20_A04p.lvm');
    meanPressureReadingsV20_A04p = mean(data(:,1:15));
    standardDeviationV20_A04p = std(data(:,1:15));
    C_pV20A04p = meanPressureReadingsV20_A04p./(0.5*1.225*mean(data(:,69))^2);
    AOA_force_speed = [AOA_force_speed; mean(data(:,[65:66, 69]))];
    AOA_force_speed_std = [AOA_force_speed_std; std(data(:,[65:66, 69]))];

    %AOA = +7
    data = importdata('day2test/CarWing_V20_A07p.lvm');
    meanPressureReadingsV20_A07p = mean(data(:,1:15));
    standardDeviationV20_A07p = std(data(:,1:15));
    C_pV20A07p = meanPressureReadingsV20_A07p./(0.5*1.225*mean(data(:,69))^2);
    AOA_force_speed = [AOA_force_speed; mean(data(:,[65:66, 69]))];
    AOA_force_speed_std = [AOA_force_speed_std; std(data(:,[65:66, 69]))];

    %AOA = +10
    data = importdata('day2test/CarWing_V20_A10p.lvm');
    meanPressureReadingsV20_A10p = mean(data(:,1:15));
    standardDeviationV20_A10p = std(data(:,1:15));
    C_pV20A10p = meanPressureReadingsV20_A10p./(0.5*1.225*mean(data(:,69))^2);
    AOA_force_speed = [AOA_force_speed; mean(data(:,[65:66, 69]))];
    AOA_force_speed_std = [AOA_force_speed_std; std(data(:,[65:66, 69]))];

%V=30m/s
data = importdata('day1test/CarWing_V30_A00.lvm');
meanPressureReadingsV30 = mean(data(:,1:15));
standardDeviationV30 = std(data(:,1:15));
C_pV30 = meanPressureReadingsV30./(0.5*1.225*mean(data(:,69))^2);
AOA_force_speed = [AOA_force_speed; mean(data(:,[65:66, 69]))];
AOA_force_speed_std = [AOA_force_speed_std; std(data(:,[65:66, 69]))];

%V=40m/s
data = importdata('day1test/CarWing_V40_A00.lvm');
meanPressureReadingsV40 = mean(data(:,1:15));
standardDeviationV40 = std(data(:,1:15));
C_pV40 = meanPressureReadingsV40./(0.5*1.225*mean(data(:,69))^2);
AOA_force_speed = [AOA_force_speed; mean(data(:,[65:66, 69]))];
AOA_force_speed_std = [AOA_force_speed_std; std(data(:,[65:66, 69]))];

    %AOA = -4
    data = importdata('day2test/CarWing_V40_A04m.lvm');
    meanPressureReadingsV40_A04m = mean(data(:,1:15));
    standardDeviationV40_A04m = std(data(:,1:15));
    AOA_force_speed = [AOA_force_speed; mean(data(:,[65:66, 69]))];
    AOA_force_speed_std = [AOA_force_speed_std; std(data(:,[65:66, 69]))];

    %AOA = -7
    data = importdata('day2test/CarWing_V40_A07m.lvm');
    meanPressureReadingsV40_A07m = mean(data(:,1:15));
    standardDeviationV40_A07m = std(data(:,1:15));
    AOA_force_speed = [AOA_force_speed; mean(data(:,[65:66, 69]))];
    AOA_force_speed_std = [AOA_force_speed_std; std(data(:,[65:66, 69]))];

    %AOA = -10
    data = importdata('day2test/CarWing_V40_A10m.lvm');
    meanPressureReadingsV40_A10m = mean(data(:,1:15));
    standardDeviationV40_A10m = std(data(:,1:15));
    AOA_force_speed = [AOA_force_speed; mean(data(:,[65:66, 69]))];
    AOA_force_speed_std = [AOA_force_speed_std; std(data(:,[65:66, 69]))];

    %AOA = +4
    data = importdata('day2test/CarWing_V40_A04p.lvm');
    meanPressureReadingsV40_A04p = mean(data(:,1:15));
    standardDeviationV40_A04p = std(data(:,1:15));
    AOA_force_speed = [AOA_force_speed; mean(data(:,[65:66, 69]))];
    AOA_force_speed_std = [AOA_force_speed_std; std(data(:,[65:66, 69]))];

    %AOA = +7
    data = importdata('day2test/CarWing_V40_A07p.lvm');
    meanPressureReadingsV40_A07p = mean(data(:,1:15));
    standardDeviationV40_A07p = std(data(:,1:15));
    AOA_force_speed = [AOA_force_speed; mean(data(:,[65:66, 69]))];
    AOA_force_speed_std = [AOA_force_speed_std; std(data(:,[65:66, 69]))];

    %AOA = +10
    data = importdata('day2test/CarWing_V40_A10p.lvm');
    meanPressureReadingsV40_A10p = mean(data(:,1:15));
    standardDeviationV40_A10p = std(data(:,1:15));
    AOA_force_speed = [AOA_force_speed; mean(data(:,[65:66, 69]))];
    AOA_force_speed_std = [AOA_force_speed_std; std(data(:,[65:66, 69]))];

%V=50m/s
data = importdata('day2test/CarWing_V50_A00p.lvm');
meanPressureReadingsV50 = mean(data(:,1:15));
standardDeviationV50 = std(data(:,1:15));
C_pV50 = meanPressureReadingsV50./(0.5*1.225*mean(data(:,69))^2);
AOA_force_speed = [AOA_force_speed; mean(data(:,[65:66, 69]))];
AOA_force_speed_std = [AOA_force_speed_std; std(data(:,[65:66, 69]))];

%V=60m/s
data = importdata('day2test/CarWing_V60_A00p.lvm');
meanPressureReadingsV60 = mean(data(:,1:15));
standardDeviationV60 = std(data(:,1:15));

pdynV60 = mean(data(:,68));
stdpdynV60 = std(data(:,68));

C_pV60 = meanPressureReadingsV60./(0.5*1.225*mean(data(:,69))^2);
AOA_force_speed = [AOA_force_speed; mean(data(:,[65:66, 69]))];
AOA_force_speed_std = [AOA_force_speed_std; std(data(:,[65:66, 69]))];

%Cleaning AOA force speed data
AOA_force_speed = [round(AOA_force_speed(:,1)) round(AOA_force_speed(:,2),1) round(AOA_force_speed(:,3),2)];


%V10 A0
figure(1)
plot(relativePortLocation,C_pV10,'bo');
xlabel('Distance from leading edge / Chord Length')
ylabel('Normalized Surface Pressure C_{p}')
title('Mean of pressure distrubution at V_{wind} = 10 ms^{-1}, AOA = 0')
set(gca,'FontSize',15)

%V20 A0
figure(2)
plot(relativePortLocation,C_pV20,'bo');
xlabel('Distance from leading edge / Chord Length')
ylabel('Normalized Surface Pressure C_{p}')
title('Mean of pressure distrubution at V_{wind} = 20 ms^{-1}, AOA = 0')
set(gca,'FontSize',15)

%V30 A0
figure(3)
plot(relativePortLocation,C_pV30,'bo');
xlabel('Distance from leading edge / Chord Length')
ylabel('Normalized Surface Pressure C_{p}')
title('Mean of pressure distrubution at V_{wind} = 30 ms^{-1}, AOA = 0')
set(gca,'FontSize',15)

%V40 A0
figure(4)
plot(relativePortLocation,C_pV40,'bo'); %Pressure coefficient
xlabel('Distance from leading edge / Chord Length')
ylabel('Normalized Surface Pressure C_{p}')
title('C_{p} distrubution at V_{wind} = 40 ms^{-1}, AOA = 0')
set(gca,'FontSize',15)



%V50 A0
figure(5)
plot(relativePortLocation,C_pV50,'bo');
xlabel('Distance from leading edge / Chord Length')
ylabel('Normalized Surface Pressure C_{p}')
title('Mean of pressure distrubution at V_{wind} = 50 ms^{-1}, AOA = 0')
set(gca,'FontSize',15)

%V60 A0
figure(6)
plot(relativePortLocation,C_pV60,'bo');
xlabel('Distance from leading edge / Chord Length')
ylabel('Normalized Surface Pressure C_{p}')
title('Pressure coefficient distrubution at V_{wind} = 60 ms^{-1}, AOA = 0')
set(gca,'FontSize',15)

% AOA sweep 20 m/s
figure(7)
plot(AOA_force_speed(2:8,1),AOA_force_speed(2:8,2),'bo');
xlabel('Angle of Attack')
ylabel('Downforce [N]')
title('Downforce readout from loadcell at AOA sweep at V = 20 ms^{-1}')
set(gca,'FontSize',15)

% AOA sweep 40 m/s
figure(8)
plot(AOA_force_speed(10:16,1),AOA_force_speed(10:16,2),'bo');
xlabel('Angle of Attack')
ylabel('Downforce [N]')
title('Downforce readout from loadcell at AOA sweep at V = 40 ms^{-1}')
set(gca,'FontSize',15)


%V40 A-10
% figure(9)
% errorbar(pressureportnumber,meanPressureReadingsV40_A10m,standardDeviationV40_A10m,'ro');
% xlabel('Pressure port number')
% ylabel('Pressure [Pa]')
% title('Mean of pressure distrubution at V_{wind} = 40 ms^{-1}, AOA = -10 and +10')
% set(gca,'FontSize',15)
% hold on

%V40 A10
% figure(10)
% errorbar(pressureportnumber,meanPressureReadingsV40_A10p,standardDeviationV40_A10p,'bo');
% legend('AOA = -10','AOA = 10')
% %xlabel('Pressure port number')
%ylabel('Pressure [Pa]')
%title('Mean of pressure distrubution at V_{wind} = 40 ms^{-1}, AOA = 10')
%set(gca,'FontSize',15)



% subplot V40 A-10 and A10
figure(11)
ax1 = subplot(2,1,1);
errorbar(relativePortLocation,meanPressureReadingsV40_A10m,standardDeviationV40_A10m,'bo');
title('Surface pressure measurements for exstreme AOA')
title(ax1,'V=40 ms^{-1}, AOA = -10')
ylabel(ax1,'Surface Pressure [Pa]')
xlabel(ax1,'Distance from leading edge / Chord Length')

ax2 = subplot(2,1,2);
errorbar(relativePortLocation,meanPressureReadingsV40_A10p,standardDeviationV40_A10p,'bo');
title(ax2,'V=40 ms^{-1}, AOA = 10')
ylabel(ax2,'Surface Pressure [Pa]')
xlabel(ax2,'Distance from leading edge / Chord Length')



% %V60 A0 Relativ port placering
% figure
% errorbar(relativePortLocation,meanPressureReadingsV60,standardDeviationV60,'bo');
% xlabel('x/c')
% ylabel('Pressure [Pa]')
% title('Mean of pressure distrubution at V_{wind} = 60 ms^{-1}, AOA = 0')
% set(gca,'FontSize',15)
%%
AOA20 = AOA_force_speed(2:8,1);
DF20  = AOA_force_speed(2:8,2);
AOA40 = AOA_force_speed(10:16,1)
DF40  = AOA_force_speed(10:16,2)
V20_mean   = mean(AOA_force_speed(2:8,3));
V40_mean   = mean(AOA_force_speed(10:16,3));

DF20_std = std(AOA_force_speed_std(2:8,2)); % std of downforce @ v=20 m/s
DF40_std = std(AOA_force_speed_std(10:16,2));
V20_std  = std(AOA_force_speed_std(2:8,3));
V40_std  = std(AOA_force_speed_std(10:16,3));


C_L   = DF20
b = 0.25; %250mm
c = 0.155; %150 mm
ARactual =  b/c;
h = 0.175; %175mm
AR = ARactual*(1+1.9*(h/b));
A = b*c

alpha = 28*pi/180;
alphal0 = 10*pi/180;

C_L_alpha = 2*pi/(1+2/AR),
CLTheory = C_L_alpha*(alpha + alphal0)

CL20 = DF20/(0.5*1.225*20^2 * A)
CL40 = DF40/(0.5*1.225*40^2 * A)

figure(12)
plot(AOA20,CL20,'ob')
hold on
plot(AOA40,CL40,'or')
xlabel('Angle of Attack [Degrees]')
ylabel('C_L')
title('C_L per AOA. V_{wind} = 20 ms^{-1} and 40 ms^{-1}')
set(gca,'FontSize',15)

%%

meshsize_downforce = [22.8E6 6.36E5 1.03E6 3.87E6 5.8E5; 126.2 123.1 123.13 125.12 122.8]

figure(13)
plot(meshsize_downforce(1,:),meshsize_downforce(2,:),'ro')
xlabel('Mesh size [Number of cells]')
ylabel('Downforce [N]')
title('Convergence of downforce for varitations of mesh size')



figure(14)
errorbar(relativePortLocation,meanPressureReadingsV40,standardDeviationV40,'bo'); %Pressure coefficient
xlabel('Distance from leading edge / Chord Length')
ylabel('Surface Pressure [Pa]')
title('C_{p} distrubution at V_{wind} = 40 ms^{-1}, AOA = 0')
set(gca,'FontSize',15)

