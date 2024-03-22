// F1 Suspension Geometry

[BODY]
name=driver_head mass=(7) inertia=(0.035,0.035,0.035)
pos=(0.0,0.0,0.0) ori=(0.0,0.0,0.0)

[BODY]
name=fuel_tank mass=(1) inertia=(1.0,1.0,1.0)
pos=(0.0,0.0,0.0) ori=(0.0,0.0,0.0)

[BODY]
name=body mass=(0) inertia=(0,0,0)
pos=(0,0,0) ori=(0,0,0)

[BODY]
name=fr_wheel mass=(10) inertia=(0.655240625,0.349461666666667,0.349461666666667)
pos=(-0.912,0,-1.4375)

[BODY]
name=fl_wheel mass=(10) inertia=(0.655240625,0.349461666666667,0.349461666666667)
pos=(0.912,0,-1.4375)

[BODY]
name=rr_wheel mass=(15) inertia=(0.92691492584386,0.7129566386,0.7129566386)
pos=(-0.8345,0,1.4375)

[BODY]
name=rl_wheel mass=(15) inertia=(0.92691492584386,0.7129566386,0.7129566386)
pos=(0.8345,0,1.4375)

[BODY]
name=fl_spindle mass=(10.0) inertia=(0.0275,0.0260,0.0245)
pos=(0.8289,0,-1.4225) ori=(0.0,0.0,0.0)

[BODY]
name=fr_spindle mass=(10.0) inertia=(0.0275,0.0260,0.0245)
pos=(-0.8289,0,-1.4225) ori=(0.0,0.0,0.0)

[JOINT&HINGE]
posbody=fl_wheel negbody=fl_spindle pos=fl_wheel axis=(-1.00,0.0,0.0)

[JOINT&HINGE]
posbody=fr_wheel negbody=fr_spindle pos=fr_wheel axis=(1.00,0.0,0.0)

//Front-Left
[BAR]
name=fl_fore_upper posbody=body negbody=fl_spindle pos=(0.32, 0.033, -1.53) neg=(0.81, 0.13, -1.418)

[BAR]
posbody=body negbody=fl_spindle pos=(0.37, 0.047, -1.21) neg=(0.81, 0.13, -1.418)

[BAR]
posbody=body negbody=fl_spindle pos=(0.27, -0.195, -0.9) neg=(0.85, -0.18, -1.447)

[BAR]
name=fl_fore_lower posbody=body negbody=fl_spindle pos=(0.18, -0.215, -1.53) neg=(0.85, -0.18, -1.447)

//Front-Right
[BAR]
name=fr_fore_upper posbody=body negbody=fr_spindle pos=(-0.32, 0.033, -1.53) neg=(-0.81, 0.13, -1.418)

[BAR]
posbody=body negbody=fr_spindle pos=(-0.37, 0.047, -1.21) neg=(-0.81, 0.13, -1.418)

[BAR]
posbody=body negbody=fr_spindle pos=(-0.27, -0.195, -0.9) neg=(-0.85, -0.18, -1.447)

[BAR]
name=fr_fore_lower posbody=body negbody=fr_spindle pos=(-0.18, -0.215, -1.53) neg=(-0.85, -0.18, -1.447)

//Front-Left steering
[BAR]
name=fl_steering posbody=body negbody=fl_spindle pos=(0.32, 0.0287, -1.6) neg=(0.87, 0.136, -1.52)

//Front-Right steering
[BAR]
name=fr_steering posbody=body negbody=fr_spindle pos=(-0.32, 0.0287, -1.6) neg=(-0.87, 0.136, -1.52)

[BODY]
name=rl_spindle mass=(10.0) inertia=(0.0275,0.0260,0.0245)
pos=(0.7391,0,1.435) ori=(0.0,0.0,0.0)

[BODY]
name=rr_spindle mass=(10.0) inertia=(0.0275,0.0260,0.0245)
pos=(-0.7391,0,1.435) ori=(0.0,0.0,0.0)

[JOINT&HINGE]
posbody=rl_wheel negbody=rl_spindle pos=rl_wheel axis=(-1.00,0.0,0.0)

[JOINT&HINGE]
posbody=rr_wheel negbody=rr_spindle pos=rr_wheel axis=(1.00,0.0,0.0)

//Rear-Left
[BAR]
posbody=body negbody=rl_spindle pos=(0.25869301, 0.09539554, 1.135) neg=(0.73912288, 0.14859, 1.435)

[BAR]
posbody=body negbody=rl_spindle pos=(0.25869301, 0.0563632, 1.435) neg=(0.73912288, 0.14859, 1.435)

[BAR]
posbody=body negbody=rl_spindle pos=(0.1034772, -0.18520643, 1.435) neg=(0.73912288, -0.14859, 1.435)

[BAR]
posbody=body negbody=rl_spindle pos=(0.1034772, -0.14617409, 1.135) neg=(0.73912288, -0.14859, 1.435)

[BAR]
posbody=body negbody=rl_spindle pos=(0.25869301, 0.0563632, 1.535) neg=(0.73912288, 0.14859, 1.535)

//Rear-Right
[BAR]
posbody=body negbody=rr_spindle pos=(-0.25869301, 0.09539554, 1.135) neg=(-0.73912288, 0.14859, 1.435)

[BAR]
posbody=body negbody=rr_spindle pos=(-0.25869301, 0.0563632, 1.435) neg=(-0.73912288, 0.14859, 1.435)

[BAR]
posbody=body negbody=rr_spindle pos=(-0.1034772, -0.18520643, 1.435) neg=(-0.73912288, -0.14859, 1.435)

[BAR]
posbody=body negbody=rr_spindle pos=(-0.1034772, -0.14617409, 1.135) neg=(-0.73912288, -0.14859, 1.435)

[BAR]
posbody=body negbody=rr_spindle pos=(-0.25869301, 0.0563632, 1.535) neg=(-0.73912288, 0.14859, 1.535)

