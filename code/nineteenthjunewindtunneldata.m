%clear all
clc
close all

%General information
pressureportnumber = 1:15;


%V=10m/s
data = importdata('day1test/CarWing_V10_A00.lvm');
meanPressureReadingsV10 = mean(data(:,1:15));
standardDeviationV10 = std(data(:,1:15))

%V=20m/s
data = importdata('day1test/CarWing_V20_A00.lvm');
meanPressureReadingsV20 = mean(data(:,1:15));
standardDeviationV20 = std(data(:,1:15))

%V=30m/s
data = importdata('day1test/CarWing_V30_A00.lvm');
meanPressureReadingsV30 = mean(data(:,1:15));
standardDeviationV30 = std(data(:,1:15))

%V=40m/s
data = importdata('day1test/CarWing_V40_A00.lvm');
meanPressureReadingsV40 = mean(data(:,1:15));
standardDeviationV40 = std(data(:,1:15))


figure
plot(pressureportnumber,meanPressureReadingsV10,'bo');
xlabel('Pressure port number')
ylabel('Pressure [Pa]')
title('Mean of pressure distrubution at V_{wind} = 10 ms^{-1}, AOA = 0 \degrees')
set(gca,'FontSize',15)


figure
plot(pressureportnumber,meanPressureReadingsV20,'bo');
xlabel('Pressure port number')
ylabel('Pressure [Pa]')
title('Mean of pressure distrubution at V_{wind} = 20 ms^{-1}, AOA = 0 \degrees')
set(gca,'FontSize',15)

figure
plot(pressureportnumber,meanPressureReadingsV30,'bo');
xlabel('Pressure port number')
ylabel('Pressure [Pa]')
title('Mean of pressure distrubution at V_{wind} = 30 ms^{-1}, AOA = 0 \degrees')
set(gca,'FontSize',15)

figure
plot(pressureportnumber,meanPressureReadingsV40,'bo');
xlabel('Pressure port number')
ylabel('Pressure [Pa]')
title('Mean of pressure distrubution at V_{wind} = 40 ms^{-1}, AOA = 0 \degrees')
set(gca,'FontSize',15)

