EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr User 21260 16535
encoding utf-8
Sheet 1 1
Title "MZ-2000_SD"
Date ""
Rev "Rev4.3"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_02x22_Row_Letter_First J1
U 1 1 627EE89C
P 2850 2700
F 0 "J1" H 2900 3850 50  0000 C CNN
F 1 "Conn_02x22_Row_Letter_First" H 2050 4450 50  0000 C CNN
F 2 "mz-2000:BUS_MZ2000" H 2850 2700 50  0001 C CNN
F 3 "~" H 2850 2700 50  0001 C CNN
	1    2850 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1800 2400 1800
Wire Wire Line
	2650 1900 2400 1900
Wire Wire Line
	2650 2000 2400 2000
Wire Wire Line
	3150 1800 3400 1800
Text Label 2450 1800 0    50   ~ 0
D2
Text Label 2450 1900 0    50   ~ 0
D1
Text Label 2450 2000 0    50   ~ 0
D0
Text Label 2450 2200 0    50   ~ 0
A15
Text Label 2450 2300 0    50   ~ 0
A14
Text Label 2450 2400 0    50   ~ 0
A13
Text Label 2450 2500 0    50   ~ 0
A12
Text Label 2450 2600 0    50   ~ 0
A11
Text Label 2450 2700 0    50   ~ 0
A10
Text Label 2450 2800 0    50   ~ 0
A9
Text Label 2450 2900 0    50   ~ 0
A8
Text Label 2450 3000 0    50   ~ 0
A7
Text Label 2450 3100 0    50   ~ 0
A6
Text Label 2450 3200 0    50   ~ 0
A5
Text Label 2450 3300 0    50   ~ 0
A4
Text Label 2450 3400 0    50   ~ 0
A3
Text Label 2450 3500 0    50   ~ 0
A2
Text Label 2450 3600 0    50   ~ 0
A1
Text Label 2450 3700 0    50   ~ 0
A0
Text Label 3150 3700 0    50   ~ 0
~MNI
Text Label 3150 3600 0    50   ~ 0
~EXWAIT
Text Label 3150 3500 0    50   ~ 0
~EXINT
Text Label 3150 3300 0    50   ~ 0
RESET
Text Label 3150 3200 0    50   ~ 0
IE0
Text Label 3150 3100 0    50   ~ 0
IE1
Text Label 3150 3000 0    50   ~ 0
~HALT
Text Label 3150 2800 0    50   ~ 0
~MREQ
Text Label 3150 2700 0    50   ~ 0
~IOREQ
Text Label 3150 2600 0    50   ~ 0
~RD
Text Label 3150 2500 0    50   ~ 0
~WR
Text Label 3150 2400 0    50   ~ 0
~M1
Text Label 3150 2300 0    50   ~ 0
phi
Text Label 3150 2200 0    50   ~ 0
D7
Text Label 3150 2100 0    50   ~ 0
D6
Text Label 3150 2000 0    50   ~ 0
D5
Text Label 3150 1900 0    50   ~ 0
D4
Text Label 3150 1800 0    50   ~ 0
D3
Wire Wire Line
	2650 2200 2400 2200
Wire Wire Line
	2650 2300 2400 2300
Wire Wire Line
	2650 2400 2400 2400
Wire Wire Line
	2650 2500 2400 2500
Wire Wire Line
	2650 2600 2400 2600
Wire Wire Line
	2650 2700 2400 2700
Wire Wire Line
	2650 2800 2400 2800
Wire Wire Line
	2650 2900 2400 2900
Wire Wire Line
	2650 3000 2400 3000
Wire Wire Line
	2650 3100 2400 3100
Wire Wire Line
	2650 3200 2400 3200
Wire Wire Line
	2650 3300 2400 3300
Wire Wire Line
	2650 3400 2400 3400
Wire Wire Line
	2650 3500 2400 3500
Wire Wire Line
	2650 3600 2400 3600
Wire Wire Line
	2650 3700 2400 3700
Wire Wire Line
	3150 1900 3400 1900
Wire Wire Line
	3150 2000 3400 2000
Wire Wire Line
	3150 2100 3400 2100
Wire Wire Line
	3150 2200 3400 2200
Wire Wire Line
	3150 2300 3400 2300
Wire Wire Line
	3150 2400 3400 2400
Wire Wire Line
	3150 2500 3400 2500
Wire Wire Line
	3150 2600 3400 2600
Wire Wire Line
	3150 2700 3400 2700
Wire Wire Line
	3150 2800 3400 2800
Wire Wire Line
	3150 3000 3400 3000
Wire Wire Line
	3150 3100 3400 3100
Wire Wire Line
	3150 3200 3400 3200
Wire Wire Line
	3150 3300 3400 3300
Wire Wire Line
	3150 3400 3400 3400
Wire Wire Line
	3150 3500 3400 3500
Wire Wire Line
	3150 3600 3400 3600
Wire Wire Line
	3150 3700 3400 3700
Text Label 3150 3400 0    50   ~ 0
~EXRESET
$Comp
L Arduino:Arduino_Pro_Mini U?
U 1 1 636B7F46
P 12950 2500
AR Path="/636550FF/636B7F46" Ref="U?"  Part="1" 
AR Path="/636B7F46" Ref="U11"  Part="1" 
F 0 "U11" H 12950 3389 60  0000 C CNN
F 1 "Arduino_Pro_Mini_5V" H 12950 3283 60  0000 C CNN
F 2 "MZ-2000_SD_3_2:Arduino_Pro_Mini" H 13750 1750 60  0001 C CNN
F 3 "https://www.sparkfun.com/products/11113" H 13150 1300 60  0001 C CNN
	1    12950 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 4450 10250 1400
Wire Wire Line
	10250 1400 10450 1400
$Comp
L Interface:8255 U?
U 1 1 636B7F4E
P 11150 2700
AR Path="/636550FF/636B7F4E" Ref="U?"  Part="1" 
AR Path="/636B7F4E" Ref="U10"  Part="1" 
F 0 "U10" H 10750 4200 50  0000 C CNN
F 1 "8255" H 11550 4200 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm_LongPads" H 11150 3000 50  0001 C CNN
F 3 "http://aturing.umcs.maine.edu/~meadow/courses/cos335/Intel8255A.pdf" H 11150 3000 50  0001 C CNN
	1    11150 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 1900 10450 1900
Wire Wire Line
	9350 1800 10450 1800
$Comp
L Device:C C?
U 1 1 636B7F56
P 10650 4350
AR Path="/636550FF/636B7F56" Ref="C?"  Part="1" 
AR Path="/636B7F56" Ref="C5"  Part="1" 
F 0 "C5" V 10500 4450 50  0000 C CNN
F 1 "0.1uF" V 10500 4200 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 10688 4200 50  0001 C CNN
F 3 "~" H 10650 4350 50  0001 C CNN
	1    10650 4350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 636B7F5C
P 11150 4400
AR Path="/636550FF/636B7F5C" Ref="#PWR?"  Part="1" 
AR Path="/636B7F5C" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 11150 4150 50  0001 C CNN
F 1 "GND" H 11155 4227 50  0000 C CNN
F 2 "" H 11150 4400 50  0001 C CNN
F 3 "" H 11150 4400 50  0001 C CNN
	1    11150 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 4350 11150 4350
Wire Wire Line
	11150 4350 11150 4400
Wire Wire Line
	11150 4300 11150 4350
Connection ~ 11150 4350
Wire Wire Line
	10500 4350 10400 4350
Wire Wire Line
	10400 4350 10400 1100
Wire Wire Line
	10400 1100 11150 1100
$Comp
L power:+5V #PWR?
U 1 1 636B7F69
P 11150 1100
AR Path="/636550FF/636B7F69" Ref="#PWR?"  Part="1" 
AR Path="/636B7F69" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 11150 950 50  0001 C CNN
F 1 "+5V" H 11165 1273 50  0000 C CNN
F 2 "" H 11150 1100 50  0001 C CNN
F 3 "" H 11150 1100 50  0001 C CNN
	1    11150 1100
	1    0    0    -1  
$EndComp
Connection ~ 11150 1100
Wire Wire Line
	11850 3000 12350 3000
