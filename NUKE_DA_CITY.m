function [] = NUKE_DA_CITY()
prompt = {'Enter nuke angle [60, 90]:','Enter nuke latitude [-10, 10]:', 'Enter shield longitude [-7 7]'};
dlg_title = 'Settings'; % set the title of jthe input dialogue
num_lines = 1;
def = {'65','0','0'};
settings = inputdlg(prompt,dlg_title,num_lines,def);

angle = str2num(settings{1}); % initial firing angle
latNuke = str2num(settings{2}); 
longShield = str2num(settings{3});

%% Creating 3-Dimenstional Space
myAxes = axes('xlim',[-10 15], 'ylim' , [-5 27], 'zlim', [-7 20]);

view(3)
grid on
axis equal
hold on
whitebg(1,[0.5 0.5 0.5])
xlabel('x')
ylabel('y')
zlabel('z')

%% Creating Town
	% Ground
		xGround_bottom = [-10 -10 15 15]; % bottom side
		yGround_bottom = [25 -5 -5 25];
		zGround_bottom = [-7 -7 -7 -7];
		fill3(xGround_bottom,yGround_bottom,zGround_bottom,[0.8 0.8 0.8]);

	% BUILDING 1
		xWall_left_1 = [-8 -8 -8 -8]; % left side
		yWall_left_1 = [7.9 7.9 9.8 9.8];
		zWall_left_1 = [-7 1.5 1.5 -7];

		xWall_top_1 = [-8 -8 -5.6 -5.6]; % top side
		yWall_top_1 = [9.8 7.9 7.9 9.8];
		zWall_top_1 = [1.5 1.5 1.5 1.5];

		xWall_front_1 = [-8 -8 -5.6 -5.6]; % front side
		yWall_front_1 = [9.8 9.8 9.8 9.8];
		zWall_front_1 = [-7 1.5 1.5 -7];

		xWall_right_1 = [-5.6 -5.6 -5.6 -5.6]; % right side
		yWall_right_1 = [9.8 9.8 7.9 7.9];
		zWall_right_1 = [-7 1.5 1.5 -7];

		xWall_back_1 = [-8 -8 -5.6 -5.6]; % back side
		yWall_back_1 = [7.9 7.9 7.9 7.9];
		zWall_back_1 = [-7 1.5 1.5 -7];

		xWall_bottom_1 = [-8 -8 -5.6 -5.6]; % bottom side
		yWall_bottom_1 = [9.8 7.9 7.9 9.8];
		zWall_bottom_1 = [-7 -7 -7 -7];

		% Outputing the shape
		buildingElement1(1) = fill3(xWall_left_1,yWall_left_1,zWall_left_1,'y');
		buildingElement1(2) = fill3(xWall_top_1,yWall_top_1,zWall_top_1,'y');
		buildingElement1(3) = fill3(xWall_front_1,yWall_front_1,zWall_front_1,'y');
		buildingElement1(4) = fill3(xWall_right_1,yWall_right_1,zWall_right_1,'y');
		buildingElement1(5) = fill3(xWall_back_1,yWall_back_1,zWall_back_1,'y');
		buildingElement1(6) = fill3(xWall_bottom_1,yWall_bottom_1,zWall_bottom_1,'y');
		
		% Creating the object
		building1 = hgtransform('parent', myAxes); % has to do with the axes
		set(buildingElement1, 'parent', building1); % makes combo be able to reference the shapes as a whole

	% BUILDING 2
		xWall_left_2 = [-2 -2 -2 -2]; % left side
		yWall_left_2 = [8.5 8.5 12.7 12.7];
		zWall_left_2 = [-7 -4.4 -4.4 -7];

		xWall_top_2 = [-2 -2 3.5 3.5]; % top side
		yWall_top_2 = [12.7 8.5 8.5 12.7];
		zWall_top_2 = [-4.4 -4.4 -4.4 -4.4];

		xWall_front_2 = [-2 -2 3.5 3.5]; % front side
		yWall_front_2 = [12.7 12.7 12.7 12.7];
		zWall_front_2 = [-7 -4.4 -4.4 -7];

		xWall_right_2 = [3.5 3.5 3.5 3.5]; % right side
		yWall_right_2 = [12.7 12.7 8.5 8.5];
		zWall_right_2 = [-7 -4.4 -4.4 -7];

		xWall_back_2 = [-2 -2 3.5 3.5]; % back side
		yWall_back_2 = [8.5 8.5 8.5 8.5];
		zWall_back_2 = [-7 -4.4 -4.4 -7];

		xWall_bottom_2 = [-2 -2 3.5 3.5]; % bottom side
		yWall_bottom_2 = [12.7 8.5 8.5 12.7];
		zWall_bottom_2 = [-7 -7 -7 -7];

		% Outputing the shape
		buildingElement2(1) = fill3(xWall_left_2,yWall_left_2,zWall_left_2,'r');
		buildingElement2(2) = fill3(xWall_top_2,yWall_top_2,zWall_top_2,'r');
		buildingElement2(3) = fill3(xWall_front_2,yWall_front_2,zWall_front_2,'r');
		buildingElement2(4) = fill3(xWall_right_2,yWall_right_2,zWall_right_2,'r');
		buildingElement2(5) = fill3(xWall_back_2,yWall_back_2,zWall_back_2,'r');
		buildingElement2(6) = fill3(xWall_bottom_2,yWall_bottom_2,zWall_bottom_2,'r');
		
		% Creating the object
		building2 = hgtransform('parent', myAxes); % has to do with the axes
		set(buildingElement2, 'parent', building2); % makes combo be able to reference the shapes as a whole

	% BUILDING 3
		xWall_left_3 = [-6.4 -6.4 -6.4 -6.4]; % left side
		yWall_left_3 = [16.7 16.7 20.2 20.2];
		zWall_left_3 = [-7 -0.7 -0.7 -7];

		xWall_top_3 = [-6.4 -6.4 -4.3 -4.3]; % top side
		yWall_top_3 = [20.2 16.7 16.7 20.2];
		zWall_top_3 = [-0.7 -0.7 -0.7 -0.7];

		xWall_front_3 = [-6.4 -6.4 -4.3 -4.3]; % front side
		yWall_front_3 = [20.2 20.2 20.2 20.2];
		zWall_front_3 = [-7 -0.7 -0.7 -7];

		xWall_right_3 = [-4.3 -4.3 -4.3 -4.3]; % right side
		yWall_right_3 = [20.2 20.2 16.7 16.7];
		zWall_right_3 = [-7 -0.7 -0.7 -7];

		xWall_back_3 = [-6.4 -6.4 -4.3 -4.3]; % back side
		yWall_back_3 = [16.7 16.7 16.7 16.7];
		zWall_back_3 = [-7 -0.7 -0.7 -7];

		xWall_bottom_3 = [-6.4 -6.4 -4.3 -4.3]; % bottom side
		yWall_bottom_3 = [20.2 16.7 16.7 20.2];
		zWall_bottom_3 = [-7 -7 -7 -7];

		% Outputing the shape
		buildingElement3(1) = fill3(xWall_left_3,yWall_left_3,zWall_left_3,'c');
		buildingElement3(2) = fill3(xWall_top_3,yWall_top_3,zWall_top_3,'c');
		buildingElement3(3) = fill3(xWall_front_3,yWall_front_3,zWall_front_3,'c');
		buildingElement3(4) = fill3(xWall_right_3,yWall_right_3,zWall_right_3,'c');
		buildingElement3(5) = fill3(xWall_back_3,yWall_back_3,zWall_back_3,'c');
		buildingElement3(6) = fill3(xWall_bottom_3,yWall_bottom_3,zWall_bottom_3,'c');
		
		% Creating the object
		building3 = hgtransform('parent', myAxes); % has to do with the axes
		set(buildingElement3, 'parent', building3); % makes combo be able to reference the shapes as a whole
	
	% BUILDING 4
		xWall_left_4 = [-0.2 -0.2 -0.2 -0.2]; % left side
		yWall_left_4 = [17.3 17.3 23.6 23.6];
		zWall_left_4 = [-7 -2.9 -2.9 -7];

		xWall_top_4 = [-0.2 -0.2 6.4 6.4]; % top side
		yWall_top_4 = [23.6 17.3 17.3 23.6];
		zWall_top_4 = [-2.9 -2.9 -2.9 -2.9];

		xWall_front_4 = [-0.2 -0.2 6.4 6.4]; % front side
		yWall_front_4 = [23.6 23.6 23.6 23.6];
		zWall_front_4 = [-7 -2.9 -2.9 -7];

		xWall_right_4 = [6.4 6.4 6.4 6.4]; % right side
		yWall_right_4 = [23.6 23.6 17.3 17.3];
		zWall_right_4 = [-7 -2.9 -2.9 -7];

		xWall_back_4 = [-0.2 -0.2 6.4 6.4]; % back side
		yWall_back_4 = [17.3 17.3 17.3 17.3];
		zWall_back_4 = [-7 -2.9 -2.9 -7];

		xWall_bottom_4 = [-0.2 -0.2 6.4 6.4]; % bottom side
		yWall_bottom_4 = [23.6 17.3 17.3 23.6];
		zWall_bottom_4 = [-7 -7 -7 -7];

		% Outputing the shape
		buildingElement4(1) = fill3(xWall_left_4,yWall_left_4,zWall_left_4,'b');
		buildingElement4(2) = fill3(xWall_top_4,yWall_top_4,zWall_top_4,'b');
		buildingElement4(3) = fill3(xWall_front_4,yWall_front_4,zWall_front_4,'b');
		buildingElement4(4) = fill3(xWall_right_4,yWall_right_4,zWall_right_4,'b');
		buildingElement4(5) = fill3(xWall_back_4,yWall_back_4,zWall_back_4,'b');
		buildingElement4(6) = fill3(xWall_bottom_4,yWall_bottom_4,zWall_bottom_4,'b');
		
		% Creating the object
		building4 = hgtransform('parent', myAxes); % has to do with the axes
		set(buildingElement4, 'parent', building4); % makes combo be able to reference the shapes as a whole


	% BUILDING 5
		xWall_left_5 = [8.2 8.2 8.2 8.2]; % left side
		yWall_left_5 = [7 7 12.3 12.3];
		zWall_left_5 = [-7 -0.1 -0.1 -7];

		xWall_top_5 = [8.2 8.2 11.3 11.3]; % top side
		yWall_top_5 = [12.3 7 7 12.3];
		zWall_top_5 = [-0.1 -0.1 -0.1 -0.1];

		xWall_front_5 = [8.2 8.2 11.3 11.3]; % front side
		yWall_front_5 = [12.3 12.3 12.3 12.3];
		zWall_front_5 = [-7 -0.1 -0.1 -7];

		xWall_right_5 = [11.3 11.3 11.3 11.3]; % right side
		yWall_right_5 = [12.3 12.3 7 7];
		zWall_right_5 = [-7 -0.1 -0.1 -7];

		xWall_back_5 = [8.2 8.2 11.3 11.3]; % back side
		yWall_back_5 = [7 7 7 7];
		zWall_back_5 = [-7 -0.1 -0.1 -7];

		xWall_bottom_5 = [8.2 8.2 11.3 11.3]; % bottom side
		yWall_bottom_5 = [12.3 7 7 12.3];
		zWall_bottom_5 = [-7 -7 -7 -7];

		% Outputing the shape
		buildingElement5(1) = fill3(xWall_left_5,yWall_left_5,zWall_left_5,'g');
		buildingElement5(2) = fill3(xWall_top_5,yWall_top_5,zWall_top_5,'g');
		buildingElement5(3) = fill3(xWall_front_5,yWall_front_5,zWall_front_5,'g');
		buildingElement5(4) = fill3(xWall_right_5,yWall_right_5,zWall_right_5,'g');
		buildingElement5(5) = fill3(xWall_back_5,yWall_back_5,zWall_back_5,'g');
		buildingElement5(6) = fill3(xWall_bottom_5,yWall_bottom_5,zWall_bottom_5,'g');
		
		% Creating the object
		building5 = hgtransform('parent', myAxes); % has to do with the axes
		set(buildingElement5, 'parent', building5); % makes combo be able to reference the shapes as a whole

	% BUILDING 6
		xWall_left_6 = [7.5 7.5 7.5 7.5]; % left side
		yWall_left_6 = [18.5 18.5 22.5 22.5];
		zWall_left_6 = [-7 -2 -2 -7];

		xWall_top_6 = [7.5 7.5 11.5 11.5]; % top side
		yWall_top_6 = [22.5 18.5 18.5 22.5];
		zWall_top_6 = [-2 -2 -2 -2];

		xWall_front_6= [7.5 7.5 11.5 11.5]; % front side
		yWall_front_6 = [22.5 22.5 22.5 22.5];
		zWall_front_6 = [-7 -2 -2 -7];

		xWall_right_6 = [11.5 11.5 11.5 11.5]; % right side
		yWall_right_6 = [22.5 22.5 18.5 18.5];
		zWall_right_6 = [-7 -2 -2 -7];

		xWall_back_6 = [7.5 7.5 11.5 11.5]; % back side
		yWall_back_6 = [18.5 18.5 18.5 18.5];
		zWall_back_6 = [-7 -2 -2 -7];

		xWall_bottom_6 = [7.5 7.5 11.5 11.5]; % bottom side
		yWall_bottom_6 = [22.5 18.5 18.5 22.5];
		zWall_bottom_6 = [-7 -7 -7 -7];

		% Outputing the shape
		buildingElement6(1) = fill3(xWall_left_6,yWall_left_6,zWall_left_6,'m');
		buildingElement6(2) = fill3(xWall_top_6,yWall_top_6,zWall_top_6,'m');
		buildingElement6(3) = fill3(xWall_front_6,yWall_front_6,zWall_front_6,'m');
		buildingElement6(4) = fill3(xWall_right_6,yWall_right_6,zWall_right_6,'m');
		buildingElement6(5) = fill3(xWall_back_6,yWall_back_6,zWall_back_6,'m');
		buildingElement6(6) = fill3(xWall_bottom_6,yWall_bottom_6,zWall_bottom_6,'m');
		
		% Creating the object
		building6 = hgtransform('parent', myAxes); % has to do with the axes
		set(buildingElement6, 'parent', building6); % makes combo be able to reference the shapes as a whole

