//Maya ASCII 2014 scene
//Name: HomeGroup.ma
//Last modified: Sun, Jan 31, 2016 12:43:14 PM
//Codeset: 1252
requires maya "2014";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014 x64";
fileInfo "cutIdentifier" "201303010241-864206";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.7466986844039374 6.9754646889963245 -20.586398674654198 ;
	setAttr ".r" -type "double3" -17.738352729605669 186.60000000001247 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 21.918827240807953;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "Home";
createNode transform -n "CoreGroup" -p "Home";
createNode transform -n "Core" -p "CoreGroup";
createNode mesh -n "CoreShape" -p "Core";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "Core";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:44]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 54 ".uvst[0].uvsp[0:53]" -type "float2" 0 0.2 0.2 0.2 0.2
		 0.40000001 0 0.40000001 0.40000001 0.2 0.40000001 0.40000001 0.60000002 0.2 0.60000002
		 0.40000001 0.80000001 0.2 0.80000001 0.40000001 1 0.2 1 0.40000001 0.2 0.60000002
		 0 0.60000002 0.40000001 0.60000002 0.60000002 0.60000002 0.80000001 0.60000002 1
		 0.60000002 0.2 0.80000001 0 0.80000001 0.40000001 0.80000001 0.60000002 0.80000001
		 0.80000001 0.80000001 1 0.80000001 0.1 0 0.30000001 0 0.5 0 0.69999999 0 0.90000004
		 0 0.1 1 0.30000001 1 0.5 1 0.69999999 1 0.90000004 1 0.2 0.40000001 0.40000001 0.40000001
		 0.40000001 0.60000002 0.2 0.60000002 0.60000002 0.40000001 0.80000001 0.40000001
		 0.80000001 0.60000002 0.60000002 0.60000002 0.40000001 0.40000001 0.60000002 0.40000001
		 0.60000002 0.60000002 0.40000001 0.60000002 0.80000001 0.40000001 1 0.40000001 1
		 0.60000002 0.80000001 0.60000002 0 0.40000001 0.2 0.40000001 0.2 0.60000002 0 0.60000002;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".vt[0:41]"  0.38723788 -1.19179535 1.72478223 -1.013801575 -0.73657006 1.72478223
		 -1.013801575 0.73656988 1.72478223 0.3872377 1.19179523 1.72478223 1.25312757 7.6595718e-016 1.72478223
		 0.62656403 -1.92836523 0.65880811 -1.64036536 -1.19179547 0.65880811 -1.64036548 1.19179523 0.65880811
		 0.62656379 1.92836511 0.65880811 2.027603149 2.9256957e-016 0.65880811 0.62656403 -1.92836523 -0.65880811
		 -1.64036536 -1.19179547 -0.65880811 -1.64036548 1.19179523 -0.65880811 0.62656379 1.92836511 -0.65880811
		 2.027603149 -2.9256957e-016 -0.65880811 0.38723788 -1.19179535 -1.72478223 -1.013801575 -0.73657006 -1.72478223
		 -1.013801575 0.73656988 -1.72478223 0.3872377 1.19179523 -1.72478223 1.25312757 -7.6595718e-016 -1.72478223
		 0 9.467751e-016 2.13194799 0 -9.467751e-016 -2.13194799 -2.040365458 -0.98489547 0.45190811
		 -2.040365458 0.98489523 0.45190811 -2.040365458 0.98489523 -0.45190811 -2.040365458 -0.98489547 -0.45190811
		 1.071783423 1.99609375 0.45190811 2.22959709 0.40249974 0.45190811 2.22959709 0.40249974 -0.45190811
		 1.071783423 1.99609375 -0.45190811 -1.5981003 1.73125911 0.45190811 0.27528173 2.33995795 0.45190811
		 0.27528173 2.33995795 -0.45190811 -1.5981003 1.73125911 -0.45190811 2.31049895 -0.46127823 0.45190811
		 1.1526854 -2.054872274 0.45190811 1.1526854 -2.054872274 -0.45190811 2.31049895 -0.46127823 -0.45190811
		 0.3061837 -2.2448523 0.45190811 -1.56719851 -1.6361537 0.45190811 -1.56719851 -1.6361537 -0.45190811
		 0.3061837 -2.2448523 -0.45190811;
	setAttr -s 85 ".ed[0:84]"  0 1 0 1 2 0 2 3 0 3 4 0 4 0 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 5 0 10 11 0 11 12 0 12 13 0 13 14 0 14 10 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 15 0 0 5 0 1 6 0 2 7 0 3 8 0 4 9 0 5 10 0 6 11 0 7 12 0 8 13 0 9 14 0
		 10 15 0 11 16 0 12 17 0 13 18 0 14 19 0 20 0 0 20 1 0 20 2 0 20 3 0 20 4 0 15 21 0
		 16 21 0 17 21 0 18 21 0 19 21 0 6 22 0 7 23 0 22 23 0 12 24 0 23 24 0 11 25 0 25 24 0
		 22 25 0 8 26 0 9 27 0 26 27 0 14 28 0 27 28 0 13 29 0 29 28 0 26 29 0 7 30 0 8 31 0
		 30 31 0 13 32 0 31 32 0 12 33 0 33 32 0 30 33 0 9 34 0 5 35 0 34 35 0 10 36 0 35 36 0
		 14 37 0 37 36 0 34 37 0 5 38 0 6 39 0 38 39 0 11 40 0 39 40 0 10 41 0 41 40 0 38 41 0;
	setAttr -s 45 -ch 170 ".fc[0:44]" -type "polyFaces" 
		f 4 0 21 -6 -21
		mu 0 4 0 1 2 3
		f 4 1 22 -7 -22
		mu 0 4 1 4 5 2
		f 4 2 23 -8 -23
		mu 0 4 4 6 7 5
		f 4 3 24 -9 -24
		mu 0 4 6 8 9 7
		f 4 4 20 -10 -25
		mu 0 4 8 10 11 9
		f 4 79 81 -84 -85
		mu 0 4 50 51 52 53
		f 4 47 49 -52 -53
		mu 0 4 34 35 36 37
		f 4 63 65 -68 -69
		mu 0 4 42 43 44 45
		f 4 55 57 -60 -61
		mu 0 4 38 39 40 41
		f 4 71 73 -76 -77
		mu 0 4 46 47 48 49
		f 4 10 31 -16 -31
		mu 0 4 13 12 18 19
		f 4 11 32 -17 -32
		mu 0 4 12 14 20 18
		f 4 12 33 -18 -33
		mu 0 4 14 15 21 20
		f 4 13 34 -19 -34
		mu 0 4 15 16 22 21
		f 4 14 30 -20 -35
		mu 0 4 16 17 23 22
		f 3 -1 -36 36
		mu 0 3 1 0 24
		f 3 -2 -37 37
		mu 0 3 4 1 25
		f 3 -3 -38 38
		mu 0 3 6 4 26
		f 3 -4 -39 39
		mu 0 3 8 6 27
		f 3 -5 -40 35
		mu 0 3 10 8 28
		f 3 15 41 -41
		mu 0 3 19 18 29
		f 3 16 42 -42
		mu 0 3 18 20 30
		f 3 17 43 -43
		mu 0 3 20 21 31
		f 3 18 44 -44
		mu 0 3 21 22 32
		f 3 19 40 -45
		mu 0 3 22 23 33
		f 4 6 46 -48 -46
		mu 0 4 2 5 35 34
		f 4 27 48 -50 -47
		mu 0 4 5 14 36 35
		f 4 -12 50 51 -49
		mu 0 4 14 12 37 36
		f 4 -27 45 52 -51
		mu 0 4 12 2 34 37
		f 4 8 54 -56 -54
		mu 0 4 7 9 39 38
		f 4 29 56 -58 -55
		mu 0 4 9 16 40 39
		f 4 -14 58 59 -57
		mu 0 4 16 15 41 40
		f 4 -29 53 60 -59
		mu 0 4 15 7 38 41
		f 4 7 62 -64 -62
		mu 0 4 5 7 43 42
		f 4 28 64 -66 -63
		mu 0 4 7 15 44 43
		f 4 -13 66 67 -65
		mu 0 4 15 14 45 44
		f 4 -28 61 68 -67
		mu 0 4 14 5 42 45
		f 4 9 70 -72 -70
		mu 0 4 9 11 47 46
		f 4 25 72 -74 -71
		mu 0 4 11 17 48 47
		f 4 -15 74 75 -73
		mu 0 4 17 16 49 48
		f 4 -30 69 76 -75
		mu 0 4 16 9 46 49
		f 4 5 78 -80 -78
		mu 0 4 3 2 51 50
		f 4 26 80 -82 -79
		mu 0 4 2 12 52 51
		f 4 -11 82 83 -81
		mu 0 4 12 13 53 52
		f 4 -26 77 84 -83
		mu 0 4 13 3 50 53;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Core_OutLine" -p "CoreGroup";