Wire Wire Line
	11850 2900 12350 2900
Wire Wire Line
	11850 2500 12350 2500
Wire Wire Line
	11850 2400 12350 2400
Wire Wire Line
	11850 2300 12350 2300
Wire Wire Line
	11850 3900 13900 3900
Wire Wire Line
	13900 3900 13900 2600
Wire Wire Line
	13900 2600 13550 2600
Wire Wire Line
	11850 3400 12000 3400
Wire Wire Line
	12000 3400 12000 4000
Wire Wire Line
	12000 4000 14000 4000
Wire Wire Line
	14000 4000 14000 2500
Wire Wire Line
	14000 2500 13550 2500
Wire Wire Line
	11850 1400 14000 1400
Wire Wire Line
	14000 1400 14000 2400
Wire Wire Line
	14000 2400 13550 2400
Wire Wire Line
	11850 1500 13900 1500
Wire Wire Line
	13900 1500 13900 2300
Wire Wire Line
	13900 2300 13550 2300
Wire Wire Line
	11850 1600 12150 1600
Wire Wire Line
	12150 1600 12150 3500
Wire Wire Line
	12150 3500 13050 3500
Wire Wire Line
	13050 3500 13050 3400
Wire Wire Line
	11850 1700 12100 1700
Wire Wire Line
	12100 1700 12100 3600
Wire Wire Line
	12100 3600 13150 3600
Wire Wire Line
	13150 3600 13150 3400
$Comp
L power:GND #PWR?
U 1 1 636B7F8E
P 13650 3200
AR Path="/636550FF/636B7F8E" Ref="#PWR?"  Part="1" 
AR Path="/636B7F8E" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 13650 2950 50  0001 C CNN
F 1 "GND" H 13655 3027 50  0000 C CNN
F 2 "" H 13650 3200 50  0001 C CNN
F 3 "" H 13650 3200 50  0001 C CNN
	1    13650 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	13550 2000 13650 2000
Wire Wire Line
	13650 2000 13650 3200
$Comp
L power:+5V #PWR?
U 1 1 636B7F96
P 13750 1900
AR Path="/636550FF/636B7F96" Ref="#PWR?"  Part="1" 
AR Path="/636B7F96" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 13750 1750 50  0001 C CNN
F 1 "+5V" H 13765 2073 50  0000 C CNN
F 2 "" H 13750 1900 50  0001 C CNN
F 3 "" H 13750 1900 50  0001 C CNN
	1    13750 1900
	1    0    0    -1  
$EndComp
NoConn ~ 11850 1800
NoConn ~ 11850 1900
NoConn ~ 11850 2000
NoConn ~ 11850 2100
NoConn ~ 11850 3200
NoConn ~ 11850 3300
NoConn ~ 11850 3500
NoConn ~ 11850 3600
NoConn ~ 11850 3700
NoConn ~ 11850 3800
Wire Wire Line
	13550 2700 14300 2700
Wire Wire Line
	13550 2800 14300 2800
Wire Wire Line
	13550 2900 14300 2900
Wire Wire Line
	13550 3000 14300 3000
NoConn ~ 14300 2400
NoConn ~ 14300 2500
NoConn ~ 14300 3100
$Comp
L power:+5V #PWR?
U 1 1 636B7FAD
P 14150 2150
AR Path="/636550FF/636B7FAD" Ref="#PWR?"  Part="1" 
AR Path="/636B7FAD" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 14150 2000 50  0001 C CNN
F 1 "+5V" H 14165 2323 50  0000 C CNN
F 2 "" H 14150 2150 50  0001 C CNN
F 3 "" H 14150 2150 50  0001 C CNN
	1    14150 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	14150 2150 14150 2300
Wire Wire Line
	14150 2300 14300 2300
$Comp
L power:GND #PWR?
U 1 1 636B7FB5
P 14150 3250
AR Path="/636550FF/636B7FB5" Ref="#PWR?"  Part="1" 
AR Path="/636B7FB5" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 14150 3000 50  0001 C CNN
F 1 "GND" H 14155 3077 50  0000 C CNN
F 2 "" H 14150 3250 50  0001 C CNN
F 3 "" H 14150 3250 50  0001 C CNN
	1    14150 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	14300 2600 14150 2600
Wire Wire Line
	14150 2600 14150 3250
NoConn ~ 13550 1900
NoConn ~ 13550 2100
NoConn ~ 12950 3400
NoConn ~ 12850 3400
NoConn ~ 12350 2200
NoConn ~ 12350 2000
NoConn ~ 12350 1900
Wire Wire Line
	13550 2200 13750 2200
Wire Wire Line
	13750 2200 13750 1900
$Comp
L Memory_RAM2:Micro_SD_Card_Kit J?
U 1 1 636B7FC6
P 15200 2600
AR Path="/636550FF/636B7FC6" Ref="J?"  Part="1" 
AR Path="/636B7FC6" Ref="J5"  Part="1" 
F 0 "J5" H 16030 2596 50  0000 L CNN
F 1 "Micro_SD_Card_Kit" H 16030 2505 50  0000 L CNN
F 2 "MZ-2000_SD_3_2:AE-microSD-LLCNV" H 16350 2900 50  0001 C CNN
F 3 "http://katalog.we-online.de/em/datasheet/693072010801.pdf" H 15200 2600 50  0001 C CNN
	1    15200 2600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS273 U?
U 1 1 636B7FCC
P 11650 9850
AR Path="/6274F952/636B7FCC" Ref="U?"  Part="1" 
AR Path="/636B7FCC" Ref="U6"  Part="1" 
AR Path="/636550FF/636B7FCC" Ref="U?"  Part="1" 
F 0 "U6" H 11400 10550 50  0000 C CNN
F 1 "74LS273" H 11850 10550 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_LongPads" H 11650 9850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS273" H 11650 9850 50  0001 C CNN
	1    11650 9850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS273 U?
U 1 1 636B7FD2
P 11650 12500
AR Path="/6274F952/636B7FD2" Ref="U?"  Part="1" 
AR Path="/636B7FD2" Ref="U7"  Part="1" 
AR Path="/636550FF/636B7FD2" Ref="U?"  Part="1" 
F 0 "U7" H 11400 13200 50  0000 C CNN
F 1 "74LS273" H 11850 13200 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_LongPads" H 11650 12500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS273" H 11650 12500 50  0001 C CNN
	1    11650 12500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 U?
U 1 1 636B7FD8
P 19150 10600
AR Path="/6274F952/636B7FD8" Ref="U?"  Part="1" 
AR Path="/636B7FD8" Ref="U8"  Part="1" 
AR Path="/636550FF/636B7FD8" Ref="U?"  Part="1" 
F 0 "U8" H 19400 11300 50  0000 C CNN
F 1 "74LS245" H 18950 11300 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_LongPads" H 19150 10600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 19150 10600 50  0001 C CNN
	1    19150 10600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	12150 12700 16650 12700
Wire Wire Line
	16650 12700 16650 10800
Wire Wire Line
	16650 10800 17600 10800
Wire Wire Line
	12150 12600 16600 12600
Wire Wire Line
	16600 12600 16600 10700
Wire Wire Line
	16600 10700 17600 10700
Wire Wire Line
	12150 12500 16550 12500
Wire Wire Line
	16550 12500 16550 10600
Wire Wire Line
	16550 10600 17600 10600
Wire Wire Line
	12150 12400 16500 12400
Wire Wire Line
	16500 12400 16500 10500
Wire Wire Line
	16500 10500 17600 10500
Wire Wire Line
	12150 12300 16450 12300
Wire Wire Line
	16450 12300 16450 10400
Wire Wire Line
	16450 10400 17600 10400
Wire Wire Line
	12150 12200 16400 12200
Wire Wire Line
	16400 12200 16400 10300
Wire Wire Line
	16400 10300 17600 10300
Wire Wire Line
	12150 12100 16350 12100
Wire Wire Line
	16350 12100 16350 10200
Wire Wire Line
	16350 10200 17600 10200
Wire Wire Line
	12150 12000 16300 12000
Wire Wire Line
	16300 12000 16300 10100
