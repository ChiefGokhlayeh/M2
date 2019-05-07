clear();

x=[]
y=[]

// Wheel
wheel_t=linspace(0, 2*%pi);

// Left wheel
x=[x %nan cos(wheel_t)*3 - 9];
y=[y %nan sin(wheel_t)*3];

// Right wheel
x=[x %nan cos(wheel_t)*3 + 9]
y=[y %nan sin(wheel_t)*3]

// Floor
x=[x %nan -16 -12 %nan -6 6 %nan 12 16 15]
y=[y %nan   0   0 %nan  0 0 %nan  0  0  8]

// Roof
// y(t) = a1*t^0 + a2*t^1 + a3*t^2
roof_x=[-9; 0; 12]; // x coordinates of known fix-points
roof_y=[ 5; 9;  7]; // y coordinates of known fix-points
roof=[roof_x.^0 roof_x.^1 roof_x.^2]; // Setup coefficient matrix
roof_a=roof\roof_y; // calc coefficients for y(x) polynom
roof_t=linspace(-9, 12); // Create some points between -9 and 12
x=[x %nan roof_t];
y=[y %nan roof_a(1)*roof_t^0 + roof_a(2)*roof_t^1 + roof_a(3)*roof_t^2];

// Door
door_x=[-16; -12; -9; 0; 12; 15];
door_y=[  0;   4;  5; 4;  7;  8];
door=[door_x.^0 door_x.^1 door_x.^2 door_x.^3 door_x.^4 door_x.^5];
door_a=door\door_y;
door_t=linspace(-16, 15);
x=[x %nan door_t];
y=[y %nan door_a(1)*door_t^0 + door_a(2)*door_t^1 + door_a(3)*door_t^2 + door_a(4)*door_t^3 + door_a(5)*door_t^4 + door_a(6)*door_t^5];

alpha=%pi/4;
XY=[x;y];
R=[cos(alpha) -sin(alpha);
   sin(alpha) cos(alpha)];
R_XY=R*XY;
bla=R_XY;

// Plotting
mtlb_axis([-10 20 -10 12]);
mtlb_axis('equal');
mtlb_grid('on');
plot(x, y)
