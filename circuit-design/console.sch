EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_Coaxial J3
U 1 1 60250367
P 7500 2700
F 0 "J3" H 7600 2675 50  0000 L CNN
F 1 "VIDEO (YELLOW)" H 7600 2584 50  0000 L CNN
F 2 "Neomura_Console:RCA_Jack" H 7500 2700 50  0001 C CNN
F 3 " ~" H 7500 2700 50  0001 C CNN
	1    7500 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J4
U 1 1 60250B78
P 7500 3300
F 0 "J4" H 7600 3275 50  0000 L CNN
F 1 "AUDIO (WHITE)" H 7600 3184 50  0000 L CNN
F 2 "Neomura_Console:RCA_Jack" H 7500 3300 50  0001 C CNN
F 3 " ~" H 7500 3300 50  0001 C CNN
	1    7500 3300
	1    0    0    -1  
$EndComp
Text GLabel 6300 2850 2    50   Output ~ 0
VIDEO
Text GLabel 6300 2950 2    50   Output ~ 0
AUDIO
Text GLabel 6300 3250 2    50   Input ~ 0
RESET
NoConn ~ 6300 3350
$Comp
L power:GND #PWR0101
U 1 1 60252EE9
P 5700 3900
F 0 "#PWR0101" H 5700 3650 50  0001 C CNN
F 1 "GND" H 5705 3727 50  0000 C CNN
F 2 "" H 5700 3900 50  0001 C CNN
F 3 "" H 5700 3900 50  0001 C CNN
	1    5700 3900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 60253978
P 1950 1300
F 0 "#PWR0102" H 1950 1150 50  0001 C CNN
F 1 "+5V" H 1965 1473 50  0000 C CNN
F 2 "" H 1950 1300 50  0001 C CNN
F 3 "" H 1950 1300 50  0001 C CNN
	1    1950 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 60254200
P 7500 3500
F 0 "#PWR0103" H 7500 3250 50  0001 C CNN
F 1 "GND" H 7505 3327 50  0000 C CNN
F 2 "" H 7500 3500 50  0001 C CNN
F 3 "" H 7500 3500 50  0001 C CNN
	1    7500 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 602546B6
P 7500 2900
F 0 "#PWR0104" H 7500 2650 50  0001 C CNN
F 1 "GND" H 7505 2727 50  0000 C CNN
F 2 "" H 7500 2900 50  0001 C CNN
F 3 "" H 7500 2900 50  0001 C CNN
	1    7500 2900
	1    0    0    -1  
$EndComp
Text GLabel 7300 3300 0    50   Input ~ 0
AUDIO
Text GLabel 7300 2700 0    50   Input ~ 0
VIDEO
$Comp
L Neomura_Console:Controller_Port J8
U 1 1 60258449
P 9500 1000
F 0 "J8" H 9606 1195 50  0000 L CNN
F 1 "PAD 3" H 9606 1096 50  0000 L CNN
F 2 "Neomura_Console:Pad_Connector" H 9900 400 50  0001 C CNN
F 3 "" H 9900 400 50  0001 C CNN
	1    9500 1000
	1    0    0    -1  
$EndComp
Text GLabel 5100 3350 0    50   Output ~ 0
PAD_LATCH
Text GLabel 5100 3250 0    50   Output ~ 0
PAD_CLOCK
Text GLabel 9950 1400 2    50   Input ~ 0
PAD_CLOCK
Text GLabel 9950 1300 2    50   Input ~ 0
PAD_LATCH
Text GLabel 5100 2850 0    50   Input ~ 0
PAD_DATA_3
Text GLabel 5100 2950 0    50   Input ~ 0
PAD_DATA_2
Text GLabel 5100 3050 0    50   Input ~ 0
PAD_DATA_1
Text GLabel 5100 3150 0    50   Input ~ 0
PAD_DATA_0
Text GLabel 9050 1250 0    50   Output ~ 0
PAD_DATA_3
NoConn ~ 9050 1350
NoConn ~ 9050 1450
$Comp
L Neomura_Cartridge:Connector J1
U 1 1 6024EFCA
P 5200 2450
F 0 "J1" H 5806 2548 50  0000 L CNN
F 1 "CARTRIDGE" H 5806 2450 50  0000 L CNN
F 2 "Neomura_Cartridge:Slot-Vertical" H 6300 1300 50  0001 C CNN
F 3 "" H 6300 1300 50  0001 C CNN
	1    5200 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 60261099
P 9500 1800
F 0 "#PWR0105" H 9500 1550 50  0001 C CNN
F 1 "GND" H 9505 1627 50  0000 C CNN
F 2 "" H 9500 1800 50  0001 C CNN
F 3 "" H 9500 1800 50  0001 C CNN
	1    9500 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 60261DC3
P 5700 2450
F 0 "#PWR0106" H 5700 2300 50  0001 C CNN
F 1 "+5V" H 5715 2623 50  0000 C CNN
F 2 "" H 5700 2450 50  0001 C CNN
F 3 "" H 5700 2450 50  0001 C CNN
	1    5700 2450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0107