Wire Wire Line
	16300 10100 17600 10100
Wire Wire Line
	17350 10900 17600 10900
Wire Wire Line
	17300 11000 17600 11000
Wire Wire Line
	17250 11100 17600 11100
Wire Wire Line
	17200 11200 17600 11200
Wire Wire Line
	17150 11300 17600 11300
Wire Wire Line
	17100 11400 17600 11400
Wire Wire Line
	17050 11500 17600 11500
Wire Wire Line
	11000 11100 11000 12900
Wire Wire Line
	11000 12900 11150 12900
Wire Wire Line
	20000 11100 19650 11100
Wire Wire Line
	11000 10250 11150 10250
Wire Wire Line
	12150 9350 17350 9350
Wire Wire Line
	17350 9350 17350 10900
Wire Wire Line
	12150 9450 17300 9450
Wire Wire Line
	17300 9450 17300 11000
Wire Wire Line
	12150 9550 17250 9550
Wire Wire Line
	17250 9550 17250 11100
Wire Wire Line
	12150 9650 17200 9650
Wire Wire Line
	17200 9650 17200 11200
Wire Wire Line
	12150 9750 17150 9750
Wire Wire Line
	17150 9750 17150 11300
Wire Wire Line
	12150 9850 17100 9850
Wire Wire Line
	17100 9850 17100 11400
Wire Wire Line
	12150 9950 17050 9950
Wire Wire Line
	17050 9950 17050 11500
Wire Wire Line
	16900 11900 17600 11900
Wire Wire Line
	18400 10100 18650 10100
Wire Wire Line
	18400 10200 18650 10200
Wire Wire Line
	18400 10300 18650 10300
Wire Wire Line
	18400 10400 18650 10400
Wire Wire Line
	18400 10500 18650 10500
Wire Wire Line
	18400 10600 18650 10600
Wire Wire Line
	18400 10700 18650 10700
Wire Wire Line
	18400 10800 18650 10800
$Comp
L Device:C C?
U 1 1 636B8018
P 18550 11850
AR Path="/6274F952/636B8018" Ref="C?"  Part="1" 
AR Path="/636B8018" Ref="C4"  Part="1" 
AR Path="/636550FF/636B8018" Ref="C?"  Part="1" 
F 0 "C4" H 18665 11896 50  0000 L CNN
F 1 "0.1uF" H 18665 11805 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 18588 11700 50  0001 C CNN
F 3 "~" H 18550 11850 50  0001 C CNN
	1    18550 11850
	1    0    0    -1  
$EndComp
Wire Wire Line
	18000 9900 18000 9750
Wire Wire Line
	18000 9750 18550 9750
Wire Wire Line
	18550 9750 18550 11700
Wire Wire Line
	18550 12000 18550 12200
Wire Wire Line
	18550 12200 18000 12200
Wire Wire Line
	18000 12200 18000 12100
$Comp
L power:+5V #PWR?
U 1 1 636B8024
P 18550 9650
AR Path="/6274F952/636B8024" Ref="#PWR?"  Part="1" 
AR Path="/636B8024" Ref="#PWR012"  Part="1" 
AR Path="/636550FF/636B8024" Ref="#PWR?"  Part="1" 
F 0 "#PWR012" H 18550 9500 50  0001 C CNN
F 1 "+5V" H 18565 9823 50  0000 C CNN
F 2 "" H 18550 9650 50  0001 C CNN
F 3 "" H 18550 9650 50  0001 C CNN
	1    18550 9650
	1    0    0    -1  
$EndComp
Wire Wire Line
	18550 9650 18550 9750
Connection ~ 18550 9750
$Comp
L power:GND #PWR?
U 1 1 636B802C
P 18550 12300
AR Path="/6274F952/636B802C" Ref="#PWR?"  Part="1" 
AR Path="/636B802C" Ref="#PWR013"  Part="1" 
AR Path="/636550FF/636B802C" Ref="#PWR?"  Part="1" 
F 0 "#PWR013" H 18550 12050 50  0001 C CNN
F 1 "GND" H 18555 12127 50  0000 C CNN
F 2 "" H 18550 12300 50  0001 C CNN
F 3 "" H 18550 12300 50  0001 C CNN
	1    18550 12300
	1    0    0    -1  
$EndComp
Wire Wire Line
	18550 12300 18550 12200
Connection ~ 18550 12200
Wire Wire Line
	17600 11800 17500 11800
Wire Wire Line
	17500 11800 17500 12200
Wire Wire Line
	17500 12200 18000 12200
Connection ~ 18000 12200
$Comp
L Device:C C?
U 1 1 636B8038
P 19850 11300
AR Path="/6274F952/636B8038" Ref="C?"  Part="1" 
AR Path="/636B8038" Ref="C6"  Part="1" 
AR Path="/636550FF/636B8038" Ref="C?"  Part="1" 
F 0 "C6" H 19965 11346 50  0000 L CNN
F 1 "0.1uF" H 19965 11255 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 19888 11150 50  0001 C CNN
F 3 "~" H 19850 11300 50  0001 C CNN
	1    19850 11300
	1    0    0    -1  
$EndComp
Wire Wire Line
	19150 9800 19150 9750
Wire Wire Line
	19150 9750 19850 9750
Wire Wire Line
	19850 9750 19850 11150
Wire Wire Line
	19850 11450 19850 11550
Wire Wire Line
	19850 11550 19700 11550
Wire Wire Line
	19150 11550 19150 11400
$Comp
L power:+5V #PWR?
U 1 1 636B8044
P 19850 9650
AR Path="/6274F952/636B8044" Ref="#PWR?"  Part="1" 
AR Path="/636B8044" Ref="#PWR016"  Part="1" 
AR Path="/636550FF/636B8044" Ref="#PWR?"  Part="1" 
F 0 "#PWR016" H 19850 9500 50  0001 C CNN
F 1 "+5V" H 19865 9823 50  0000 C CNN
F 2 "" H 19850 9650 50  0001 C CNN
F 3 "" H 19850 9650 50  0001 C CNN
	1    19850 9650
	1    0    0    -1  
$EndComp
Wire Wire Line
	19850 9650 19850 9750
Connection ~ 19850 9750
$Comp
L power:GND #PWR?
U 1 1 636B804C
P 19850 11650
AR Path="/6274F952/636B804C" Ref="#PWR?"  Part="1" 
AR Path="/636B804C" Ref="#PWR017"  Part="1" 
AR Path="/636550FF/636B804C" Ref="#PWR?"  Part="1" 
F 0 "#PWR017" H 19850 11400 50  0001 C CNN
F 1 "GND" H 19855 11477 50  0000 C CNN
F 2 "" H 19850 11650 50  0001 C CNN
F 3 "" H 19850 11650 50  0001 C CNN
	1    19850 11650
	1    0    0    -1  
$EndComp
Wire Wire Line
	19850 11650 19850 11550
Connection ~ 19850 11550
Wire Wire Line
	19650 11000 19700 11000
Wire Wire Line
	19700 11000 19700 11550
Connection ~ 19700 11550
Wire Wire Line
	19700 11550 19150 11550
$Comp
L Device:C C?
U 1 1 636B8058
P 12200 10300
AR Path="/6274F952/636B8058" Ref="C?"  Part="1" 
AR Path="/636B8058" Ref="C2"  Part="1" 
AR Path="/636550FF/636B8058" Ref="C?"  Part="1" 
F 0 "C2" H 12315 10346 50  0000 L CNN
F 1 "0.1uF" H 12315 10255 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 12238 10150 50  0001 C CNN
F 3 "~" H 12200 10300 50  0001 C CNN
	1    12200 10300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 636B805E
P 12200 12950
AR Path="/6274F952/636B805E" Ref="C?"  Part="1" 
AR Path="/636B805E" Ref="C3"  Part="1" 
AR Path="/636550FF/636B805E" Ref="C?"  Part="1" 
F 0 "C3" H 12315 12996 50  0000 L CNN
F 1 "0.1uF" H 12315 12905 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 12238 12800 50  0001 C CNN
F 3 "~" H 12200 12950 50  0001 C CNN
	1    12200 12950
	1    0    0    -1  
