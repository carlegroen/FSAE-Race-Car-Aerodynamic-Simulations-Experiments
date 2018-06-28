%clear all
clc
%close all
%%
data = importdata('csv/V60_pressureSurface.csv',',',1);
position = data.data(:,1);
chord = 0.16;
statPressure = 298;
pressure = data.data(:,2);
p_dyn = 1.225*60^2/2;
normalizedpressure = (pressure-statPressure)./(0.5.*1.225.*60.^2);
forskudt = min(position);
position = position - forskudt;

figure(6)
hold on
plot(position./chord,normalizedpressure,'ro')

%%
data = importdata('csv/V50_pressureSurface.csv',',',1);
position = data.data(:,1);
chord = 0.16;
statPressure = 298;
pressure = data.data(:,2);
p_dyn = 1.225*60^2/2;
normalizedpressure = (pressure-statPressure)./(0.5.*1.225.*60.^2);
forskudt = min(position);
position = position - forskudt;

figure(5)
hold on
plot(position./chord,normalizedpressure,'ro')
%%
data = importdata('csv/V30_pressureSurface.csv',',',1);
position = data.data(:,1);
chord = 0.16;
statPressure = 298;
pressure = data.data(:,2);
p_dyn = 1.225*60^2/2;
normalizedpressure = (pressure-statPressure)./(0.5.*1.225.*60.^2);
forskudt = min(position);
position = position - forskudt;

figure(3)
hold on
plot(position./chord,normalizedpressure,'ro')