%% Creating Shield

	xShield_left = [-5 -5 -5 -5]; % left side
	yShield_left = [13+longShield 13+longShield 17+longShield 17+longShield];
	zShield_left = [2 2.25 2.25 2];

	xShield_top = [-5 -5 10 10]; % top side
	yShield_top = [17+longShield 13+longShield 13+longShield 17+longShield];
	zShield_top = [2.25 2.25 2.25 2.25];

	xShield_front= [-5 -5 10 10]; % front side
	yShield_front = [17+longShield 17+longShield 17+longShield 17+longShield];
	zShield_front = [2 2.25 2.25 2];

	xShield_right = [10 10 10 10]; % right side
	yShield_right = [17+longShield 17+longShield 13+longShield 13+longShield];
	zShield_right = [2 2.25 2.25 2];

	xShield_back = [-5 -5 10 10]; % back side
	yShield_back = [13+longShield 13+longShield 13+longShield 13+longShield];
	zShield_back = [2 2.25 2.25 2];

	xShield_bottom = [-5 -5 10 10]; % bottom side
	yShield_bottom = [17+longShield 13+longShield 13+longShield 17+longShield];
	zShield_bottom = [2 2 2 2];

	% Outputing the shape
	shieldElement(1) = fill3(xShield_left,yShield_left,zShield_left,[1,0.4,0.6]);
	shieldElement(2) = fill3(xShield_top,yShield_top,zShield_top,[1,0.4,0.6]);
	shieldElement(3) = fill3(xShield_front,yShield_front,zShield_front,[1,0.4,0.6]);
	shieldElement(4) = fill3(xShield_right,yShield_right,zShield_right,[1,0.4,0.6]);
	shieldElement(5) = fill3(xShield_back,yShield_back,zShield_back,[1,0.4,0.6]);
	shieldElement(6) = fill3(xShield_bottom,yShield_bottom,zShield_bottom,[1,0.4,0.6]);
	
	% Creating the object
	shield = hgtransform('parent', myAxes); % has to do with the axes
	set(shieldElement, 'parent', shield); % makes combo be able to reference the shapes as a whole