$EndComp
Wire Wire Line
	11650 9050 11650 8950
Wire Wire Line
	11650 8950 12200 8950
Wire Wire Line
	12200 8950 12200 10150
Wire Wire Line
	12200 10450 12200 10750
Wire Wire Line
	12200 10750 11650 10750
Wire Wire Line
	11650 10750 11650 10650
Wire Wire Line
	11650 11700 11650 11600
Wire Wire Line
	11650 11600 12200 11600
Wire Wire Line
	12200 11600 12200 12800
Wire Wire Line
	12200 13100 12200 13400
Wire Wire Line
	12200 13400 11650 13400
Wire Wire Line
	11650 13400 11650 13300
Wire Wire Line
	11150 13000 11050 13000
Wire Wire Line
	11050 13000 11050 11600
Wire Wire Line
	11050 11600 11650 11600
Connection ~ 11650 11600
Wire Wire Line
	11150 10350 11050 10350
Wire Wire Line
	11050 10350 11050 8950
Wire Wire Line
	11050 8950 11650 8950
Connection ~ 11650 8950
$Comp
L power:GND #PWR?
U 1 1 636B8078
P 12200 13500
AR Path="/6274F952/636B8078" Ref="#PWR?"  Part="1" 
AR Path="/636B8078" Ref="#PWR08"  Part="1" 
AR Path="/636550FF/636B8078" Ref="#PWR?"  Part="1" 
F 0 "#PWR08" H 12200 13250 50  0001 C CNN
F 1 "GND" H 12205 13327 50  0000 C CNN
F 2 "" H 12200 13500 50  0001 C CNN
F 3 "" H 12200 13500 50  0001 C CNN
	1    12200 13500
	1    0    0    -1  
$EndComp
Wire Wire Line
	12200 13500 12200 13400
Connection ~ 12200 13400
$Comp
L power:GND #PWR?
U 1 1 636B8080
P 12200 10850
AR Path="/6274F952/636B8080" Ref="#PWR?"  Part="1" 
AR Path="/636B8080" Ref="#PWR06"  Part="1" 
AR Path="/636550FF/636B8080" Ref="#PWR?"  Part="1" 
F 0 "#PWR06" H 12200 10600 50  0001 C CNN
F 1 "GND" H 12205 10677 50  0000 C CNN
F 2 "" H 12200 10850 50  0001 C CNN
F 3 "" H 12200 10850 50  0001 C CNN
	1    12200 10850
	1    0    0    -1  
$EndComp
Wire Wire Line
	12200 10850 12200 10750
Connection ~ 12200 10750
$Comp
L power:+5V #PWR?
U 1 1 636B8088
P 12200 11500
AR Path="/6274F952/636B8088" Ref="#PWR?"  Part="1" 
AR Path="/636B8088" Ref="#PWR07"  Part="1" 
AR Path="/636550FF/636B8088" Ref="#PWR?"  Part="1" 
F 0 "#PWR07" H 12200 11350 50  0001 C CNN
F 1 "+5V" H 12215 11673 50  0000 C CNN
F 2 "" H 12200 11500 50  0001 C CNN
F 3 "" H 12200 11500 50  0001 C CNN
	1    12200 11500
	1    0    0    -1  
$EndComp
Wire Wire Line
	12200 11500 12200 11600
Connection ~ 12200 11600
$Comp
L power:+5V #PWR?
U 1 1 636B8090
P 12200 8850
AR Path="/6274F952/636B8090" Ref="#PWR?"  Part="1" 
AR Path="/636B8090" Ref="#PWR05"  Part="1" 
AR Path="/636550FF/636B8090" Ref="#PWR?"  Part="1" 
F 0 "#PWR05" H 12200 8700 50  0001 C CNN
F 1 "+5V" H 12215 9023 50  0000 C CNN
F 2 "" H 12200 8850 50  0001 C CNN
F 3 "" H 12200 8850 50  0001 C CNN
	1    12200 8850
	1    0    0    -1  
$EndComp
Wire Wire Line
	12200 8850 12200 8950
Connection ~ 12200 8950
Wire Wire Line
	10100 12000 10950 12000
Wire Wire Line
	10100 12100 10900 12100
Wire Wire Line
	10100 12200 10850 12200
Wire Wire Line
	10950 12000 10950 9350
Wire Wire Line
	10950 9350 11150 9350
Connection ~ 10950 12000
Wire Wire Line
	10950 12000 11150 12000
Wire Wire Line
	10900 12100 10900 9450
Wire Wire Line
	10900 9450 11150 9450
Connection ~ 10900 12100
Wire Wire Line
	10900 12100 11150 12100
Wire Wire Line
	10850 12200 10850 9550
Wire Wire Line
	10850 9550 11150 9550
Connection ~ 10850 12200
Wire Wire Line
	10850 12200 11150 12200
Wire Wire Line
	10100 12300 10800 12300
Wire Wire Line
	10100 12400 10750 12400
Wire Wire Line
	10100 12500 10700 12500
Wire Wire Line
	10100 12600 10650 12600
Wire Wire Line
	10100 12700 10600 12700
Wire Wire Line
	10800 12300 10800 9650
Wire Wire Line
	10800 9650 11150 9650
Connection ~ 10800 12300
Wire Wire Line
	10800 12300 11150 12300
Wire Wire Line
	10750 12400 10750 9750
Wire Wire Line
	10750 9750 11150 9750
Connection ~ 10750 12400
Wire Wire Line
	10750 12400 11150 12400
Wire Wire Line
	10700 12500 10700 9850
Wire Wire Line
	10700 9850 11150 9850
Connection ~ 10700 12500
Wire Wire Line
	10700 12500 11150 12500
Wire Wire Line
	10650 12600 10650 9950
Wire Wire Line
	10650 9950 11150 9950
Connection ~ 10650 12600
Wire Wire Line
	10650 12600 11150 12600
Wire Wire Line
	10600 12700 10600 10050
Wire Wire Line
	10600 10050 11150 10050
Connection ~ 10600 12700
Wire Wire Line
	10600 12700 11150 12700
Wire Wire Line
	10950 12000 10950 13800
Wire Wire Line
	10950 13800 20100 13800
Wire Wire Line
	20100 13800 20100 10100
Wire Wire Line
	20100 10100 19650 10100
Wire Wire Line
	10900 12100 10900 13850
Wire Wire Line
	10900 13850 20150 13850
Wire Wire Line
	20150 13850 20150 10200
Wire Wire Line
	20150 10200 19650 10200
Wire Wire Line
	10850 12200 10850 13900
Wire Wire Line
	10850 13900 20200 13900
Wire Wire Line
	20200 13900 20200 10300
Wire Wire Line
	20200 10300 19650 10300
Wire Wire Line
	10800 12300 10800 13950
Wire Wire Line
	10800 13950 20250 13950
Wire Wire Line
	20250 13950 20250 10400
Wire Wire Line
	20250 10400 19650 10400
Wire Wire Line
	10750 12400 10750 14000
Wire Wire Line
	10750 14000 20300 14000
Wire Wire Line
	20300 14000 20300 10500
Wire Wire Line
	20300 10500 19650 10500
Wire Wire Line
	10700 12500 10700 14050
Wire Wire Line
	10700 14050 20350 14050
Wire Wire Line
	20350 14050 20350 10600
Wire Wire Line
	20350 10600 19650 10600
Wire Wire Line
	10650 12600 10650 14100
Wire Wire Line
	10650 14100 20400 14100
Wire Wire Line
	20400 14100 20400 10700
Wire Wire Line
	20400 10700 19650 10700
Wire Wire Line
	10600 12700 10600 14150
Wire Wire Line
	10600 14150 20450 14150
Wire Wire Line
	20450 14150 20450 10800
Wire Wire Line
	20450 10800 19650 10800
Wire Wire Line
	1150 3800 2450 3800
Wire Wire Line
	9350 4450 10250 4450
Wire Wire Line
	1150 2100 1150 3800
Wire Wire Line
	1150 2100 2650 2100