createNode mesh -n "Core_OutLineShape" -p "Core_OutLine";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:44]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 54 ".uvst[0].uvsp[0:53]" -type "float2" 0 0.2 0.2 0.2 0.2
		 0.40000001 0 0.40000001 0.40000001 0.2 0.40000001 0.40000001 0.60000002 0.2 0.60000002
		 0.40000001 0.80000001 0.2 0.80000001 0.40000001 1 0.2 1 0.40000001 0.2 0.60000002
		 0 0.60000002 0.40000001 0.60000002 0.60000002 0.60000002 0.80000001 0.60000002 1
		 0.60000002 0.2 0.80000001 0 0.80000001 0.40000001 0.80000001 0.60000002 0.80000001
		 0.80000001 0.80000001 1 0.80000001 0.1 0 0.30000001 0 0.5 0 0.69999999 0 0.90000004
		 0 0.1 1 0.30000001 1 0.5 1 0.69999999 1 0.90000004 1 0.2 0.40000001 0.40000001 0.40000001
		 0.40000001 0.60000002 0.2 0.60000002 0.60000002 0.40000001 0.80000001 0.40000001
		 0.80000001 0.60000002 0.60000002 0.60000002 0.40000001 0.40000001 0.60000002 0.40000001
		 0.60000002 0.60000002 0.40000001 0.60000002 0.80000001 0.40000001 1 0.40000001 1
		 0.60000002 0.80000001 0.60000002 0 0.40000001 0.2 0.40000001 0.2 0.60000002 0 0.60000002;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".pt[0:41]" -type "float3"  -0.076581344 0.76867998 2.5754793 
		0.2004925 1.1338785 2.120254 0.2004925 2.3156857 0.64711416 -0.076581314 2.6808844 
		0.19188879 -0.24782234 1.7247822 1.383684 -0.12391122 -0.88819772 2.4568853 0.32440367 
		-0.29729423 1.7203157 0.3244037 1.6149102 -0.663275 -0.12391117 2.2058139 -1.3998449 
		-0.400985 0.65880811 0.52852023 -0.12391122 -2.2058139 1.399845 0.32440367 -1.6149105 
		0.66327524 0.3244037 0.29729405 -1.7203155 -0.12391117 0.8881976 -2.4568853 -0.400985 
		-0.65880811 -0.52852023 -0.076581344 -2.6808846 -0.19188868 0.2004925 -2.315686 -0.64711398 
		0.2004925 -1.1338787 -2.1202538 -0.076581314 -0.7686801 -2.5754793 -0.24782234 -1.7247822 
		-1.383684 0 2.131948 1.7103274 0 -2.131948 -1.7103274 0.4035089 -0.33821142 1.3474329 
		0.4035089 1.2420274 -0.62235785 0.4035089 0.33821124 -1.3474326 0.4035089 -1.2420276 
		0.62235808 -0.21195917 2.0532482 -1.6335564 -0.44093195 0.77480829 -0.039962355 -0.44093195 
		-0.12900795 -0.76503712 -0.21195917 1.1494321 -2.3586311 0.31604519 1.8407881 -1.3687217 
		-0.054440558 2.3291087 -1.9774206 -0.054440558 1.4252926 -2.7024953 0.31604519 0.9369719 
		-2.0937965 -0.45693135 0.081853673 0.82381558 -0.22795859 -1.1965864 2.4174097 -0.22795859 
		-2.1004026 1.6923349 -0.45693135 -0.82196254 0.098740846 -0.060551826 -1.3489953 
		2.6073897 0.30993396 -0.8606748 1.9986911 0.30993396 -1.7644911 1.2736163 -0.060551826 
		-2.2528117 1.8823149;
	setAttr -s 42 ".vt[0:41]"  0.38723788 -1.72478223 -1.19179535 -1.013801575 -1.72478223 -0.73657006
		 -1.013801575 -1.72478223 0.73656988 0.3872377 -1.72478223 1.19179523 1.25312757 -1.72478223 0
		 0.62656403 -0.65880811 -1.92836523 -1.64036536 -0.65880811 -1.19179547 -1.64036548 -0.65880811 1.19179523
		 0.62656379 -0.65880811 1.92836511 2.027603149 -0.65880811 0 0.62656403 0.65880811 -1.92836523
		 -1.64036536 0.65880811 -1.19179547 -1.64036548 0.65880811 1.19179523 0.62656379 0.65880811 1.92836511
		 2.027603149 0.65880811 0 0.38723788 1.72478223 -1.19179535 -1.013801575 1.72478223 -0.73657006
		 -1.013801575 1.72478223 0.73656988 0.3872377 1.72478223 1.19179523 1.25312757 1.72478223 0
		 0 -2.13194799 0 0 2.13194799 0 -2.040365458 -0.45190811 -0.98489547 -2.040365458 -0.45190811 0.98489523
		 -2.040365458 0.45190811 0.98489523 -2.040365458 0.45190811 -0.98489547 1.071783423 -0.45190811 1.99609375
		 2.22959709 -0.45190811 0.40249974 2.22959709 0.45190811 0.40249974 1.071783423 0.45190811 1.99609375
		 -1.5981003 -0.45190811 1.73125911 0.27528173 -0.45190811 2.33995795 0.27528173 0.45190811 2.33995795
		 -1.5981003 0.45190811 1.73125911 2.31049895 -0.45190811 -0.46127823 1.1526854 -0.45190811 -2.054872274
		 1.1526854 0.45190811 -2.054872274 2.31049895 0.45190811 -0.46127823 0.3061837 -0.45190811 -2.2448523
		 -1.56719851 -0.45190811 -1.6361537 -1.56719851 0.45190811 -1.6361537 0.3061837 0.45190811 -2.2448523;
	setAttr -s 85 ".ed[0:84]"  0 1 0 1 2 0 2 3 0 3 4 0 4 0 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 5 0 10 11 0 11 12 0 12 13 0 13 14 0 14 10 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 15 0 0 5 0 1 6 0 2 7 0 3 8 0 4 9 0 5 10 0 6 11 0 7 12 0 8 13 0 9 14 0
		 10 15 0 11 16 0 12 17 0 13 18 0 14 19 0 20 0 0 20 1 0 20 2 0 20 3 0 20 4 0 15 21 0
		 16 21 0 17 21 0 18 21 0 19 21 0 6 22 0 7 23 0 22 23 0 12 24 0 23 24 0 11 25 0 25 24 0
		 22 25 0 8 26 0 9 27 0 26 27 0 14 28 0 27 28 0 13 29 0 29 28 0 26 29 0 7 30 0 8 31 0
		 30 31 0 13 32 0 31 32 0 12 33 0 33 32 0 30 33 0 9 34 0 5 35 0 34 35 0 10 36 0 35 36 0
		 14 37 0 37 36 0 34 37 0 5 38 0 6 39 0 38 39 0 11 40 0 39 40 0 10 41 0 41 40 0 38 41 0;
	setAttr -s 45 -ch 170 ".fc[0:44]" -type "polyFaces" 
		f 4 0 21 -6 -21
		mu 0 4 0 1 2 3
		f 4 1 22 -7 -22
		mu 0 4 1 4 5 2
		f 4 2 23 -8 -23
		mu 0 4 4 6 7 5
		f 4 3 24 -9 -24
		mu 0 4 6 8 9 7
		f 4 4 20 -10 -25
		mu 0 4 8 10 11 9
		f 4 79 81 -84 -85
		mu 0 4 50 51 52 53
		f 4 47 49 -52 -53
		mu 0 4 34 35 36 37
		f 4 63 65 -68 -69
		mu 0 4 42 43 44 45
		f 4 55 57 -60 -61
		mu 0 4 38 39 40 41
		f 4 71 73 -76 -77
		mu 0 4 46 47 48 49
		f 4 10 31 -16 -31
		mu 0 4 13 12 18 19
		f 4 11 32 -17 -32
		mu 0 4 12 14 20 18
		f 4 12 33 -18 -33
		mu 0 4 14 15 21 20
		f 4 13 34 -19 -34
		mu 0 4 15 16 22 21
		f 4 14 30 -20 -35
		mu 0 4 16 17 23 22
		f 3 -1 -36 36
		mu 0 3 1 0 24
		f 3 -2 -37 37
		mu 0 3 4 1 25
		f 3 -3 -38 38
		mu 0 3 6 4 26
		f 3 -4 -39 39
		mu 0 3 8 6 27
		f 3 -5 -40 35
		mu 0 3 10 8 28
		f 3 15 41 -41
		mu 0 3 19 18 29
		f 3 16 42 -42
		mu 0 3 18 20 30
		f 3 17 43 -43
		mu 0 3 20 21 31
		f 3 18 44 -44
		mu 0 3 21 22 32
		f 3 19 40 -45
		mu 0 3 22 23 33
		f 4 6 46 -48 -46
		mu 0 4 2 5 35 34
		f 4 27 48 -50 -47
		mu 0 4 5 14 36 35
		f 4 -12 50 51 -49
		mu 0 4 14 12 37 36
		f 4 -27 45 52 -51
		mu 0 4 12 2 34 37
		f 4 8 54 -56 -54
		mu 0 4 7 9 39 38
		f 4 29 56 -58 -55
		mu 0 4 9 16 40 39
		f 4 -14 58 59 -57
		mu 0 4 16 15 41 40
		f 4 -29 53 60 -59
		mu 0 4 15 7 38 41
		f 4 7 62 -64 -62
		mu 0 4 5 7 43 42
		f 4 28 64 -66 -63
		mu 0 4 7 15 44 43
		f 4 -13 66 67 -65
		mu 0 4 15 14 45 44
		f 4 -28 61 68 -67
		mu 0 4 14 5 42 45
		f 4 9 70 -72 -70
		mu 0 4 9 11 47 46
		f 4 25 72 -74 -71
		mu 0 4 11 17 48 47
		f 4 -15 74 75 -73
		mu 0 4 17 16 49 48
		f 4 -30 69 76 -75
		mu 0 4 16 9 46 49
		f 4 5 78 -80 -78
		mu 0 4 3 2 51 50
		f 4 26 80 -82 -79
		mu 0 4 2 12 52 51
		f 4 -11 82 83 -81
		mu 0 4 12 13 53 52
		f 4 -26 77 84 -83
		mu 0 4 13 3 50 53;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "InnerRingGRoup" -p "Home";