%% Creating a Nuclear Object

% CYLINDRICAL ELEMENTS
%complexity is the number of sides in the cylinder
complexity = 100;

%changing the radii of the cylinder to make a different scoped shape
%Setting a radius to 0 will make a cone
topRadius1 = 1;
bottomRadius1 = 0.5;

topRadius2 = 1;
bottomRadius2 = 1;

topRadius3 = .5;
bottomRadius3 = 1;

%creating a taller cylinder multiple the z by some number
zScalar = (1);

%Creating the cylinder
[xCyl1, yCyl1, zCyl1] = cylinder([topRadius1 bottomRadius1], complexity);
[xCyl2, yCyl2, zCyl2] = cylinder([topRadius2 bottomRadius2], complexity);
[xCyl3, yCyl3, zCyl3] = cylinder([topRadius3 bottomRadius3], complexity);

% SPHERICAL ELEMENT
% complexity is the roudness of the sphere
complexity = 20;
% Creating the shape
[xSph, ySph, zSph] = sphere(complexity);

% Outputting the shape
 %facecolor allows you to change the color to some other color character
 color = 'm';
 
% Outputting the shape
nukeElement(1) = surface(xCyl1,yCyl1,zCyl1, 'facecolor', 'g');
nukeElement(2) = surface(xCyl2,yCyl2,(zCyl2*2)-2, 'facecolor','g');
nukeElement(3) = surface(xCyl3,yCyl3,(zCyl3*1.1)+1, 'facecolor', 'k'); %the (blaster) part of the nuke
nukeElement(4) = surface(xSph,ySph,zSph-2, 'facecolor', 'k');