$Comp
L power:GND #PWR?
U 1 1 636B8114
P 2450 3950
AR Path="/6274F952/636B8114" Ref="#PWR?"  Part="1" 
AR Path="/636B8114" Ref="#PWR02"  Part="1" 
AR Path="/636550FF/636B8114" Ref="#PWR?"  Part="1" 
F 0 "#PWR02" H 2450 3700 50  0001 C CNN
F 1 "GND" H 2455 3777 50  0000 C CNN
F 2 "" H 2450 3950 50  0001 C CNN
F 3 "" H 2450 3950 50  0001 C CNN
	1    2450 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3950 2450 3800
Connection ~ 2450 3800
Wire Wire Line
	2450 3800 2650 3800
Wire Wire Line
	2450 3950 3550 3950
Wire Wire Line
	3550 3950 3550 3800
Wire Wire Line
	3550 3800 3150 3800
Connection ~ 2450 3950
$Comp
L power:PWR_FLAG #FLG?
U 1 1 636B8121
P 2950 4200
AR Path="/636550FF/636B8121" Ref="#FLG?"  Part="1" 
AR Path="/636B8121" Ref="#FLG01"  Part="1" 
F 0 "#FLG01" H 2950 4275 50  0001 C CNN
F 1 "PWR_FLAG" H 2950 4373 50  0000 C CNN
F 2 "" H 2950 4200 50  0001 C CNN
F 3 "~" H 2950 4200 50  0001 C CNN
	1    2950 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 3950 3550 4300
Wire Wire Line
	3550 4300 2950 4300
Wire Wire Line
	2950 4300 2950 4200
Connection ~ 3550 3950
Wire Wire Line
	3150 2900 3550 2900
Wire Wire Line
	3550 2900 3550 3800
Connection ~ 3550 3800
$Comp
L power:+5V #PWR?
U 1 1 636B8140
P 2450 1300
AR Path="/6274F952/636B8140" Ref="#PWR?"  Part="1" 
AR Path="/636B8140" Ref="#PWR01"  Part="1" 
AR Path="/636550FF/636B8140" Ref="#PWR?"  Part="1" 
F 0 "#PWR01" H 2450 1150 50  0001 C CNN
F 1 "+5V" H 2465 1473 50  0000 C CNN
F 2 "" H 2450 1300 50  0001 C CNN
F 3 "" H 2450 1300 50  0001 C CNN
	1    2450 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 1300 2450 1350
Wire Wire Line
	2450 1700 2650 1700
Wire Wire Line
	2450 1350 3400 1350
Wire Wire Line
	3400 1350 3400 1700
Connection ~ 2450 1350
Wire Wire Line
	2450 1350 2450 1700
$Comp
L power:PWR_FLAG #FLG?
U 1 1 636B814C
P 3400 1300
AR Path="/636550FF/636B814C" Ref="#FLG?"  Part="1" 
AR Path="/636B814C" Ref="#FLG02"  Part="1" 
F 0 "#FLG02" H 3400 1375 50  0001 C CNN
F 1 "PWR_FLAG" H 3400 1473 50  0000 C CNN
F 2 "" H 3400 1300 50  0001 C CNN
F 3 "~" H 3400 1300 50  0001 C CNN
	1    3400 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1300 3400 1350
Connection ~ 3400 1350
$Comp
L Device:CP C?
U 1 1 636B8154
P 1850 2550
AR Path="/636550FF/636B8154" Ref="C?"  Part="1" 
AR Path="/636B8154" Ref="C1"  Part="1" 
F 0 "C1" H 1700 2750 50  0000 L CNN
F 1 "100uF" H 1850 2750 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 1888 2400 50  0001 C CNN
F 3 "~" H 1850 2550 50  0001 C CNN
	1    1850 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 2400 1850 1350
Wire Wire Line
	1850 1350 2450 1350
Wire Wire Line
	1850 2700 1850 3950
Wire Wire Line
	1850 3950 2450 3950
Wire Wire Line
	12250 2100 12350 2100
$Comp
L Memory_EPROM:27C512 U?
U 1 1 636B8160
P 18000 11000
AR Path="/636550FF/636B8160" Ref="U?"  Part="1" 
AR Path="/636B8160" Ref="U9"  Part="1" 
F 0 "U9" H 17750 12100 50  0000 C CNN
F 1 "29C256/27C512" H 18050 12350 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm_LongPads" H 18000 11000 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc0015.pdf" H 18000 11000 50  0001 C CNN
	1    18000 11000
	1    0    0    -1  
$EndComp
$Comp
L Memory_RAM2:SLIDE_SWITCH_3P S?
U 1 1 636B8166
P 17950 8850
AR Path="/636550FF/636B8166" Ref="S?"  Part="1" 
AR Path="/636B8166" Ref="S2"  Part="1" 
F 0 "S2" H 17700 8800 50  0000 C CNN
F 1 "SLIDE_SWITCH_3P" H 18350 8800 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 17950 8875 50  0001 C CNN
F 3 "" H 17950 8875 50  0001 C CNN
	1    17950 8850
	1    0    0    -1  
$EndComp
Wire Wire Line
	17600 11600 17500 11600
Wire Wire Line
	17500 11600 17500 9300
Wire Wire Line
	17500 9300 17950 9300
Wire Wire Line
	17950 9300 17950 9200
$Comp
L power:GND #PWR?
U 1 1 636B8170
P 18250 9150
AR Path="/6274F952/636B8170" Ref="#PWR?"  Part="1" 
AR Path="/636B8170" Ref="#PWR011"  Part="1" 
AR Path="/636550FF/636B8170" Ref="#PWR?"  Part="1" 
F 0 "#PWR011" H 18250 8900 50  0001 C CNN
F 1 "GND" H 18255 8977 50  0000 C CNN
F 2 "" H 18250 9150 50  0001 C CNN
F 3 "" H 18250 9150 50  0001 C CNN
	1    18250 9150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 636B8176
P 17450 8950
AR Path="/6274F952/636B8176" Ref="#PWR?"  Part="1" 
AR Path="/636B8176" Ref="#PWR010"  Part="1" 
AR Path="/636550FF/636B8176" Ref="#PWR?"  Part="1" 
F 0 "#PWR010" H 17450 8800 50  0001 C CNN
F 1 "+5V" H 17465 9123 50  0000 C CNN
F 2 "" H 17450 8950 50  0001 C CNN
F 3 "" H 17450 8950 50  0001 C CNN
	1    17450 8950
	1    0    0    -1  
$EndComp
Wire Wire Line
	17450 8950 17450 9050
Wire Wire Line
	17450 9050 17750 9050
Wire Wire Line
	18150 9050 18250 9050
Wire Wire Line
	18250 9050 18250 9150
Text Label 2450 1700 0    50   ~ 0
+5V
Text Label 2500 2100 0    50   ~ 0
GND
Text Label 2500 3800 0    50   ~ 0
GND
Text Label 3150 1700 0    50   ~ 0
+5V
Text Label 3150 2900 0    50   ~ 0
GND
Text Label 3150 3800 0    50   ~ 0
GND
Wire Wire Line
	3150 1700 3400 1700
Text Label 14100 2700 0    50   ~ 0
SCK
Text Label 14100 2800 0    50   ~ 0
MISO
Text Label 14100 2900 0    50   ~ 0
MOSI
Text Label 14100 3000 0    50   ~ 0
CS
$Comp
L Connector_Generic:Conn_01x06 J?
U 1 1 636B81A9
P 15200 3850
AR Path="/636550FF/636B81A9" Ref="J?"  Part="1" 
AR Path="/636B81A9" Ref="J6"  Part="1" 
F 0 "J6" H 15280 3842 50  0000 L CNN
F 1 "MicroSD Card Adapter" H 14800 3350 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 15200 3850 50  0001 C CNN
F 3 "~" H 15200 3850 50  0001 C CNN
	1    15200 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	15000 3650 14800 3650
Wire Wire Line
	15000 3750 14800 3750
Wire Wire Line
	15000 3850 14800 3850
Wire Wire Line
	15000 3950 14800 3950
Wire Wire Line
	15000 4050 14800 4050
Wire Wire Line
	15000 4150 14800 4150
