% June 7, 2014
% Final Project
% Section 091
% Group 11

clc
clf
clear all
close all

NUKE_DA_CITY();

x = 1;

while x == 1
	ans = input('Again? (Y/N) ', 's');

	if ans == 'Y' || ans == 'y'
        close;
        NUKE_DA_CITY();
	else
		x = 0;
	end
end
