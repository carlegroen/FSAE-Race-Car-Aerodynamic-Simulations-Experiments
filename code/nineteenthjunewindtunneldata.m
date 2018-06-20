%clear all
clc
close all

%General information
pressureportnumber = 1:15;
%AOA, Straingauge Force, wind speed matrix:
AOA_force_speed = [];


%V=10m/s
data = importdata('day1test/CarWing_V10_A00.lvm');
meanPressureReadingsV10 = mean(data(:,1:15));
standardDeviationV10 = std(data(:,1:15));
AOA_force_speed = [AOA_force_speed; mean(data(:,[65:66, 69]))];

%V=20m/s
data = importdata('day1test/CarWing_V20_A00.lvm');
meanPressureReadingsV20 = mean(data(:,1:15));
standardDeviationV20 = std(data(:,1:15));
AOA_force_speed = [AOA_force_speed; mean(data(:,[65:66, 69]))];

    %AOA = -4
    data = importdata('day2test/CarWing_V20_A04m.lvm');
    meanPressureReadingsV20_A04m = mean(data(:,1:15));
    standardDeviationV20_A04m = std(data(:,1:15));
    AOA_force_speed = [AOA_force_speed; mean(data(:,[65:66, 69]))];

    %AOA = -7
    data = importdata('day2test/CarWing_V20_A07m.lvm');
    meanPressureReadingsV20_A07m = mean(data(:,1:15));
    standardDeviationV20_A07m = std(data(:,1:15));
    AOA_force_speed = [AOA_force_speed; mean(data(:,[65:66, 69]))];

    %AOA = -10
    data = importdata('day2test/CarWing_V20_A10m.lvm');
    meanPressureReadingsV20_A10m = mean(data(:,1:15));
    standardDeviationV20_A10m = std(data(:,1:15));
    AOA_force_speed = [AOA_force_speed; mean(data(:,[65:66, 69]))];

    %AOA = +4
    data = importdata('day2test/CarWing_V20_A04p.lvm');
    meanPressureReadingsV20_A04p = mean(data(:,1:15));
    standardDeviationV20_A04p = std(data(:,1:15));
    AOA_force_speed = [AOA_force_speed; mean(data(:,[65:66, 69]))];

    %AOA = +7
    data = importdata('day2test/CarWing_V20_A07p.lvm');
    meanPressureReadingsV20_A07p = mean(data(:,1:15));
    standardDeviationV20_A07p = std(data(:,1:15));
    AOA_force_speed = [AOA_force_speed; mean(data(:,[65:66, 69]))];

    %AOA = +10
    data = importdata('day2test/CarWing_V20_A10p.lvm');
    meanPressureReadingsV20_A10p = mean(data(:,1:15));
    standardDeviationV20_A10p = std(data(:,1:15));
    AOA_force_speed = [AOA_force_speed; mean(data(:,[65:66, 69]))];

%V=30m/s
data = importdata('day1test/CarWing_V30_A00.lvm');
meanPressureReadingsV30 = mean(data(:,1:15));
standardDeviationV30 = std(data(:,1:15));
AOA_force_speed = [AOA_force_speed; mean(data(:,[65:66, 69]))];