Text Label 14800 3650 0    50   ~ 0
GND
Text Label 14800 3750 0    50   ~ 0
+5V
Text Label 14800 3850 0    50   ~ 0
MISO
Text Label 14800 3950 0    50   ~ 0
MOSI
Text Label 14800 4050 0    50   ~ 0
SCK
Text Label 14800 4150 0    50   ~ 0
CS
$Comp
L 74xx:74LS04 U?
U 1 1 636B81BB
P 5150 8700
AR Path="/636550FF/636B81BB" Ref="U?"  Part="1" 
AR Path="/636B81BB" Ref="U1"  Part="1" 
F 0 "U1" H 5150 9017 50  0000 C CNN
F 1 "74LS04" H 5150 8926 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 5150 8700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 5150 8700 50  0001 C CNN
	1    5150 8700
	1    0    0    -1  
$EndComp
Wire Wire Line
	13400 10050 13400 8850
Wire Wire Line
	13400 8850 13750 8850
Wire Wire Line
	12150 10050 13400 10050
Wire Wire Line
	14350 8850 16900 8850
Wire Wire Line
	16900 8850 16900 11900
$Comp
L 74xx:74LS30 U?
U 1 1 636B81C6
P 8400 1700
AR Path="/636550FF/636B81C6" Ref="U?"  Part="1" 
AR Path="/636B81C6" Ref="U4"  Part="1" 
F 0 "U4" H 8400 2225 50  0000 C CNN
F 1 "74LS30" H 8400 2134 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 8400 1700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS30" H 8400 1700 50  0001 C CNN
	1    8400 1700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U?
U 2 1 636B81CC
P 5150 9350
AR Path="/636550FF/636B81CC" Ref="U?"  Part="2" 
AR Path="/636B81CC" Ref="U1"  Part="2" 
F 0 "U1" H 5150 9667 50  0000 C CNN
F 1 "74LS04" H 5150 9576 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 5150 9350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 5150 9350 50  0001 C CNN
	2    5150 9350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U?
U 3 1 636B81D2
P 5150 9900
AR Path="/636550FF/636B81D2" Ref="U?"  Part="3" 
AR Path="/636B81D2" Ref="U1"  Part="3" 
F 0 "U1" H 5150 10217 50  0000 C CNN
F 1 "74LS04" H 5150 10126 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 5150 9900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 5150 9900 50  0001 C CNN
	3    5150 9900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U?
U 4 1 636B81D8
P 7200 7300
AR Path="/636550FF/636B81D8" Ref="U?"  Part="4" 
AR Path="/636B81D8" Ref="U1"  Part="4" 
F 0 "U1" H 7200 7617 50  0000 C CNN
F 1 "74LS04" H 7200 7526 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 7200 7300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 7200 7300 50  0001 C CNN
	4    7200 7300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U?
U 5 1 636B81DE
P 8450 7950
AR Path="/636550FF/636B81DE" Ref="U?"  Part="5" 
AR Path="/636B81DE" Ref="U1"  Part="5" 
F 0 "U1" H 8450 8267 50  0000 C CNN
F 1 "74LS04" H 8450 8176 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 8450 7950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 8450 7950 50  0001 C CNN
	5    8450 7950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U?
U 6 1 636B81E4
P 8500 8650
AR Path="/636550FF/636B81E4" Ref="U?"  Part="6" 
AR Path="/636B81E4" Ref="U1"  Part="6" 
F 0 "U1" H 8500 8967 50  0000 C CNN
F 1 "74LS04" H 8500 8876 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 8500 8650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 8500 8650 50  0001 C CNN
	6    8500 8650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 7300 5550 7100
Wire Wire Line
	5550 7100 6250 7100
Wire Wire Line
	5600 7600 5600 7200
Wire Wire Line
	5600 7200 6250 7200
Wire Wire Line
	5650 7900 5650 7300
Wire Wire Line
	5650 7300 6250 7300
Wire Wire Line
	5700 8250 5700 7400
Wire Wire Line
	5700 7400 6250 7400
Wire Wire Line
	6250 7500 5750 7500
Wire Wire Line
	4500 9900 4850 9900
Text Label 4500 7000 0    50   ~ 0
A7
Text Label 4500 7300 0    50   ~ 0
A6
Text Label 4500 7600 0    50   ~ 0
A5
Text Label 4500 7900 0    50   ~ 0
A4
Text Label 4500 8250 0    50   ~ 0
A3
Text Label 4500 9900 0    50   ~ 0
~IOREQ
$Comp
L 74xx:74LS10 U?
U 1 1 636B8210
P 9650 7200
AR Path="/636550FF/636B8210" Ref="U?"  Part="1" 
AR Path="/636B8210" Ref="U5"  Part="1" 
F 0 "U5" H 9650 7525 50  0000 C CNN
F 1 "74LS10" H 9650 7434 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 9650 7200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS10" H 9650 7200 50  0001 C CNN
	1    9650 7200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS10 U?
U 2 1 636B8216
P 9650 8100
AR Path="/636550FF/636B8216" Ref="U?"  Part="2" 
AR Path="/636B8216" Ref="U5"  Part="2" 
F 0 "U5" H 9650 8425 50  0000 C CNN
F 1 "74LS10" H 9650 8334 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 9650 8100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS10" H 9650 8100 50  0001 C CNN
	2    9650 8100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS10 U?
U 3 1 636B821D
P 9700 8950
AR Path="/636550FF/636B821D" Ref="U?"  Part="3" 
AR Path="/636B821D" Ref="U5"  Part="3" 
F 0 "U5" H 9700 9275 50  0000 C CNN
F 1 "74LS10" H 9700 9184 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 9700 8950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS10" H 9700 8950 50  0001 C CNN
	3    9700 8950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U?
U 1 1 636B8223
P 8500 9600
AR Path="/636550FF/636B8223" Ref="U?"  Part="1" 
AR Path="/636B8223" Ref="U2"  Part="1" 
F 0 "U2" H 8500 9917 50  0000 C CNN
F 1 "74LS04" H 8500 9826 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 8500 9600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 8500 9600 50  0001 C CNN
	1    8500 9600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS30 U?
U 1 1 636B8229
P 6550 7300
AR Path="/636550FF/636B8229" Ref="U?"  Part="1" 
AR Path="/636B8229" Ref="U3"  Part="1" 
F 0 "U3" H 6550 7825 50  0000 C CNN
F 1 "74LS30" H 6550 7734 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 6550 7300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS30" H 6550 7300 50  0001 C CNN
	1    6550 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 7300 9350 7300
Wire Wire Line
	9150 6750 9150 7100
Wire Wire Line
	9150 7100 9350 7100
Text Label 7900 6750 0    50   ~ 0
A0
Wire Wire Line
	10300 7200 9950 7200
Wire Wire Line
	11000 11100 10300 11100
Wire Wire Line
	7550 7300 7550 8200
Wire Wire Line
	9350 8200 7550 8200
Connection ~ 7550 8200
Wire Wire Line
	8950 7550 8950 8000
Wire Wire Line
	8950 8000 9350 8000
Text Label 7900 7550 0    50   ~ 0
A0
Wire Wire Line
	9350 8100 8800 8100
Wire Wire Line
	8150 7950 7900 7950
Text Label 7900 7950 0    50   ~ 0
~RD
Wire Wire Line
	9950 8100 20000 8100
Wire Wire Line
	20000 8100 20000 11100
Wire Wire Line
	7550 9050 9400 9050
Wire Wire Line
	7550 8200 7550 9050
Text Label 7900 8650 0    50   ~ 0
A0
Text Label 7900 9600 0    50   ~ 0
~WR
Wire Wire Line
	11000 8950 10000 8950
$Comp
L 74xx:74LS04 U?
U 2 1 636B8257
P 7000 1800
AR Path="/636550FF/636B8257" Ref="U?"  Part="2" 
AR Path="/636B8257" Ref="U2"  Part="2" 
F 0 "U2" H 7000 2117 50  0000 C CNN
F 1 "74LS04" H 7000 2026 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 7000 1800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 7000 1800 50  0001 C CNN
	2    7000 1800
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U?
U 3 1 636B825D
P 7000 2600
AR Path="/636550FF/636B825D" Ref="U?"  Part="3" 
AR Path="/636B825D" Ref="U2"  Part="3" 
F 0 "U2" H 7000 2917 50  0000 C CNN
F 1 "74LS04" H 7000 2826 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 7000 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 7000 2600 50  0001 C CNN
	3    7000 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 4450 10250 5750