U 1 1 60264889
P 9500 900
F 0 "#PWR0107" H 9500 750 50  0001 C CNN
F 1 "+5V" H 9515 1073 50  0000 C CNN
F 2 "" H 9500 900 50  0001 C CNN
F 3 "" H 9500 900 50  0001 C CNN
	1    9500 900 
	1    0    0    -1  
$EndComp
$Comp
L Neomura_Console:Controller_Port J7
U 1 1 602664D5
P 7550 1050
F 0 "J7" H 7656 1245 50  0000 L CNN
F 1 "PAD 2" H 7656 1146 50  0000 L CNN
F 2 "Neomura_Console:Pad_Connector" H 7950 450 50  0001 C CNN
F 3 "" H 7950 450 50  0001 C CNN
	1    7550 1050
	1    0    0    -1  
$EndComp
Text GLabel 8000 1450 2    50   Input ~ 0
PAD_CLOCK
Text GLabel 8000 1350 2    50   Input ~ 0
PAD_LATCH
Text GLabel 7100 1300 0    50   Output ~ 0
PAD_DATA_2
NoConn ~ 7100 1400
NoConn ~ 7100 1500
$Comp
L power:GND #PWR0108
U 1 1 602664E0
P 7550 1850
F 0 "#PWR0108" H 7550 1600 50  0001 C CNN
F 1 "GND" H 7555 1677 50  0000 C CNN
F 2 "" H 7550 1850 50  0001 C CNN
F 3 "" H 7550 1850 50  0001 C CNN
	1    7550 1850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0109
U 1 1 602664E6
P 7550 950
F 0 "#PWR0109" H 7550 800 50  0001 C CNN
F 1 "+5V" H 7565 1123 50  0000 C CNN
F 2 "" H 7550 950 50  0001 C CNN
F 3 "" H 7550 950 50  0001 C CNN
	1    7550 950 
	1    0    0    -1  
$EndComp
$Comp
L Neomura_Console:Controller_Port J6
U 1 1 60267867
P 5600 1050
F 0 "J6" H 5706 1245 50  0000 L CNN
F 1 "PAD 1" H 5706 1146 50  0000 L CNN
F 2 "Neomura_Console:Pad_Connector" H 6000 450 50  0001 C CNN
F 3 "" H 6000 450 50  0001 C CNN
	1    5600 1050
	1    0    0    -1  
$EndComp
Text GLabel 6050 1450 2    50   Input ~ 0
PAD_CLOCK
Text GLabel 6050 1350 2    50   Input ~ 0
PAD_LATCH
Text GLabel 5150 1300 0    50   Output ~ 0
PAD_DATA_1
NoConn ~ 5150 1400
NoConn ~ 5150 1500
$Comp
L power:GND #PWR0110
U 1 1 60267872
P 5600 1850
F 0 "#PWR0110" H 5600 1600 50  0001 C CNN
F 1 "GND" H 5605 1677 50  0000 C CNN
F 2 "" H 5600 1850 50  0001 C CNN
F 3 "" H 5600 1850 50  0001 C CNN
	1    5600 1850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0111
U 1 1 60267878
P 5600 950
F 0 "#PWR0111" H 5600 800 50  0001 C CNN
F 1 "+5V" H 5615 1123 50  0000 C CNN
F 2 "" H 5600 950 50  0001 C CNN
F 3 "" H 5600 950 50  0001 C CNN
	1    5600 950 
	1    0    0    -1  
$EndComp
$Comp
L Neomura_Console:Controller_Port J5
U 1 1 6026818B
P 3650 1050
F 0 "J5" H 3756 1245 50  0000 L CNN
F 1 "PAD 0" H 3756 1146 50  0000 L CNN
F 2 "Neomura_Console:Pad_Connector" H 4050 450 50  0001 C CNN
F 3 "" H 4050 450 50  0001 C CNN
	1    3650 1050
	1    0    0    -1  
$EndComp
Text GLabel 4100 1450 2    50   Input ~ 0
PAD_CLOCK
Text GLabel 4100 1350 2    50   Input ~ 0
PAD_LATCH
Text GLabel 3200 1300 0    50   Output ~ 0
PAD_DATA_0
NoConn ~ 3200 1400
NoConn ~ 3200 1500
$Comp
L power:GND #PWR0112
U 1 1 60268196
P 3650 1850
F 0 "#PWR0112" H 3650 1600 50  0001 C CNN
F 1 "GND" H 3655 1677 50  0000 C CNN
F 2 "" H 3650 1850 50  0001 C CNN
F 3 "" H 3650 1850 50  0001 C CNN
	1    3650 1850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0113
