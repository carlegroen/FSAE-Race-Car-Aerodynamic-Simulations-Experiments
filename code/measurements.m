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
legend('Test','Simulation')

figure%(6)
plot(position./chord,pressure,'ro')
xlabel('Distance from leading edge / Chord Length');
ylabel('Surface Pressure [Pa]');
title('Simulated surface pressure at V_{wind} = 60 m/s');
set(gca,'FontSize',15)


%%
data = importdata('csv/V50_pressureSurface.csv',',',1);
position = data.data(:,1);
chord = 0.16;
statPressure = 241;
pressure = data.data(:,2);
p_dyn = 1.225*60^2/2;
normalizedpressure = (pressure-statPressure)./(0.5.*1.225.*50.^2);
forskudt = min(position);
position = position - forskudt;

figure(5)
hold on
plot(position./chord,normalizedpressure,'ro')
legend('Test','Simulation')
%%
data = importdata('csv/V30_pressureSurface.csv',',',1);
position = data.data(:,1);
chord = 0.16;
statPressure = 78;
pressure = data.data(:,2);
p_dyn = 1.225*30^2/2;
normalizedpressure = (pressure-statPressure)./(0.5.*1.225.*30.^2);
forskudt = min(position);
position = position - forskudt;

figure(3)
hold on
plot(position./chord,normalizedpressure,'ro')
legend('Test','Simulation')

%%
data = importdata('csv/V40_pressureSurface.csv',',',1);
position = data.data(:,1);
chord = 0.16;
statPressure = 151;
pressure = data.data(:,2);
p_dyn = 1.225*40^2/2;
normalizedpressure = (pressure-statPressure)./(0.5.*1.225.*40.^2);
forskudt = min(position);
position = position - forskudt;

figure(4)
hold on
plot(position./chord,normalizedpressure,'ro')
legend('Test','Simulation')

% figure
% hold on
% plot(position./chord,normalizedpressure,'ro')
% xlabel('Distance from leading edge / Chord Length');
% ylabel('Pressure Coefficient, C_p');
% title('Simulated surface pressure at V_{wind} = 40 m/s');
% set(gca,'FontSize',15)
% 
% figure
% plot(position./chord,pressure,'ro')
% xlabel('Distance from leading edge / Chord Length');
% ylabel('Pressure Coefficient, C_p');
% title('Simulated surface pressure at V_{wind} = 40 m/s');
% set(gca,'FontSize',15)