Wire Wire Line
	10250 5750 10900 5750
Connection ~ 10250 4450
Wire Wire Line
	11500 5750 12250 5750
Wire Wire Line
	12250 5750 12250 2100
$Comp
L 74xx:74LS04 U?
U 4 1 636B8268
P 7000 3150
AR Path="/636550FF/636B8268" Ref="U?"  Part="4" 
AR Path="/636B8268" Ref="U2"  Part="4" 
F 0 "U2" H 7000 3467 50  0000 C CNN
F 1 "74LS04" H 7000 3376 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 7000 3150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 7000 3150 50  0001 C CNN
	4    7000 3150
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U?
U 5 1 636B826E
P 11200 5750
AR Path="/636550FF/636B826E" Ref="U?"  Part="5" 
AR Path="/636B826E" Ref="U2"  Part="5" 
F 0 "U2" H 11200 6067 50  0000 C CNN
F 1 "74LS04" H 11200 5976 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 11200 5750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 11200 5750 50  0001 C CNN
	5    11200 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 2150 7650 1600
Wire Wire Line
	7650 1600 8100 1600
Wire Wire Line
	8100 1700 7700 1700
Wire Wire Line
	8100 1800 7750 1800
Wire Wire Line
	8100 1900 7800 1900
Wire Wire Line
	7800 1900 7800 3500
Wire Wire Line
	8100 2000 7850 2000
Wire Wire Line
	7850 2000 7850 3700
Wire Wire Line
	6450 1800 6700 1800
Wire Wire Line
	6450 2600 6700 2600
Wire Wire Line
	6450 3150 6700 3150
Text Label 6450 1400 0    50   ~ 0
A7
Text Label 6450 1800 0    50   ~ 0
A6
Text Label 6450 2150 0    50   ~ 0
A5
Text Label 6450 2600 0    50   ~ 0
A4
Text Label 6450 3150 0    50   ~ 0
A3
Wire Wire Line
	11850 2800 12350 2800
Wire Wire Line
	11850 2700 12350 2700
Wire Wire Line
	11850 2600 12350 2600
Text Label 9400 3300 0    50   ~ 0
D7
Text Label 9400 3200 0    50   ~ 0
D6
Text Label 9400 3100 0    50   ~ 0
D5
Text Label 9400 3000 0    50   ~ 0
D4
Text Label 9400 2900 0    50   ~ 0
D3
Wire Wire Line
	9350 2900 10450 2900
Wire Wire Line
	9350 3000 10450 3000
Wire Wire Line
	9350 3100 10450 3100
Wire Wire Line
	9350 3200 10450 3200
Wire Wire Line
	9350 3300 10450 3300
Text Label 9400 2800 0    50   ~ 0
D2
Text Label 9400 2700 0    50   ~ 0
D1
Text Label 9400 2600 0    50   ~ 0
D0
Wire Wire Line
	9350 2800 10450 2800
Wire Wire Line
	9350 2700 10450 2700
Wire Wire Line
	9350 2600 10450 2600
Text Label 9400 2200 0    50   ~ 0
A0
Text Label 9400 2300 0    50   ~ 0
A1
Text Label 10150 12000 0    50   ~ 0
D0
Text Label 10150 12100 0    50   ~ 0
D1
Text Label 10150 12200 0    50   ~ 0
D2
Text Label 10150 12300 0    50   ~ 0
D3
Text Label 10150 12400 0    50   ~ 0
D4
Text Label 10150 12500 0    50   ~ 0
D5
Text Label 10150 12600 0    50   ~ 0
D6
Text Label 10150 12700 0    50   ~ 0
D7
Text Label 9400 1900 0    50   ~ 0
~WR
Text Label 9400 1800 0    50   ~ 0
~RD
Wire Wire Line
	9350 2200 10450 2200
Wire Wire Line
	9350 2300 10450 2300
Text Label 9400 4450 0    50   ~ 0
RESET
NoConn ~ 3400 3100
Wire Wire Line
	8700 1700 10450 1700
Wire Wire Line
	10300 7200 10300 11100
Wire Wire Line
	11000 8950 11000 10250
$Comp
L 74xx:74LS04 U2
U 6 1 65F78326
P 14050 8850
F 0 "U2" H 14050 9167 50  0000 C CNN
F 1 "74LS04" H 14050 9076 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 14050 8850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 14050 8850 50  0001 C CNN
	6    14050 8850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 7 1 66078E53
P 3500 13050
F 0 "U1" H 3730 13096 50  0000 L CNN
F 1 "74LS04" H 3730 13005 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 3500 13050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3500 13050 50  0001 C CNN
	7    3500 13050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U2
U 7 1 6607AEE9
P 4750 13050
F 0 "U2" H 4980 13096 50  0000 L CNN
F 1 "74LS04" H 4980 13005 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 4750 13050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 4750 13050 50  0001 C CNN
	7    4750 13050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS30 U3
U 2 1 6607E31E
P 6050 13050
F 0 "U3" H 6280 13096 50  0000 L CNN
F 1 "74LS30" H 6280 13005 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 6050 13050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS30" H 6050 13050 50  0001 C CNN
	2    6050 13050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS30 U4
U 2 1 6607FD78
P 7300 13050
F 0 "U4" H 7530 13096 50  0000 L CNN
F 1 "74LS30" H 7530 13005 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 7300 13050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS30" H 7300 13050 50  0001 C CNN
	2    7300 13050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS10 U5
U 4 1 66082E6B
P 8450 13050
F 0 "U5" H 8680 13096 50  0000 L CNN
F 1 "74LS10" H 8680 13005 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 8450 13050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS10" H 8450 13050 50  0001 C CNN
	4    8450 13050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 12550 3500 12450
Wire Wire Line
	3500 12450 4200 12450
Wire Wire Line
	4750 12450 4750 12550
Wire Wire Line
	4750 12450 5500 12450
Wire Wire Line
	6050 12450 6050 12550
Connection ~ 4750 12450
Wire Wire Line
	6050 12450 6750 12450
Wire Wire Line
	7300 12450 7300 12550
Connection ~ 6050 12450
Wire Wire Line
	7300 12450 7900 12450
Wire Wire Line
	8450 12450 8450 12550
Connection ~ 7300 12450
Wire Wire Line
	3500 13550 3500 13650
Wire Wire Line
	3500 13650 4200 13650
Wire Wire Line
	4750 13650 4750 13550
Wire Wire Line
	6050 13650 6050 13550
Connection ~ 4750 13650
Wire Wire Line
	6050 13650 6750 13650
Wire Wire Line
	7300 13650 7300 13550
Connection ~ 6050 13650
Wire Wire Line
	7300 13650 7900 13650
Wire Wire Line
	8450 13650 8450 13550
Connection ~ 7300 13650
$Comp
L power:GND #PWR?
U 1 1 66323DEB
P 3500 13650
AR Path="/6274F952/66323DEB" Ref="#PWR?"  Part="1" 
AR Path="/66323DEB" Ref="#PWR023"  Part="1" 
AR Path="/636550FF/66323DEB" Ref="#PWR?"  Part="1" 
F 0 "#PWR023" H 3500 13400 50  0001 C CNN
F 1 "GND" H 3505 13477 50  0000 C CNN
F 2 "" H 3500 13650 50  0001 C CNN
F 3 "" H 3500 13650 50  0001 C CNN
	1    3500 13650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6638C09B
P 3500 12450
AR Path="/6274F952/6638C09B" Ref="#PWR?"  Part="1" 
AR Path="/6638C09B" Ref="#PWR022"  Part="1" 
AR Path="/636550FF/6638C09B" Ref="#PWR?"  Part="1" 
F 0 "#PWR022" H 3500 12300 50  0001 C CNN
F 1 "+5V" H 3515 12623 50  0000 C CNN
F 2 "" H 3500 12450 50  0001 C CNN
F 3 "" H 3500 12450 50  0001 C CNN
	1    3500 12450
	1    0    0    -1  
