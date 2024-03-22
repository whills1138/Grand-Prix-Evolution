//Hammer Suspension Geometry file by Doug Arnao - Image Space Inc. Copyright 2005
//////////////////////////////////////////////////////////////////////////
//
// Conventions:
//
// +x = left
// +z = rear
// +y = up
// +pitch = nose up
// +yaw = nose right
// +roll = right
//
// [BODY]  - a rigid mass with mass and inertial properties
// [JOINT] - a ball joint constraining an offset of one body to an
//           offset of another body (eliminates 3 DOF)
// [HINGE] - a constraint restricting the relative rotations of two
//           bodies to be around a single axis (eliminates 2 DOF).
// [BAR]   - a constraint holding an offset of one body from an offset of
//           another body at a fixed distance (eliminates 1 DOF).
// [JOINT&HINGE] - both the joint and hinge constraints, forming the
//           conventional definition of a hinge (eliminates 5 DOF).
//
//////////////////////////////////////////////////////////////////////////

// Body including all rigidly attached parts (wings, barge boards, etc.)
[BODY]
name=body mass=(1.0) inertia=(1.0,1.0,1.0)
pos=(0.0,0.00,0.0) ori=(0.0,0.0,0.0)

// Front spindles
[BODY]
name=fl_spindle mass=(18.0) inertia=(0.0275,0.0260,0.0245)
pos=(0.71,0.0,-1.65) ori=(0.0,0.0,0.0)

[BODY]
name=fr_spindle mass=(18.0) inertia=(0.0275,0.0260,0.0245)
pos=(-0.71,0.0,-1.65) ori=(0.0,0.0,0.0)

// Front wheels
[BODY]
name=fl_wheel mass=(25.0) inertia=(2.250,1.000,1.000)
pos=(0.71,0.0,-1.65) ori=(0.0,0.0,0.0)

[BODY]
name=fr_wheel mass=(25.0) inertia=(2.250,1.000,1.000)
pos=(-0.71,0.0,-1.65) ori=(0.0,0.0,0.0)

// Live rear axle
[BODY]
name=rear_axle mass=(90.00) inertia=(10.70,10.70,5.20)
pos=(0.0,-0.07,1.35) ori=(0.0,0.0,0.0)

// Rear wheels 
[BODY]
name=rl_wheel mass=(25.0) inertia=(2.650,1.160,1.160)
pos=(0.71,0.0,1.35) ori=(0.0,0.0,0.0)

[BODY]
name=rr_wheel mass=(25.0) inertia=(2.650,1.160,1.160)
pos=(-0.71,0.0,1.35) ori=(0.0,0.0,0.0)

// Fuel in tank is not rigidly attached - it is attached with springs and
// dampers to simulate movement.  Properties are defined in the HDV file.

[BODY]
name=fuel_tank mass=(1.0) inertia=(1.0,1.0,1.0)
pos=(0.0,0.0,0.0) ori=(0.0,0.0,0.0)

// Driver's head is not rigidly attached, and it does NOT affect the vehicle
// physics.  Position is from the eyepoint defined in the VEH file, while
// other properties are defined in the head physics file.

[BODY]
name=driver_head mass=(5.0) inertia=(0.02,0.02,0.02)
pos=(0.0,0.0,0.0) ori=(0.0,0.0,0.0)


//////////////////////////////////////////////////////////////////////////
//
// Constraints
//
//////////////////////////////////////////////////////////////////////////
//Simulated Strut Suspension
// Front wheel and spindle connections
[JOINT&HINGE]
posbody=fl_wheel negbody=fl_spindle pos=fl_wheel axis=(-0.71,0.0,0.0)

[JOINT&HINGE]
posbody=fr_wheel negbody=fr_spindle pos=fr_wheel axis=(0.71,0.0,0.0)

// Front left suspension (2 A-arms + 1 steering arm = 5 links)
[BAR] // forward upper arm
name=fl_fore_upper posbody=body negbody=fl_spindle pos=(0.380,0.288,-1.65) neg=(0.583,0.328,-1.650)

[BAR] // rearward upper arm
posbody=body negbody=fl_spindle pos=(0.380,0.288,-1.45) neg=(0.583,0.328,-1.650)

[BAR] // forward lower arm
posbody=body negbody=fl_spindle pos=(0.370,-0.160,-1.65) neg=(0.698,-0.160,-1.65)

[BAR] // rearward lower arm
name=fl_fore_lower posbody=body negbody=fl_spindle pos=(0.370,-0.160,-1.40) neg=(0.698,-0.160,-1.65)

[BAR] // steering arm (must be named for identification)
name=fl_steering posbody=body negbody=fl_spindle pos=(0.342,-0.104,-1.815) neg=(0.650,-0.088,-1.822)

// Front right suspension (2 A-arms + 1 steering arm = 5 links)
[BAR] // forward upper arm (used in steering lock calculation)
name=fr_fore_upper posbody=body negbody=fr_spindle pos=(-0.380,0.288,-1.65) neg=(-0.583,0.328,-1.650)

[BAR] // rearward upper arm
posbody=body negbody=fr_spindle pos=(-0.380,0.288,-1.45) neg=(-0.583,0.328,-1.650)

[BAR] // forward lower arm
name=fr_fore_lower posbody=body negbody=fr_spindle pos=(-0.370,-0.160,-1.65) neg=(-0.698,-0.160,-1.65)

[BAR] // rearward lower arm
posbody=body negbody=fr_spindle pos=(-0.370,-0.160,-1.40) neg=(-0.698,-0.160,-1.65)

[BAR] // steering arm (must be named for identification)
name=fr_steering posbody=body negbody=fr_spindle pos=(-0.342,-0.104,-1.815) neg=(-0.650,-0.088,-1.822)

// Live Axle rear suspension geometry:
// 3 links + Trackbar
[BAR]
posbody=body negbody=rear_axle pos=(0.0,0.150,0.970) neg=(0.0,0.180,1.35)

[BAR]
posbody=body negbody=rear_axle pos=(0.50,-0.100,0.71) neg=(0.50,-0.100,1.370)

[BAR]
posbody=body negbody=rear_axle pos=(-0.50,-0.100,0.71) neg=(-0.50,-0.100,1.370)

// Track bar (heights will be changed with track bar adjustments)
[BAR]
name=track_bar posbody=body negbody=rear_axle pos=(0.50, -0.00, 1.50) neg=(-0.50, -0.00, 1.50)

// Rear spindle and wheel connections (axis will be changed with rear camber adjustments)
[JOINT&HINGE]
posbody=rl_wheel negbody=rear_axle pos=rl_wheel axis=(-1.0,0.0,0.0)

[JOINT&HINGE]
posbody=rr_wheel negbody=rear_axle pos=rr_wheel axis=(1.0,0.0,0.0)