createNode transform -n "InnerRing" -p "InnerRingGRoup";
createNode mesh -n "InnerRingShape" -p "InnerRing";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 66 ".uvst[0].uvsp[0:65]" -type "float2" 0 1 0.2 1 0.40000001
		 1 0.60000002 1 0.80000001 1 1 1 0 0.80000001 0.2 0.80000001 0.40000001 0.80000001
		 0.60000002 0.80000001 0.80000001 0.80000001 1 0.80000001 0 0.60000002 0.2 0.60000002
		 0.40000001 0.60000002 0.60000002 0.60000002 0.80000001 0.60000002 1 0.60000002 0
		 0.40000004 0.2 0.40000004 0.40000001 0.40000004 0.60000002 0.40000004 0.80000001
		 0.40000004 1 0.40000004 0 0.20000003 0.2 0.20000003 0.40000001 0.20000003 0.60000002
		 0.20000003 0.80000001 0.20000003 1 0.20000003 0 2.9802322e-008 0.2 2.9802322e-008
		 0.40000001 2.9802322e-008 0.60000002 2.9802322e-008 0.80000001 2.9802322e-008 1 2.9802322e-008
		 0.5 0.20000003 0.5 0.40000004 0.5 0.60000002 0.5 0.80000001 0.5 2.9802322e-008 0.5
		 1 0.70000005 0.20000003 0.70000005 0.40000004 0.70000005 0.60000002 0.70000005 0.80000001
		 0.70000005 2.9802322e-008 0.70000005 1 0.89999998 0.80000001 0.89999998 2.9802322e-008
		 0.89999998 1 0.89999998 0.20000003 0.89999998 0.40000004 0.89999998 0.60000002 0.1
		 0.20000003 0.1 0.40000004 0.1 0.60000002 0.1 0.80000001 0.1 2.9802322e-008 0.1 1
		 0.30000001 0.20000003 0.30000001 0.40000004 0.30000001 0.60000002 0.30000001 0.80000001
		 0.30000001 2.9802322e-008 0.30000001 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 50 ".vt[0:49]"  0.98220688 -3.022920847 1.3424465e-015 -2.57145 -1.86826813 8.2967772e-016
		 -2.57145 1.86826777 -8.2967756e-016 0.9822064 3.022920847 -1.3424465e-015 3.17848682 0 0
		 1.10296988 -3.39459133 -0.53788626 -2.88761163 -2.09797287 -0.53788626 -2.88761187 2.097972393 -0.53788626
		 1.10296941 3.39459085 -0.53788626 3.56928396 -2.3886949e-016 -0.53788626 1.29836857 -3.99596667 -0.33243197
		 -3.39917183 -2.46964335 -0.33243197 -3.39917207 2.46964288 -0.33243197 1.2983681 3.99596643 -0.33243197
		 4.20160723 -1.4762945e-016 -0.33243197 1.29836857 -3.99596667 0.33243206 -3.39917183 -2.46964335 0.33243206
		 -3.39917207 2.46964288 0.33243206 1.2983681 3.99596643 0.33243206 4.20160723 1.4762949e-016 0.33243206
		 1.10296988 -3.39459133 0.53788632 -2.88761163 -2.09797287 0.53788632 -2.88761187 2.097972393 0.53788632
		 1.10296941 3.39459085 0.53788632 3.56928396 2.3886951e-016 0.53788632 -0.96137071 3.080295563 0.60330617
		 -1.13867795 3.62599134 0.37286377 -1.13867795 3.62599134 -0.37286368 -0.96137071 3.080295563 -0.60330617
		 -0.85178882 2.74303722 -2.0499995e-009 2.65973401 1.90372729 0.60330617 3.12393045 2.24098587 0.37286377
		 3.12393045 2.24098587 -0.37286368 2.65973401 1.90372729 -0.60330617 2.37284493 1.69529021 -2.0499991e-009
		 2.65973425 -1.90372741 -0.60330617 2.37284517 -1.69529021 -2.0499977e-009 2.65973425 -1.90372741 0.60330617
		 3.12393069 -2.24098587 0.37286377 3.12393069 -2.24098587 -0.37286368 -0.96137029 -3.080295801 0.60330617
		 -1.13867748 -3.62599182 0.37286377 -1.13867748 -3.62599182 -0.37286368 -0.96137029 -3.080295801 -0.60330617
		 -0.85178846 -2.74303746 -2.0499973e-009 -3.19933677 -2.1046255e-007 0.60330617 -3.77311468 -1.348417e-007 0.37286377
		 -3.77311468 -1.348417e-007 -0.37286368 -3.19933677 -2.1046255e-007 -0.60330617 -2.84472179 -2.1046255e-007 -2.0499984e-009;
	setAttr -s 100 ".ed[0:99]"  0 44 0 1 49 0 2 29 0 3 34 0 4 36 0 5 43 0
		 6 48 0 7 28 0 8 33 0 9 35 0 10 42 0 11 47 0 12 27 0 13 32 0 14 39 0 15 41 0 16 46 0
		 17 26 0 18 31 0 19 38 0 20 40 0 21 45 0 22 25 0 23 30 0 24 37 0 0 5 0 1 6 0 2 7 0
		 3 8 0 4 9 0 5 10 0 6 11 0 7 12 0 8 13 0 9 14 0 10 15 0 11 16 0 12 17 0 13 18 0 14 19 0
		 15 20 0 16 21 0 17 22 0 18 23 0 19 24 0 20 0 0 21 1 0 22 2 0 23 3 0 24 4 0 25 23 0
		 26 18 0 25 26 1 27 13 0 26 27 1 28 8 0 27 28 1 29 3 0 28 29 1 29 25 1 30 24 0 31 19 0
		 30 31 1 32 14 0 31 32 1 33 9 0 32 33 1 34 4 0 33 34 1 34 30 1 35 5 0 36 0 0 35 36 1
		 37 20 0 36 37 1 38 15 0 37 38 1 39 10 0 38 39 1 39 35 1 40 21 0 41 16 0 40 41 1 42 11 0
		 41 42 1 43 6 0 42 43 1 44 1 0 43 44 1 44 40 1 45 22 0 46 17 0 45 46 1 47 12 0 46 47 1
		 48 7 0 47 48 1 49 2 0 48 49 1 49 45 1;
	setAttr -s 50 -ch 200 ".fc[0:49]" -type "polyFaces" 
		f 4 -1 25 5 88
		mu 0 4 59 0 6 57
		f 4 -2 26 6 98
		mu 0 4 65 1 7 63
		f 4 -3 27 7 58
		mu 0 4 41 2 8 39
		f 4 -4 28 8 68
		mu 0 4 47 3 9 45
		f 4 -5 29 9 72
		mu 0 4 50 4 10 48
		f 4 -6 30 10 86
		mu 0 4 57 6 12 56
		f 4 -7 31 11 96
		mu 0 4 63 7 13 62
		f 4 -8 32 12 56
		mu 0 4 39 8 14 38
		f 4 -9 33 13 66
		mu 0 4 45 9 15 44
		f 4 79 -10 34 14
		mu 0 4 53 48 10 16
		f 4 -11 35 15 84
		mu 0 4 56 12 18 55
		f 4 -12 36 16 94
		mu 0 4 62 13 19 61
		f 4 -13 37 17 54
		mu 0 4 38 14 20 37
		f 4 -14 38 18 64
		mu 0 4 44 15 21 43
		f 4 -15 39 19 78
		mu 0 4 53 16 22 52
		f 4 -16 40 20 82
		mu 0 4 55 18 24 54
		f 4 -17 41 21 92
		mu 0 4 61 19 25 60
		f 4 -18 42 22 52
		mu 0 4 37 20 26 36
		f 4 -19 43 23 62
		mu 0 4 43 21 27 42
		f 4 -20 44 24 76
		mu 0 4 52 22 28 51
		f 4 89 -21 45 0
		mu 0 4 58 54 24 30
		f 4 99 -22 46 1
		mu 0 4 64 60 25 31
		f 4 59 -23 47 2
		mu 0 4 40 36 26 32
		f 4 69 -24 48 3
		mu 0 4 46 42 27 33
		f 4 -25 49 4 74
		mu 0 4 51 28 34 49
		f 4 -52 -53 50 -44
		mu 0 4 21 37 36 27
		f 4 -54 -55 51 -39
		mu 0 4 15 38 37 21
		f 4 -56 -57 53 -34
		mu 0 4 9 39 38 15
		f 4 -58 -59 55 -29
		mu 0 4 3 41 39 9
		f 4 -51 -60 57 -49
		mu 0 4 27 36 40 33
		f 4 -62 -63 60 -45
		mu 0 4 22 43 42 28
		f 4 -64 -65 61 -40
		mu 0 4 16 44 43 22
		f 4 -66 -67 63 -35
		mu 0 4 10 45 44 16
		f 4 -68 -69 65 -30
		mu 0 4 4 47 45 10
		f 4 -61 -70 67 -50
		mu 0 4 28 42 46 34
		f 4 -72 -73 70 -26
		mu 0 4 5 50 48 11
		f 4 -74 -75 71 -46
		mu 0 4 29 51 49 35
		f 4 -76 -77 73 -41
		mu 0 4 23 52 51 29
		f 4 -78 -79 75 -36
		mu 0 4 17 53 52 23
		f 4 -71 -80 77 -31
		mu 0 4 11 48 53 17
		f 4 -82 -83 80 -42
		mu 0 4 19 55 54 25
		f 4 -84 -85 81 -37
		mu 0 4 13 56 55 19
		f 4 -86 -87 83 -32
		mu 0 4 7 57 56 13
		f 4 -88 -89 85 -27
		mu 0 4 1 59 57 7
		f 4 -81 -90 87 -47
		mu 0 4 25 54 58 31
		f 4 -92 -93 90 -43
		mu 0 4 20 61 60 26
		f 4 -94 -95 91 -38
		mu 0 4 14 62 61 20
		f 4 -96 -97 93 -33
		mu 0 4 8 63 62 14
		f 4 -98 -99 95 -28
		mu 0 4 2 65 63 8
		f 4 -91 -100 97 -48
		mu 0 4 26 60 64 32;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "OuterRingGroup" -p "Home";
