%% Day 8 code
% EGR 101

%% U.S. Olympic Team trials cut
clear 
clc

% Top 15 times at the 2020 US Open
% Source https://www.usaswimming.org/docs/default-source/eventsdocuments/meet-...
% results/2020-us-open/2020-complete-us-open-results.pdf
names = ["Regan Smith", "Olivia Carter", "Charlotte Hook", "Katelyn Crom", ...
    "Abigail Harter", "Grace Sheble", "Victoria Huske", "Alena Kraus", ...
    "Martina Peroni", "Mia Abruzzo", "Baily Nero", "Summer Smith", ...
    "Caroline Sheble", "Tristen Ulett", "Joy Jiang"];

times = [128.61, 130.52, 130.90, 132.94, 133.02, 133.47, 134.03, 134.17, ...
    134.30, 134.57, 134.67, 134.74, 134.91, 134.99, 135.02];

% https://www.usaswimming.org/docs/default-source/timesdocuments/time-standards/2021trialstimestandards.pdf
% 200 butterfly cut times

wave2cut = 132.56; % wave II cut
wave1cut = 134.59; % wave I cut

% if time value less than cut2
fasterThanCut2 = times < wave2cut 

% get their names
peopleWhoQualifiedWaveII = names (fasterThanCut2)
disp("People who qualified for the olympic time trials at the US Open in the 200 butterly based on Wave 2")
disp (peopleWhoQualifiedWaveII)

% time value slower than cut 2 but faster than cut 1
slowerThan2FasterThan1 = times > wave2cut & times < wave1cut
wave1People = names(slowerThan2FasterThan1)
disp("Extra People who qualified for the olympic time trials at the US Open in the 200 butterly based on Wave 1")
disp (wave1People)

% select those who qualified in one of the waves?
madeACut = times < wave1cut | times < wave2cut;

% output "NUMBER people qualified with a time of either CUT2 (Wave 2) or
% CUT1 (Wave 1)
fprintf (['%g people qualified with a time of either %.2f (Wave 2) or %.2f (Wave 1)\n'], sum(madeACut), wave2cut, wave1cut)

% Output their names

disp("All qualifiers")
peopleMadeIt = names(madeACut);
disp(peopleMadeIt)