% NUKE OBJECT CREATION

nuke = hgtransform('parent', myAxes); % has to do with the axes
set(nukeElement, 'parent', nuke); % makes combo be able to reference the shapes as a whole

%% Creating an Explosion Object
% RING OBJECT
bottomRadius = .75;
topRadius = 1;
    %creating smallest possible thickness (ring)
    zScalar = (1/20);

%Creating the cylinder
[xCyl, yCyl, zCyl] = cylinder([bottomRadius topRadius], complexity);

explosionElement(1) = surface(2*xCyl,2*yCyl, 2*zCyl*zScalar); %a ring around the shpere

% creating an explosion object
[xSph, ySph, zSph] = sphere(50);

explosionElement(2) = surface(xSph,ySph, zSph);

% EXPLOSION OBJECT CREATION

explosion = hgtransform('parent', myAxes); % has to do with the axes
set(explosionElement, 'parent', explosion); % makes combo be able to reference the shapes as a whole
set(explosion, 'Visible', 'off'); % the explosion does not appear at the beginning

%% Animation

% Nuke 
%creating angles and translation for the trajectory of the nuclear object 

v0 = 16;
y0 = 18.5;
x0 = 18.5;
airtime = 2*(v0*sind(angle))/9.8;
distance = (v0*cosd(angle))*airtime;
cameramenu

