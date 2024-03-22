// Copyright & Proprietary Reiza Studios Ltda
//
//
[BODY]
name=driver_head mass=(7) inertia=(0.035,0.035,0.035)
pos=(0.0,0.0,0.0) ori=(0.0,0.0,0.0)

[BODY]
name=fuel_tank mass=(0) inertia=(0,0,0)
pos=(0.0,0.0,0.0) ori=(0.0,0.0,0.0)

[BODY]
name=body mass=(0) inertia=(0,0,0)
pos=(0,0,0) ori=(0,0,0)

// Front spindles
[BODY]
name=fl_spindle mass=(12) inertia=(0.0300,0.025,0.025)
pos=(0.809,0.2185,-1.35375) ori=(0.0,0.0,0.0)

[BODY]
name=fr_spindle mass=(12) inertia=(0.0300,0.025,0.025)
pos=(-0.809,0.2185,-1.35375) ori=(0.0,0.0,0.0)

// Front wheels
[BODY]
name=fl_wheel mass=(36) inertia=(2.39805,1.3791,1.3791)
pos=(0.809,0.2185,-1.35375) ori=(0.0,0.0,0.0)

[BODY]
name=fr_wheel mass=(36) inertia=(2.39805,1.3791,1.3791)
pos=(-0.809,0.2185,-1.35375) ori=(0.0,0.0,0.0)

// Rear spindles
[BODY]
name=rl_spindle mass=(12) inertia=(0.0300,0.025,0.025)
pos=(0.809,0.2209,1.49625) ori=(0.0,0.0,0.0)

[BODY]
name=rr_spindle mass=(12) inertia=(0.0300,0.025,0.025)
pos=(-0.809,0.2209,1.49625) ori=(0.0,0.0,0.0)

// Rear wheels (includes half of rear-axle)
[BODY]
name=rl_wheel mass=(38) inertia=(2.531275,1.50511666666667,1.50511666666667)
pos=(0.809,0.2209,1.49625) ori=(0.0,0.0,0.0)

[BODY]
name=rr_wheel mass=(38) inertia=(2.531275,1.50511666666667,1.50511666666667)
pos=(-0.809,0.2209,1.49625) ori=(0.0,0.0,0.0)

[JOINT&HINGE]
posbody=fl_wheel negbody=fl_spindle pos=fl_wheel axis=(-1.00,0.0,0.0)

[JOINT&HINGE]
posbody=fr_wheel negbody=fr_spindle pos=fr_wheel axis=(1.00,0.0,0.0)

[JOINT&HINGE]
posbody=rl_wheel negbody=rl_spindle pos=rl_wheel axis=(-1.00,0.0,0.0)

[JOINT&HINGE]
posbody=rr_wheel negbody=rr_spindle pos=rr_wheel axis=(1.00,0.0,0.0)

// Front left suspension (2 A-arms + 1 steering arm = 5 links)
[BAR] // forward upper arm
name=fl_fore_upper posbody=body negbody=fl_spindle pos=(0.05,0.32,-1.328) neg=(0.7,0.39,-1.328)

[BAR] // rearward upper arm
posbody=body negbody=fl_spindle pos=(0.05,0.32,-1.02375) neg=(0.7,0.39,-1.328)

[BAR] // forward lower arm
posbody=body negbody=fl_spindle pos=(0.3,0.05,-1.36375) neg=(0.77,0.03,-1.36375)

[BAR] // rearward lower arm
name=fl_fore_lower posbody=body negbody=fl_spindle pos=(0.3,0.0838,-0.95375) neg=(0.77,0.03,-1.36375)

[BAR] // steering arm (must be named for identification)
name=fl_steering posbody=body negbody=fl_spindle pos=(0.325,0.2,-1.15375) neg=(0.7,0.21,-1.15375)

// Front right suspension (2 A-arms + 1 steering arm = 5 links)
[BAR] // forward upper arm (used in steering lock calculation)
name=fr_fore_upper posbody=body negbody=fr_spindle pos=(-0.05,0.32,-1.328) neg=(-0.7,0.39,-1.328)

[BAR] // rearward upper arm
posbody=body negbody=fr_spindle pos=(-0.05,0.32,-1.02375) neg=(-0.7,0.39,-1.328)

[BAR] // forward lower arm
name=fr_fore_lower posbody=body negbody=fr_spindle pos=(-0.3,0.05,-1.36375) neg=(-0.77,0.03,-1.36375)

[BAR] // rearward lower arm
posbody=body negbody=fr_spindle pos=(-0.3,0.0838,-0.95375) neg=(-0.77,0.03,-1.36375)

[BAR] // steering arm (must be named for identification)
name=fr_steering posbody=body negbody=fr_spindle pos=(-0.325,0.2,-1.15375) neg=(-0.7,0.21,-1.15375)

// Rear left suspension (2 A-arms + 1 straight link = 5 links)
[BAR] // forward upper arm
posbody=body negbody=rl_spindle pos=(0.3,0.35,1.09625) neg=(0.7,0.37,1.49625)

[BAR] // rearward upper arm
posbody=body negbody=rl_spindle pos=(0.3,0.35,1.49625) neg=(0.7,0.37,1.49625)

[BAR] // forward lower arm
posbody=body negbody=rl_spindle pos=(0.25,0.15,0.99625) neg=(0.7,0.07,1.49625)

[BAR] // rearward lower arm
posbody=body negbody=rl_spindle pos=(0.25,0.09,1.49625) neg=(0.7,0.07,1.49625)

[BAR] // straight link
posbody=body negbody=rl_spindle pos=(0.3,0.355,1.69625) neg=(0.7,0.37,1.69625)

// Rear right suspension (2 A-arms + 1 straight link = 5 links)
[BAR] // forward upper arm
posbody=body negbody=rr_spindle pos=(-0.3,0.35,1.09625) neg=(-0.7,0.37,1.49625)

[BAR] // rearward upper arm
posbody=body negbody=rr_spindle pos=(-0.3,0.35,1.49625) neg=(-0.7,0.37,1.49625)

[BAR] // forward lower arm
posbody=body negbody=rr_spindle pos=(-0.25,0.15,0.99625) neg=(-0.7,0.07,1.49625)

[BAR] // rearward lower arm
posbody=body negbody=rr_spindle pos=(-0.25,0.09,1.49625) neg=(-0.7,0.07,1.49625)

[BAR] // straight link
posbody=body negbody=rr_spindle pos=(-0.3,0.355,1.69625) neg=(-0.7,0.37,1.69625)