$EndComp
Connection ~ 3500 12450
$Comp
L Device:C C?
U 1 1 66451569
P 2950 12950
AR Path="/6274F952/66451569" Ref="C?"  Part="1" 
AR Path="/66451569" Ref="C7"  Part="1" 
AR Path="/636550FF/66451569" Ref="C?"  Part="1" 
F 0 "C7" H 3065 12996 50  0000 L CNN
F 1 "0.1uF" H 3065 12905 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 2988 12800 50  0001 C CNN
F 3 "~" H 2950 12950 50  0001 C CNN
	1    2950 12950
	1    0    0    -1  
$EndComp
Connection ~ 3500 13650
$Comp
L Device:C C?
U 1 1 6662E0E5
P 4200 12950
AR Path="/6274F952/6662E0E5" Ref="C?"  Part="1" 
AR Path="/6662E0E5" Ref="C8"  Part="1" 
AR Path="/636550FF/6662E0E5" Ref="C?"  Part="1" 
F 0 "C8" H 4315 12996 50  0000 L CNN
F 1 "0.1uF" H 4315 12905 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 4238 12800 50  0001 C CNN
F 3 "~" H 4200 12950 50  0001 C CNN
	1    4200 12950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 66683051
P 5500 12950
AR Path="/6274F952/66683051" Ref="C?"  Part="1" 
AR Path="/66683051" Ref="C9"  Part="1" 
AR Path="/636550FF/66683051" Ref="C?"  Part="1" 
F 0 "C9" H 5615 12996 50  0000 L CNN
F 1 "0.1uF" H 5615 12905 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 5538 12800 50  0001 C CNN
F 3 "~" H 5500 12950 50  0001 C CNN
	1    5500 12950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 666D8858
P 6750 12900
AR Path="/6274F952/666D8858" Ref="C?"  Part="1" 
AR Path="/666D8858" Ref="C10"  Part="1" 
AR Path="/636550FF/666D8858" Ref="C?"  Part="1" 
F 0 "C10" H 6865 12946 50  0000 L CNN
F 1 "0.1uF" H 6865 12855 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 6788 12750 50  0001 C CNN
F 3 "~" H 6750 12900 50  0001 C CNN
	1    6750 12900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6672E2BA
P 7900 12900
AR Path="/6274F952/6672E2BA" Ref="C?"  Part="1" 
AR Path="/6672E2BA" Ref="C11"  Part="1" 
AR Path="/636550FF/6672E2BA" Ref="C?"  Part="1" 
F 0 "C11" H 8015 12946 50  0000 L CNN
F 1 "0.1uF" H 8015 12855 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 7938 12750 50  0001 C CNN
F 3 "~" H 7900 12900 50  0001 C CNN
	1    7900 12900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 12800 2950 12450
Wire Wire Line
	2950 12450 3500 12450
Wire Wire Line
	2950 13650 3500 13650
Wire Wire Line
	2950 13100 2950 13650
Wire Wire Line
	4200 13100 4200 13650
Connection ~ 4200 13650
Wire Wire Line
	4200 13650 4750 13650
Wire Wire Line
	4200 12800 4200 12450
Connection ~ 4200 12450
Wire Wire Line
	4200 12450 4750 12450
Wire Wire Line
	5500 12800 5500 12450
Connection ~ 5500 12450
Wire Wire Line
	5500 12450 6050 12450
Wire Wire Line
	4750 13650 5500 13650
Wire Wire Line
	5500 13100 5500 13650
Connection ~ 5500 13650
Wire Wire Line
	5500 13650 6050 13650
Wire Wire Line
	6750 13050 6750 13650
Connection ~ 6750 13650
Wire Wire Line
	6750 13650 7300 13650
Wire Wire Line
	6750 12750 6750 12450
Connection ~ 6750 12450
Wire Wire Line
	6750 12450 7300 12450
Wire Wire Line
	7900 12750 7900 12450
Connection ~ 7900 12450
Wire Wire Line
	7900 12450 8450 12450
Wire Wire Line
	7900 13050 7900 13650
Connection ~ 7900 13650
Wire Wire Line
	7900 13650 8450 13650
NoConn ~ 3400 3000
NoConn ~ 3400 3200
NoConn ~ 3400 3400
NoConn ~ 3400 3500
NoConn ~ 3400 3600
NoConn ~ 3400 3700
NoConn ~ 2400 2200
NoConn ~ 2400 2300
NoConn ~ 2400 2400
NoConn ~ 2400 2500
NoConn ~ 2400 2600
NoConn ~ 2400 2700
NoConn ~ 2400 2800
NoConn ~ 2400 2900
NoConn ~ 3400 2800
NoConn ~ 3400 2300
NoConn ~ 3400 2400
Wire Wire Line
	6250 7600 5800 7600
Wire Wire Line
	4850 8700 4500 8700
Wire Wire Line
	6250 7700 5850 7700
Wire Wire Line
	4850 9350 4500 9350
Text Label 4500 8700 0    50   ~ 0
A2
Text Label 4500 9350 0    50   ~ 0
A1
Wire Wire Line
	5800 7600 5800 9350
Wire Wire Line
	5800 9350 5450 9350
Wire Wire Line
	5850 7700 5850 9900
Wire Wire Line
	5850 9900 5450 9900
Wire Wire Line
	4500 7000 6250 7000
Wire Wire Line
	4500 7300 5550 7300
Wire Wire Line
	4500 7600 5600 7600
Wire Wire Line
	4500 7900 5650 7900
Wire Wire Line
	4500 8250 5700 8250
Wire Wire Line
	5750 7500 5750 8700
Wire Wire Line
	5750 8700 5450 8700
Wire Wire Line
	6850 7300 6900 7300
Wire Wire Line
	7500 7300 7550 7300
Connection ~ 7550 7300
Wire Wire Line
	7900 9600 8200 9600
Wire Wire Line
	7900 8650 8200 8650
Wire Wire Line
	7900 6750 9150 6750
Wire Wire Line
	7900 7550 8950 7550
Wire Wire Line
	8750 7950 8800 7950
Wire Wire Line
	8800 7950 8800 8100
Wire Wire Line
	8800 8650 8800 8850
Wire Wire Line
	8800 8850 9400 8850
Wire Wire Line
	8800 9600 9200 9600
Wire Wire Line
	9200 9600 9200 8950
Wire Wire Line
	9200 8950 9400 8950
Wire Wire Line
	9350 7200 9200 7200
Wire Wire Line
	9200 7200 9200 8950
Connection ~ 9200 8950
Wire Wire Line
	7850 3700 5850 3700
Wire Wire Line
	5850 3700 5850 7700
Connection ~ 5850 7700
Wire Wire Line
	6450 1400 8100 1400
Wire Wire Line
	6450 2150 7650 2150
Wire Wire Line
	7300 1800 7400 1800
Wire Wire Line
	7400 1800 7400 1500
Wire Wire Line
	7400 1500 8100 1500
Wire Wire Line
	7700 1700 7700 2600
Wire Wire Line
	7700 2600 7300 2600
Wire Wire Line
	7750 1800 7750 3150
Wire Wire Line
	7750 3150 7300 3150
Wire Wire Line
	5750 3500 5750 7500
Wire Wire Line
	5750 3500 7800 3500
Connection ~ 5750 7500
$Comp
L power:+5V #PWR?
U 1 1 638B9108
P 8250 2400
AR Path="/636550FF/638B9108" Ref="#PWR?"  Part="1" 
AR Path="/638B9108" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 8250 2250 50  0001 C CNN
F 1 "+5V" H 8265 2573 50  0000 C CNN
F 2 "" H 8250 2400 50  0001 C CNN
F 3 "" H 8250 2400 50  0001 C CNN
	1    8250 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 2100 7950 2500
Wire Wire Line
	7950 2500 8250 2500
Wire Wire Line
	8250 2500 8250 2400
Wire Wire Line
	7950 2100 8100 2100
$EndSCHEMATC