frames = 100;
long = linspace(0,distance,frames);
time = linspace(0,airtime,frames);
lat = linspace(0,latNuke,frames);
alt = (y0+(v0*sind(angle)*time) - ((9.81.*(time.^2))/2))-18.5;

%calculating rotation of nuclear object
rot1=(-1*linspace(-pi,0,frames));

scl = linspace(1,7,203);
i = 1;
	while i <= length(lat)+1 
        if i < length(lat) % when the nuke is still flying in projectile motion
		    pause(.01);
		    % Translation transformation matrix
		    trans = makehgtform('translate', [lat(i), long(i), alt(i)-3]);
		    % Rotation tranformation matrices
		    rotation1 = makehgtform('yrotate', rot1(i));
		 
		    % Setting shape to use the translation and rotation
		    set(nuke, 'matrix', trans*rotation1); %to run these all at the same time
		    
		    if alt(i)-5 < 2 % when the tip of nuke reaches the height of the shield
		    	% if the nuke is inside the area of the shield
		    	if long(i) > (13+longShield) && long(i) < (17+longShield) && lat(i) > -5 && lat(i) < 10
		    		i = length(lat)+2; % stop the loop and stop the nuke
		    	end
		    end

        else if i == length(lat)+1 % when the nuke drops down to a height that can hit the buildings
                for k = 1:80
                % Make the explosion visible
                set(explosion, 'Visible', 'on'); 
                % Translation transformation matrix
                trans0 = makehgtform('translate', [lat(i-1), long(i-1), alt(i-1)-3]);
                % Scaling transformation matrix
                scale = makehgtform('scale', scl(k));
                
                % Setting shape to use the translation and rotation
                set(explosion, 'matrix', trans0*scale);

	                if k > 40 % after half of the time of the explosion
	                	if lat(end-1) > -1 && lat(end-1) < 6 && long(end-1) > 16 && long(end-1) < 25 % range inside the blue building
	                		set(building4, 'Visible', 'off'); % make the blue building disappear

	                	else if lat(end-1) > -8 && lat(end-1) < -3.5 && long(end-1) > 15 && long(end-1) < 22 % range inside the cyan building
	                		set(building3, 'Visible', 'off'); % make the cyan building disappear
	                	
	                	else if lat(end-1) > 7 && lat(end-1) < 14 && long(end-1) > 16 && long(end-1) < 25 % range inside the magenta building
	                		set(building6, 'Visible', 'off'); % make the magenta building disappear
	                	
	                	else if lat(end-1) > -3.5 && lat(end-1) < -1 && long(end-1) > 15 && long(end-1) < 22 % range between the blue and cyan building
	                		set(building4, 'Visible', 'off'); % make the blue and cyan building disappear
	                		set(building3, 'Visible', 'off');

	                	else if lat(end-1) > 6 && lat(end-1) < 7 && long(end-1) > 16 && long(end-1) < 25 % range between the blue and magenta building
	                		set(building4, 'Visible', 'off'); % make the blue and cyan building disappear
	                		set(building6, 'Visible', 'off');
	                		
	                	else if lat(end-1) > -10 && lat(end-1) < -6 && long(end-1) > 7 && long(end-1) < 13 % range inside the yellow building
	                		set(building1, 'Visible', 'off'); % make the yellow building disappear
	                	
	                	else if lat(end-1) > -1.5 && lat(end-1) < 3 && long(end-1) > 8 && long(end-1) < 15 % range inside the red building
	                		set(building2, 'Visible', 'off'); % make the red building disappear
	                	
	                	else if lat(end-1) > 7 && lat(end-1) < 14 && long(end-1) > 8 && long(end-1) < 16 % range inside the green building
	                		set(building5, 'Visible', 'off'); % make the green building disappear

	                	else if lat(end-1) > -6 && lat(end-1) < -1.5 && long(end-1) > 7 && long(end-1) < 13 % range between the yellow and red building
	                		set(building1, 'Visible', 'off'); % make the red and yellow building disappear
	                		set(building2, 'Visible', 'off');

	                	else if lat(end-1) > 3 && lat(end-1) < 7 && long(end-1) > 8 && long(end-1) < 15 % range between the green and red building
	                		set(building5, 'Visible', 'off'); % make the red and green building disappear
	                		set(building2, 'Visible', 'off');

	                		end 
	                		end
	                		end
                            end
                            end
                            end
                            end
                            end
                        	end
                        	end
	                end
                pause(.01);
                end
            end
        end
        i = i+1;
    end

set(explosion, 'Visible', 'off'); % make the explosion and nuke disappear
set(nuke, 'Visible', 'off');

end