U 1 1 6026819C
P 3650 950
F 0 "#PWR0113" H 3650 800 50  0001 C CNN
F 1 "+5V" H 3665 1123 50  0000 C CNN
F 2 "" H 3650 950 50  0001 C CNN
F 3 "" H 3650 950 50  0001 C CNN
	1    3650 950 
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DPDT_x2 SW1
U 1 1 6026968B
P 1650 1200
F 0 "SW1" H 1650 1485 50  0000 C CNN
F 1 "POWER_SW" H 1650 1394 50  0000 C CNN
F 2 "Neomura_Console:BS800L" H 1650 1200 50  0001 C CNN
F 3 "~" H 1650 1200 50  0001 C CNN
	1    1650 1200
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DPDT_x2 SW1
U 2 1 60269EAF
P 1650 1700
F 0 "SW1" H 1650 1985 50  0000 C CNN
F 1 "POWER_SW" H 1650 1894 50  0000 C CNN
F 2 "Neomura_Console:BS800L" H 1650 1700 50  0001 C CNN
F 3 "~" H 1650 1700 50  0001 C CNN
	2    1650 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 602532CC
P 1200 1400
F 0 "#PWR0114" H 1200 1150 50  0001 C CNN
F 1 "GND" H 1205 1227 50  0000 C CNN
F 2 "" H 1200 1400 50  0001 C CNN
F 3 "" H 1200 1400 50  0001 C CNN
	1    1200 1400
	1    0    0    -1  
$EndComp
NoConn ~ 1850 1600
NoConn ~ 1850 1100
Wire Wire Line
	1850 1300 1950 1300
$Comp
L Device:R R1
U 1 1 6026EAC1
P 2100 1550
F 0 "R1" V 1893 1550 50  0000 C CNN
F 1 "240R" V 1984 1550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2030 1550 50  0001 C CNN
F 3 "~" H 2100 1550 50  0001 C CNN
	1    2100 1550
	0    1    1    0   
$EndComp
Connection ~ 1950 1300
$Comp
L Device:LED D1
U 1 1 6026F0F0
P 2250 1700
F 0 "D1" V 2289 1582 50  0000 R CNN
F 1 "LED" V 2198 1582 50  0000 R CNN
F 2 "LED_THT:LED_Rectangular_W5.0mm_H2.0mm" H 2250 1700 50  0001 C CNN
F 3 "~" H 2250 1700 50  0001 C CNN
	1    2250 1700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 6026FD7B
P 2250 1850
F 0 "#PWR0115" H 2250 1600 50  0001 C CNN
F 1 "GND" H 2255 1677 50  0000 C CNN
F 2 "" H 2250 1850 50  0001 C CNN
F 3 "" H 2250 1850 50  0001 C CNN
	1    2250 1850
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DPDT_x2 SW2
U 1 1 60270AB2
P 1150 2800
F 0 "SW2" H 1150 3085 50  0000 C CNN
F 1 "RESET_SW" H 1150 2994 50  0000 C CNN
F 2 "Neomura_Console:BS800L" H 1150 2800 50  0001 C CNN
F 3 "~" H 1150 2800 50  0001 C CNN
	1    1150 2800
	1    0    0    -1  
$EndComp
NoConn ~ 1350 2700
Text GLabel 950  2800 0    50   Output ~ 0
RESET
$Comp
L power:GND #PWR0116
U 1 1 60271D08
P 1400 3500
F 0 "#PWR0116" H 1400 3250 50  0001 C CNN
F 1 "GND" H 1405 3327 50  0000 C CNN
F 2 "" H 1400 3500 50  0001 C CNN
F 3 "" H 1400 3500 50  0001 C CNN
	1    1400 3500
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DPDT_x2 SW2
U 2 1 60272C0D
P 1150 3400
F 0 "SW2" H 1150 3685 50  0000 C CNN
F 1 "RESET_SW" H 1150 3594 50  0000 C CNN
F 2 "Neomura_Console:BS800L" H 1150 3400 50  0001 C CNN
F 3 "~" H 1150 3400 50  0001 C CNN
	2    1150 3400
	1    0    0    -1  
$EndComp
NoConn ~ 1350 3300
NoConn ~ 950  3400
NoConn ~ 1200 1300
$Comp
L Connector:Barrel_Jack_Switch J2
U 1 1 602598E7
P 900 1300
F 0 "J2" H 957 1617 50  0000 C CNN
F 1 "POWER" H 957 1526 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 950 1260 50  0001 C CNN
F 3 "~" H 950 1260 50  0001 C CNN
	1    900  1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 1200 1450 1200
Wire Wire Line
	1950 1300 1950 1550
Wire Wire Line
	1950 1800 1850 1800
NoConn ~ 1450 1700
Wire Wire Line
	1400 3500 1400 2900
Wire Wire Line
	1400 2900 1350 2900
Wire Wire Line
	1400 3500 1350 3500
Connection ~ 1400 3500
Connection ~ 1950 1550
Wire Wire Line
	1950 1550 1950 1800
Text Notes 600  700  0    50   ~ 0
POWER
Wire Notes Line
	600  750  600  2150
Wire Notes Line
	2600 2150 2600 750 
Wire Notes Line
	600  2150 2600 2150
Wire Notes Line
	600  750  2600 750 
Text Notes 600  2350 0    50   ~ 0
RESET
Wire Notes Line
	600  2400 600  3800
Wire Notes Line
	600  3800 1600 3800
Wire Notes Line
	1600 3800 1600 2400
Wire Notes Line
	1600 2400 600  2400
$EndSCHEMATC