createNode transform -n "OuterRing" -p "OuterRingGroup";
createNode mesh -n "OuterRingShape" -p "OuterRing";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 66 ".uvst[0].uvsp[0:65]" -type "float2" 0 1 0.2 1 0.40000001
		 1 0.60000002 1 0.80000001 1 1 1 0 0.80000001 0.2 0.80000001 0.40000001 0.80000001
		 0.60000002 0.80000001 0.80000001 0.80000001 1 0.80000001 0 0.60000002 0.2 0.60000002
		 0.40000001 0.60000002 0.60000002 0.60000002 0.80000001 0.60000002 1 0.60000002 0
		 0.40000004 0.2 0.40000004 0.40000001 0.40000004 0.60000002 0.40000004 0.80000001
		 0.40000004 1 0.40000004 0 0.20000003 0.2 0.20000003 0.40000001 0.20000003 0.60000002
		 0.20000003 0.80000001 0.20000003 1 0.20000003 0 2.9802322e-008 0.2 2.9802322e-008
		 0.40000001 2.9802322e-008 0.60000002 2.9802322e-008 0.80000001 2.9802322e-008 1 2.9802322e-008
		 0.5 0.20000003 0.5 0.40000004 0.5 0.60000002 0.5 0.80000001 0.5 2.9802322e-008 0.5
		 1 0.70000005 0.20000003 0.70000005 0.40000004 0.70000005 0.60000002 0.70000005 0.80000001
		 0.70000005 2.9802322e-008 0.70000005 1 0.89999998 0.80000001 0.89999998 2.9802322e-008
		 0.89999998 1 0.89999998 0.20000003 0.89999998 0.40000004 0.89999998 0.60000002 0.1
		 0.20000003 0.1 0.40000004 0.1 0.60000002 0.1 0.80000001 0.1 2.9802322e-008 0.1 1
		 0.30000001 0.20000003 0.30000001 0.40000004 0.30000001 0.60000002 0.30000001 0.80000001
		 0.30000001 2.9802322e-008 0.30000001 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 50 ".pt[0:49]" -type "float3"  0.70036691 -4.8279757 2.6724689 
		-1.8335837 -2.9838536 1.6516769 -1.8335837 2.9838531 -1.6516765 0.70036656 4.8279757 
		-2.6724689 2.266434 0 0 0.78647751 -5.8971071 2.1419806 -2.0590241 -3.8262486 0.99568117 
		-2.0590241 2.8751915 -2.7138216 0.78647709 4.9460502 -3.860121 2.5450935 -0.47552827 
		-0.85907042 0.92580742 -6.6759419 3.0017731 -2.4237943 -4.2382159 1.6523989 -2.4237945 
		3.6504304 -2.7142682 0.925807 6.0881562 -4.0636425 2.9959745 -0.29389262 -0.53093469 
		0.92580742 -6.0881567 4.0636425 -2.4237943 -3.6504309 2.7142684 -2.4237945 4.2382159 
		-1.6523986 0.925807 6.6759415 -3.0017729 2.9959745 0.29389268 0.53093481 0.78647751 
		-4.9460506 3.8601215 -2.0590241 -2.8751919 2.7138221 -2.0590241 3.8262479 -0.99568075 
		0.78647709 5.8971071 -2.1419802 2.5450935 0.4755283 0.85907048 -0.74655402 5.3951383 
		-1.4643469 -0.88998127 6.0850463 -2.2625113 -0.88998127 5.4972606 -3.4535296 -0.74655402 
		4.4440818 -3.3914552 -0.65791124 4.3809671 -2.1620727 2.1826258 3.5160146 -0.53697133 
		2.5581231 3.8730223 -1.1708447 2.5581231 3.2852371 -2.3618629 2.1826258 2.5649579 
		-2.4640794 1.950556 2.7075868 -1.3362345 2.182626 -3.5160148 0.53697145 1.9505562 
		-2.7075868 1.3362345 2.182626 -2.5649581 2.4640796 2.5581234 -3.2852371 2.3618631 
		2.5581234 -3.8730223 1.1708449 -0.74655372 -4.4440823 3.3914554 -0.88998085 -5.497261 
		3.4535301 -0.88998085 -6.0850468 2.2625117 -0.74655372 -5.3951387 1.4643471 -0.65791094 
		-4.3809676 2.1620729 -2.5568871 0.47552791 0.9635542 -3.0210268 0.29389247 0.59550935 
		-3.0210268 -0.29389283 -0.59550899 -2.5568871 -0.47552863 -0.96355385 -2.2700324 
		-3.3613452e-007 1.7553984e-007;
	setAttr -s 50 ".vt[0:49]"  0.86833811 0 -2.6724689 -2.27333784 0 -1.65167689
		 -2.27333784 0 1.65167654 0.86833769 0 2.6724689 2.80999994 0 0 0.97510087 0.47552827 -3.0010509491
		 -2.55284619 0.47552827 -1.85475159 -2.55284643 0.47552827 1.85475123 0.9751004 0.47552827 3.0010507107
		 3.15549135 0.47552827 0 1.1478467 0.29389262 -3.53270793 -3.0051004887 0.29389262 -2.18333364
		 -3.0051007271 0.29389262 2.1833334 1.14784622 0.29389262 3.53270769 3.71450853 0.29389262 0
		 1.1478467 -0.29389268 -3.53270793 -3.0051004887 -0.29389268 -2.18333364 -3.0051007271 -0.29389268 2.1833334
		 1.14784622 -0.29389268 3.53270769 3.71450853 -0.29389268 0 0.97510087 -0.4755283 -3.0010509491
		 -2.55284619 -0.4755283 -1.85475159 -2.55284643 -0.4755283 1.85475123 0.9751004 -0.4755283 3.0010507107
		 3.15549135 -0.4755283 0 -0.78887302 -0.4755283 2.42790103 -0.92862725 -0.29389268 2.85802054
		 -0.92862725 0.29389262 2.85802054 -0.78887302 0.47552827 2.42790103 -0.7025001 0 2.16207266
		 2.065295935 -0.4755283 1.50052536 2.43117738 -0.29389268 1.76635385 2.43117738 0.29389262 1.76635385
		 2.065295935 0.47552827 1.50052536 1.83916879 0 1.33623445 2.065296173 0.47552827 -1.50052547
		 1.83916903 0 -1.33623445 2.065296173 -0.4755283 -1.50052547 2.43117762 -0.29389268 -1.76635396
		 2.43117762 0.29389262 -1.76635396 -0.78887266 -0.4755283 -2.42790127 -0.92862689 -0.29389268 -2.85802078
		 -0.92862689 0.29389262 -2.85802078 -0.78887266 0.47552827 -2.42790127 -0.70249987 0 -2.1620729
		 -2.55284643 -0.4755283 -1.7881393e-007 -3.0051007271 -0.29389268 -1.1920929e-007
		 -3.0051007271 0.29389262 -1.1920929e-007 -2.55284643 0.47552827 -1.7881393e-007 -2.27333784 0 -1.7881393e-007;
	setAttr -s 100 ".ed[0:99]"  0 44 0 1 49 0 2 29 0 3 34 0 4 36 0 5 43 0
		 6 48 0 7 28 0 8 33 0 9 35 0 10 42 0 11 47 0 12 27 0 13 32 0 14 39 0 15 41 0 16 46 0
		 17 26 0 18 31 0 19 38 0 20 40 0 21 45 0 22 25 0 23 30 0 24 37 0 0 5 0 1 6 0 2 7 0
		 3 8 0 4 9 0 5 10 0 6 11 0 7 12 0 8 13 0 9 14 0 10 15 0 11 16 0 12 17 0 13 18 0 14 19 0
		 15 20 0 16 21 0 17 22 0 18 23 0 19 24 0 20 0 0 21 1 0 22 2 0 23 3 0 24 4 0 25 23 0
		 26 18 0 25 26 1 27 13 0 26 27 1 28 8 0 27 28 1 29 3 0 28 29 1 29 25 1 30 24 0 31 19 0
		 30 31 1 32 14 0 31 32 1 33 9 0 32 33 1 34 4 0 33 34 1 34 30 1 35 5 0 36 0 0 35 36 1
		 37 20 0 36 37 1 38 15 0 37 38 1 39 10 0 38 39 1 39 35 1 40 21 0 41 16 0 40 41 1 42 11 0
		 41 42 1 43 6 0 42 43 1 44 1 0 43 44 1 44 40 1 45 22 0 46 17 0 45 46 1 47 12 0 46 47 1
		 48 7 0 47 48 1 49 2 0 48 49 1 49 45 1;
	setAttr -s 50 -ch 200 ".fc[0:49]" -type "polyFaces" 
		f 4 -1 25 5 88
		mu 0 4 59 0 6 57
		f 4 -2 26 6 98
		mu 0 4 65 1 7 63
		f 4 -3 27 7 58
		mu 0 4 41 2 8 39
		f 4 -4 28 8 68
		mu 0 4 47 3 9 45
		f 4 -5 29 9 72
		mu 0 4 50 4 10 48
		f 4 -6 30 10 86
		mu 0 4 57 6 12 56
		f 4 -7 31 11 96
		mu 0 4 63 7 13 62
		f 4 -8 32 12 56
		mu 0 4 39 8 14 38
		f 4 -9 33 13 66
		mu 0 4 45 9 15 44
		f 4 79 -10 34 14
		mu 0 4 53 48 10 16
		f 4 -11 35 15 84
		mu 0 4 56 12 18 55
		f 4 -12 36 16 94
		mu 0 4 62 13 19 61
		f 4 -13 37 17 54
		mu 0 4 38 14 20 37
		f 4 -14 38 18 64
		mu 0 4 44 15 21 43
		f 4 -15 39 19 78
		mu 0 4 53 16 22 52
		f 4 -16 40 20 82
		mu 0 4 55 18 24 54
		f 4 -17 41 21 92
		mu 0 4 61 19 25 60
		f 4 -18 42 22 52
		mu 0 4 37 20 26 36
		f 4 -19 43 23 62
		mu 0 4 43 21 27 42
		f 4 -20 44 24 76
		mu 0 4 52 22 28 51
		f 4 89 -21 45 0
		mu 0 4 58 54 24 30
		f 4 99 -22 46 1
		mu 0 4 64 60 25 31
		f 4 59 -23 47 2
		mu 0 4 40 36 26 32
		f 4 69 -24 48 3
		mu 0 4 46 42 27 33
		f 4 -25 49 4 74
		mu 0 4 51 28 34 49
		f 4 -52 -53 50 -44
		mu 0 4 21 37 36 27
		f 4 -54 -55 51 -39
		mu 0 4 15 38 37 21
		f 4 -56 -57 53 -34
		mu 0 4 9 39 38 15
		f 4 -58 -59 55 -29
		mu 0 4 3 41 39 9
		f 4 -51 -60 57 -49
		mu 0 4 27 36 40 33
		f 4 -62 -63 60 -45
		mu 0 4 22 43 42 28
		f 4 -64 -65 61 -40
		mu 0 4 16 44 43 22
		f 4 -66 -67 63 -35
		mu 0 4 10 45 44 16
		f 4 -68 -69 65 -30
		mu 0 4 4 47 45 10
		f 4 -61 -70 67 -50
		mu 0 4 28 42 46 34
		f 4 -72 -73 70 -26
		mu 0 4 5 50 48 11
		f 4 -74 -75 71 -46
		mu 0 4 29 51 49 35
		f 4 -76 -77 73 -41
		mu 0 4 23 52 51 29
		f 4 -78 -79 75 -36
		mu 0 4 17 53 52 23
		f 4 -71 -80 77 -31
		mu 0 4 11 48 53 17
		f 4 -82 -83 80 -42
		mu 0 4 19 55 54 25
		f 4 -84 -85 81 -37
		mu 0 4 13 56 55 19
		f 4 -86 -87 83 -32
		mu 0 4 7 57 56 13
		f 4 -88 -89 85 -27
		mu 0 4 1 59 57 7
		f 4 -81 -90 87 -47
		mu 0 4 25 54 58 31
		f 4 -92 -93 90 -43
		mu 0 4 20 61 60 26
		f 4 -94 -95 91 -38
		mu 0 4 14 62 61 20
		f 4 -96 -97 93 -33
		mu 0 4 8 63 62 14
		f 4 -98 -99 95 -28
		mu 0 4 2 65 63 8
		f 4 -91 -100 97 -48
		mu 0 4 26 60 64 32;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode groupId -n "groupId16";
	setAttr ".ihi" 0;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n"
		+ "            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n"
		+ "            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n"
		+ "                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n"
		+ "                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n"
		+ "                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n"
		+ "                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n"
		+ "                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 20 100 -ps 2 80 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode polyNormal -n "polyNormal1";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId17";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:44]";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyNormal1.out" "CoreShape.i";
connectAttr "groupId17.id" "CoreShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "CoreShape.iog.og[0].gco";
connectAttr "groupId16.id" "Core_OutLineShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Core_OutLineShape.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "groupParts1.og" "polyNormal1.ip";
connectAttr "polySurfaceShape1.o" "groupParts1.ig";
connectAttr "groupId17.id" "groupParts1.gi";
connectAttr "InnerRingShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Core_OutLineShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "OuterRingShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "CoreShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId16.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId17.msg" ":initialShadingGroup.gn" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of HomeGroup.ma