%V=40m/s
data = importdata('day1test/CarWing_V40_A00.lvm');
meanPressureReadingsV40 = mean(data(:,1:15));
standardDeviationV40 = std(data(:,1:15));
AOA_force_speed = [AOA_force_speed; mean(data(:,[65:66, 69]))];

    %AOA = -4
    data = importdata('day2test/CarWing_V40_A04m.lvm');
    meanPressureReadingsV40_A04m = mean(data(:,1:15));
    standardDeviationV40_A04m = std(data(:,1:15));
    AOA_force_speed = [AOA_force_speed; mean(data(:,[65:66, 69]))];

    %AOA = -7
    data = importdata('day2test/CarWing_V40_A07m.lvm');
    meanPressureReadingsV40_A07m = mean(data(:,1:15));
    standardDeviationV40_A07m = std(data(:,1:15));
    AOA_force_speed = [AOA_force_speed; mean(data(:,[65:66, 69]))];

    %AOA = -10
    data = importdata('day2test/CarWing_V40_A10m.lvm');
    meanPressureReadingsV40_A10m = mean(data(:,1:15));
    standardDeviationV40_A10m = std(data(:,1:15));
    AOA_force_speed = [AOA_force_speed; mean(data(:,[65:66, 69]))];

    %AOA = +4
    data = importdata('day2test/CarWing_V40_A04p.lvm');
    meanPressureReadingsV40_A04p = mean(data(:,1:15));
    standardDeviationV40_A04p = std(data(:,1:15));
    AOA_force_speed = [AOA_force_speed; mean(data(:,[65:66, 69]))];

    %AOA = +7
    data = importdata('day2test/CarWing_V40_A07p.lvm');
    meanPressureReadingsV40_A07p = mean(data(:,1:15));
    standardDeviationV40_A07p = std(data(:,1:15));
    AOA_force_speed = [AOA_force_speed; mean(data(:,[65:66, 69]))];

    %AOA = +10
    data = importdata('day2test/CarWing_V40_A10p.lvm');
    meanPressureReadingsV40_A10p = mean(data(:,1:15));
    standardDeviationV40_A10p = std(data(:,1:15));
    AOA_force_speed = [AOA_force_speed; mean(data(:,[65:66, 69]))];

%V=50m/s
data = importdata('day2test/CarWing_V50_A00p.lvm');
meanPressureReadingsV50 = mean(data(:,1:15));
standardDeviationV50 = std(data(:,1:15));
AOA_force_speed = [AOA_force_speed; mean(data(:,[65:66, 69]))];

%V=60m/s
data = importdata('day2test/CarWing_V60_A00p.lvm');
meanPressureReadingsV60 = mean(data(:,1:15));
standardDeviationV60 = std(data(:,1:15));
AOA_force_speed = [AOA_force_speed; mean(data(:,[65:66, 69]))];

%Cleaning AOA force speed data
AOA_force_speed = [round(AOA_force_speed(:,1)) round(AOA_force_speed(:,2),1) round(AOA_force_speed(:,3),2)];



figure
errorbar(pressureportnumber,meanPressureReadingsV10,standardDeviationV10,'bo');
xlabel('Pressure port number')
ylabel('Pressure [Pa]')
title('Mean of pressure distrubution at V_{wind} = 10 ms^{-1}, AOA = 0')
set(gca,'FontSize',15)


figure
errorbar(pressureportnumber,meanPressureReadingsV20,standardDeviationV20,'bo');
xlabel('Pressure port number')
ylabel('Pressure [Pa]')
title('Mean of pressure distrubution at V_{wind} = 20 ms^{-1}, AOA = 0')
set(gca,'FontSize',15)

figure
errorbar(pressureportnumber,meanPressureReadingsV30,standardDeviationV30,'bo');
xlabel('Pressure port number')
ylabel('Pressure [Pa]')
title('Mean of pressure distrubution at V_{wind} = 30 ms^{-1}, AOA = 0')
set(gca,'FontSize',15)

figure
errorbar(pressureportnumber,meanPressureReadingsV40,standardDeviationV40,'bo');
xlabel('Pressure port number')
ylabel('Pressure [Pa]')
title('Mean of pressure distrubution at V_{wind} = 40 ms^{-1}, AOA = 0')
set(gca,'FontSize',15)

figure
errorbar(pressureportnumber,meanPressureReadingsV50,standardDeviationV50,'bo');
xlabel('Pressure port number')
ylabel('Pressure [Pa]')
title('Mean of pressure distrubution at V_{wind} = 50 ms^{-1}, AOA = 0')
set(gca,'FontSize',15)

figure
errorbar(pressureportnumber,meanPressureReadingsV60,standardDeviationV60,'bo');
xlabel('Pressure port number')
ylabel('Pressure [Pa]')
title('Mean of pressure distrubution at V_{wind} = 60 ms^{-1}, AOA = 0')
set(gca,'FontSize',15)
