%clear all
clc
close all

data = importdata('csv/V60_pressureSurface.csv',',',1)
position = data.data(:,1);
pressure = data.data(:,2);



figure
plot(position,pressure,'ro')
