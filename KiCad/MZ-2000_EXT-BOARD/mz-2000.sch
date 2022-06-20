EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "MZ-2000_EXT-BOARD"
Date ""
Rev "Rev1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_02x22_Row_Letter_First J1
U 1 1 627EE89C
P 2050 2200
F 0 "J1" H 2100 3350 50  0000 C CNN
F 1 "Conn_02x22_Row_Letter_First" H 1850 3450 50  0000 C CNN
F 2 "mz-2000:BUS_MZ2000" H 2050 2200 50  0001 C CNN
F 3 "~" H 2050 2200 50  0001 C CNN
	1    2050 2200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x22_Row_Letter_First J2
U 1 1 627F25E4
P 2050 4700
F 0 "J2" H 2100 3450 50  0000 C CNN
F 1 "Conn_02x22_Row_Letter_First" H 3050 3500 50  0000 C CNN
F 2 "mz-2000:PinHeader_2x22_P2.54mm_Vertical" H 2050 4700 50  0001 C CNN
F 3 "~" H 2050 4700 50  0001 C CNN
	1    2050 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1200 1600 1200
Wire Wire Line
	1850 1300 1600 1300
Wire Wire Line
	1850 1400 1600 1400
Wire Wire Line
	1850 1500 1600 1500
Wire Wire Line
	2350 1200 2650 1200
Wire Wire Line
	2350 1300 2600 1300
$Comp
L power:+5V #PWR02
U 1 1 62AAC609
P 2650 800
F 0 "#PWR02" H 2650 650 50  0001 C CNN
F 1 "+5V" H 2665 973 50  0000 C CNN
F 2 "" H 2650 800 50  0001 C CNN
F 3 "" H 2650 800 50  0001 C CNN
	1    2650 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 800  2650 900 
Connection ~ 2650 900 
$Comp
L power:GND #PWR01
U 1 1 62B1B61E
P 1800 6150
F 0 "#PWR01" H 1800 5900 50  0001 C CNN
F 1 "GND" H 1805 5977 50  0000 C CNN
F 2 "" H 1800 6150 50  0001 C CNN
F 3 "" H 1800 6150 50  0001 C CNN
	1    1800 6150
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 6315A621
P 3100 800
F 0 "#FLG02" H 3100 875 50  0001 C CNN
F 1 "PWR_FLAG" H 3100 973 50  0000 C CNN
F 2 "" H 3100 800 50  0001 C CNN
F 3 "~" H 3100 800 50  0001 C CNN
	1    3100 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 900  3100 900 
Wire Wire Line
	3100 900  3100 800 
$Comp
L power:PWR_FLAG #FLG01
U 1 1 6318B649
P 1250 5950
F 0 "#FLG01" H 1250 6025 50  0001 C CNN
F 1 "PWR_FLAG" H 1250 6123 50  0000 C CNN
F 2 "" H 1250 5950 50  0001 C CNN
F 3 "~" H 1250 5950 50  0001 C CNN
	1    1250 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 900  2650 1200
$Comp
L Connector:Jack-DC J4
U 1 1 62CAE664
P 4450 1150
F 0 "J4" H 4507 1475 50  0000 C CNN
F 1 "Jack-DC" H 4507 1384 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 4500 1110 50  0001 C CNN
F 3 "~" H 4500 1110 50  0001 C CNN
	1    4450 1150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3800 1050 4150 1050
$Comp
L power:GND #PWR04
U 1 1 62CAE66B
P 3950 1300
F 0 "#PWR04" H 3950 1050 50  0001 C CNN
F 1 "GND" H 3955 1127 50  0000 C CNN
F 2 "" H 3950 1300 50  0001 C CNN
F 3 "" H 3950 1300 50  0001 C CNN
	1    3950 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1300 3950 1250
Wire Wire Line
	3950 1250 4150 1250
$Comp
L Connector_Generic:Conn_02x22_Row_Letter_First J5
U 1 1 62CAE673
P 4450 3600
F 0 "J5" H 4500 4817 50  0000 C CNN
F 1 "Conn_02x22_Row_Letter_First" H 4500 4950 50  0000 C CNN
F 2 "mz-2000:PinHeader_2x22_P2.54mm_Vertical" H 4450 3600 50  0001 C CNN
F 3 "~" H 4450 3600 50  0001 C CNN
	1    4450 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2700 4950 2700
Connection ~ 2650 1200
NoConn ~ 3400 1050
$Comp
L Memory_RAM2:SLIDE_SWITCH_3P S1
U 1 1 62CAE654
P 3600 850
F 0 "S1" H 3600 915 50  0000 C CNN
F 1 "OFF   ON" H 3600 824 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3600 875 50  0001 C CNN
F 3 "" H 3600 875 50  0001 C CNN
	1    3600 850 
	1    0    0    -1  
$EndComp
Text Label 1650 1200 0    50   ~ 0
+5V
Text Label 1650 1300 0    50   ~ 0
D2
Text Label 1650 1400 0    50   ~ 0
D1
Text Label 1650 1500 0    50   ~ 0
D0
Text Label 1650 1600 0    50   ~ 0
GND
Text Label 1650 1700 0    50   ~ 0
A15
Text Label 1650 1800 0    50   ~ 0
A14
Text Label 1650 1900 0    50   ~ 0
A13
Text Label 1650 2000 0    50   ~ 0
A12
Text Label 1650 2100 0    50   ~ 0
A11
Text Label 1650 2200 0    50   ~ 0
A10
Text Label 1650 2300 0    50   ~ 0
A9
Text Label 1650 2400 0    50   ~ 0
A8
Text Label 1650 2500 0    50   ~ 0
A7
Text Label 1650 2600 0    50   ~ 0
A6
Text Label 1650 2700 0    50   ~ 0
A5
Text Label 1650 2800 0    50   ~ 0
A4
Text Label 1650 2900 0    50   ~ 0
A3
Text Label 1650 3000 0    50   ~ 0
A2
Text Label 1650 3100 0    50   ~ 0
A1
Text Label 1650 3200 0    50   ~ 0
A0
Text Label 1650 3300 0    50   ~ 0
GND
Text Label 2350 3300 0    50   ~ 0
GND
Text Label 2350 3200 0    50   ~ 0
~MNI
Text Label 2350 3100 0    50   ~ 0
~EXWAIT
Text Label 2350 3000 0    50   ~ 0
~EXINT
Text Label 2350 2800 0    50   ~ 0
RESET
Text Label 2350 2700 0    50   ~ 0
IE0
Text Label 2350 2600 0    50   ~ 0
IE1
Text Label 2350 2500 0    50   ~ 0
~HALT
Text Label 2350 2400 0    50   ~ 0
GND
Text Label 2350 2300 0    50   ~ 0
~MREQ
Text Label 2350 2200 0    50   ~ 0
~IOREQ
Text Label 2350 2100 0    50   ~ 0
~RD
Text Label 2350 2000 0    50   ~ 0
~WR
Text Label 2350 1900 0    50   ~ 0
~M1
Text Label 2350 1800 0    50   ~ 0
Φ
Text Label 2350 1700 0    50   ~ 0
D7
Text Label 2350 1600 0    50   ~ 0
D6
Text Label 2350 1500 0    50   ~ 0
D5
Text Label 2350 1400 0    50   ~ 0
D4
Text Label 2350 1300 0    50   ~ 0
D3
Text Label 2350 1200 0    50   ~ 0
+5V
Wire Wire Line
	1850 1600 1600 1600
Wire Wire Line
	1850 1700 1600 1700
Wire Wire Line
	1850 1800 1600 1800
Wire Wire Line
	1850 1900 1600 1900
Wire Wire Line
	1850 2000 1600 2000
Wire Wire Line
	1850 2100 1600 2100
Wire Wire Line
	1850 2200 1600 2200
Wire Wire Line
	1850 2300 1600 2300
Wire Wire Line
	1850 2400 1600 2400
Wire Wire Line
	1850 2500 1600 2500
Wire Wire Line
	1850 2600 1600 2600
Wire Wire Line
	1850 2700 1600 2700
Wire Wire Line
	1850 2800 1600 2800
Wire Wire Line
	1850 2900 1600 2900
Wire Wire Line
	1850 3000 1600 3000
Wire Wire Line
	1850 3100 1600 3100
Wire Wire Line
	1850 3200 1600 3200
Wire Wire Line
	1850 3300 1600 3300
Wire Wire Line
	2350 1400 2600 1400
Wire Wire Line
	2350 1500 2600 1500
Wire Wire Line
	2350 1600 2600 1600
Wire Wire Line
	2350 1700 2600 1700
Wire Wire Line
	2350 1800 2600 1800
Wire Wire Line
	2350 1900 2600 1900
Wire Wire Line
	2350 2000 2600 2000
Wire Wire Line
	2350 2100 2600 2100
Wire Wire Line
	2350 2200 2600 2200
Wire Wire Line
	2350 2300 2600 2300
Wire Wire Line
	2350 2400 2600 2400
Wire Wire Line
	2350 2500 2600 2500
Wire Wire Line
	2350 2600 2600 2600
Wire Wire Line
	2350 2700 2600 2700
Wire Wire Line
	2350 2800 2600 2800
Wire Wire Line
	2350 2900 2600 2900
Wire Wire Line
	2350 3000 2600 3000
Wire Wire Line
	2350 3100 2600 3100
Wire Wire Line
	2350 3200 2600 3200
Wire Wire Line
	2350 3300 2600 3300
Wire Wire Line
	1850 3700 1600 3700
Wire Wire Line
	1850 3800 1600 3800
Wire Wire Line
	1850 3900 1600 3900
Wire Wire Line
	1850 4000 1600 4000
Text Label 1650 3700 0    50   ~ 0
+5V
Text Label 1650 3800 0    50   ~ 0
D2
Text Label 1650 3900 0    50   ~ 0
D1
Text Label 1650 4000 0    50   ~ 0
D0
Text Label 1650 4100 0    50   ~ 0
GND
Text Label 1650 4200 0    50   ~ 0
A15
Text Label 1650 4300 0    50   ~ 0
A14
Text Label 1650 4400 0    50   ~ 0
A13
Text Label 1650 4500 0    50   ~ 0
A12
Text Label 1650 4600 0    50   ~ 0
A11
Text Label 1650 4700 0    50   ~ 0
A10
Text Label 1650 4800 0    50   ~ 0
A9
Text Label 1650 4900 0    50   ~ 0
A8
Text Label 1650 5000 0    50   ~ 0
A7
Text Label 1650 5100 0    50   ~ 0
A6
Text Label 1650 5200 0    50   ~ 0
A5
Text Label 1650 5300 0    50   ~ 0
A4
Text Label 1650 5400 0    50   ~ 0
A3
Text Label 1650 5500 0    50   ~ 0
A2
Text Label 1650 5600 0    50   ~ 0
A1
Text Label 1650 5700 0    50   ~ 0
A0
Text Label 1650 5800 0    50   ~ 0
GND
Wire Wire Line
	1850 4100 1600 4100
Wire Wire Line
	1850 4200 1600 4200
Wire Wire Line
	1850 4300 1600 4300
Wire Wire Line
	1850 4400 1600 4400
Wire Wire Line
	1850 4500 1600 4500
Wire Wire Line
	1850 4600 1600 4600
Wire Wire Line
	1850 4700 1600 4700
Wire Wire Line
	1850 4800 1600 4800
Wire Wire Line
	1850 4900 1600 4900
Wire Wire Line
	1850 5000 1600 5000
Wire Wire Line
	1850 5100 1600 5100
Wire Wire Line
	1850 5200 1600 5200
Wire Wire Line
	1850 5300 1600 5300
Wire Wire Line
	1850 5400 1600 5400
Wire Wire Line
	1850 5500 1600 5500
Wire Wire Line
	1850 5600 1600 5600
Wire Wire Line
	1850 5700 1600 5700
Wire Wire Line
	1600 5800 1850 5800
Wire Wire Line
	2350 3700 2600 3700
Wire Wire Line
	2350 3800 2600 3800
Text Label 2350 5800 0    50   ~ 0
GND
Text Label 2350 5700 0    50   ~ 0
~MNI
Text Label 2350 5600 0    50   ~ 0
~EXWAIT
Text Label 2350 5500 0    50   ~ 0
~EXINT
Text Label 2350 5300 0    50   ~ 0
RESET
Text Label 2350 5200 0    50   ~ 0
IE0
Text Label 2350 5100 0    50   ~ 0
IE1
Text Label 2350 5000 0    50   ~ 0
~HALT
Text Label 2350 4900 0    50   ~ 0
GND
Text Label 2350 4800 0    50   ~ 0
~MREQ
Text Label 2350 4700 0    50   ~ 0
~IOREQ
Text Label 2350 4600 0    50   ~ 0
~RD
Text Label 2350 4500 0    50   ~ 0
~WR
Text Label 2350 4400 0    50   ~ 0
~M1
Text Label 2350 4200 0    50   ~ 0
D7
Text Label 2350 4100 0    50   ~ 0
D6
Text Label 2350 4000 0    50   ~ 0
D5
Text Label 2350 3900 0    50   ~ 0
D4
Text Label 2350 3800 0    50   ~ 0
D3
Text Label 2350 3700 0    50   ~ 0
+5V
Wire Wire Line
	2350 3900 2600 3900
Wire Wire Line
	2350 4000 2600 4000
Wire Wire Line
	2350 4100 2600 4100
Wire Wire Line
	2350 4200 2600 4200
Wire Wire Line
	2350 4300 2600 4300
Wire Wire Line
	2350 4400 2600 4400
Wire Wire Line
	2350 4500 2600 4500
Wire Wire Line
	2350 4600 2600 4600
Wire Wire Line
	2350 4700 2600 4700
Wire Wire Line
	2350 4800 2600 4800
Wire Wire Line
	2350 4900 2600 4900
Wire Wire Line
	2350 5000 2600 5000
Wire Wire Line
	2350 5100 2600 5100
Wire Wire Line
	2350 5200 2600 5200
Wire Wire Line
	2350 5300 2600 5300
Wire Wire Line
	2350 5400 2600 5400
Wire Wire Line
	2350 5500 2600 5500
Wire Wire Line
	2350 5600 2600 5600
Wire Wire Line
	2350 5700 2600 5700
Wire Wire Line
	1800 5800 1800 6100
Wire Wire Line
	1250 6100 1800 6100
Wire Wire Line
	1250 5950 1250 6100
Connection ~ 1800 6100
Wire Wire Line
	1800 6100 1800 6150
Wire Wire Line
	2650 1200 3600 1200
Wire Wire Line
	4750 2600 4950 2600
Wire Wire Line
	4750 2900 4950 2900
Wire Wire Line
	4750 2800 4950 2800
Wire Wire Line
	4750 3100 4950 3100
Wire Wire Line
	4750 3000 4950 3000
Wire Wire Line
	4750 3300 4950 3300
Wire Wire Line
	4750 3200 4950 3200
Wire Wire Line
	4750 3500 4950 3500
Wire Wire Line
	4750 3400 4950 3400
Wire Wire Line
	4750 3700 4950 3700
Wire Wire Line
	4750 3600 4950 3600
Wire Wire Line
	4750 3900 4950 3900
Wire Wire Line
	4750 3800 4950 3800
Wire Wire Line
	4750 4100 4950 4100
Wire Wire Line
	4750 4000 4950 4000
Wire Wire Line
	4750 4300 4950 4300
Wire Wire Line
	4750 4200 4950 4200
Wire Wire Line
	4750 4500 4950 4500
Wire Wire Line
	4750 4400 4950 4400
Wire Wire Line
	4750 4700 4950 4700
Wire Wire Line
	4750 4600 4950 4600
Wire Wire Line
	4050 2700 4250 2700
Wire Wire Line
	4050 2600 4250 2600
Wire Wire Line
	4050 2900 4250 2900
Wire Wire Line
	4050 2800 4250 2800
Wire Wire Line
	4050 3100 4250 3100
Wire Wire Line
	4050 3000 4250 3000
Wire Wire Line
	4050 3300 4250 3300
Wire Wire Line
	4050 3200 4250 3200
Wire Wire Line
	4050 3500 4250 3500
Wire Wire Line
	4050 3400 4250 3400
Wire Wire Line
	4050 3700 4250 3700
Wire Wire Line
	4050 3600 4250 3600
Wire Wire Line
	4050 3900 4250 3900
Wire Wire Line
	4050 3800 4250 3800
Wire Wire Line
	4050 4100 4250 4100
Wire Wire Line
	4050 4000 4250 4000
Wire Wire Line
	4050 4300 4250 4300
Wire Wire Line
	4050 4200 4250 4200
Wire Wire Line
	4050 4500 4250 4500
Wire Wire Line
	4050 4400 4250 4400
Wire Wire Line
	4050 4700 4250 4700
Wire Wire Line
	4050 4600 4250 4600
Text Label 4050 2600 0    50   ~ 0
D1
Text Label 4050 2700 0    50   ~ 0
D3
Text Label 4050 2800 0    50   ~ 0
GND
Text Label 4050 2900 0    50   ~ 0
D5
Text Label 4050 3000 0    50   ~ 0
D7
Text Label 4050 3100 0    50   ~ 0
GND
Text Label 4050 3200 0    50   ~ 0
RESET
Text Label 4050 3300 0    50   ~ 0
GND
Text Label 4050 3400 0    50   ~ 0
~HALT
Text Label 4050 3500 0    50   ~ 0
~M1
Text Label 4050 3600 0    50   ~ 0
GND
Text Label 4050 3700 0    50   ~ 0
~WR
Text Label 4050 3800 0    50   ~ 0
~RD
Text Label 4050 3900 0    50   ~ 0
GND
Text Label 4050 4000 0    50   ~ 0
~IOREQ
Text Label 4050 4100 0    50   ~ 0
~MREQ
Text Label 4050 4200 0    50   ~ 0
GND
Text Label 4050 4300 0    50   ~ 0
~EXINT
Text Label 4050 4400 0    50   ~ 0
IE0
Text Label 4050 4500 0    50   ~ 0
~MNI
Text Label 4050 4600 0    50   ~ 0
~EXWAIT
Text Label 4050 4700 0    50   ~ 0
~EXRESET
Text Label 4750 4700 0    50   ~ 0
Φ
Wire Wire Line
	2350 5800 2600 5800
Text Label 2350 2900 0    50   ~ 0
~EXRESET
Text Label 2350 5400 0    50   ~ 0
~EXRESET
Text Label 4750 4600 0    50   ~ 0
A15
Text Label 4750 4500 0    50   ~ 0
A14
Text Label 4750 4400 0    50   ~ 0
A13
Text Label 4750 4300 0    50   ~ 0
A12
Text Label 4750 4200 0    50   ~ 0
A11
Text Label 4750 4100 0    50   ~ 0
A10
Text Label 4750 4000 0    50   ~ 0
A9
Text Label 4750 3900 0    50   ~ 0
A8
Text Label 4750 3800 0    50   ~ 0
A7
Text Label 4750 3700 0    50   ~ 0
A6
Text Label 4750 3600 0    50   ~ 0
A5
Text Label 4750 3500 0    50   ~ 0
A4
Text Label 4750 3400 0    50   ~ 0
A3
Text Label 4750 3300 0    50   ~ 0
A2
Text Label 4750 3200 0    50   ~ 0
A1
Text Label 4750 3100 0    50   ~ 0
A0
Text Label 4750 3000 0    50   ~ 0
D6
Text Label 4750 2900 0    50   ~ 0
D4
Text Label 4750 2800 0    50   ~ 0
GND
Text Label 4750 2700 0    50   ~ 0
D2
Text Label 4750 2600 0    50   ~ 0
D0
Text Label 2350 4300 0    50   ~ 0
Φ
$EndSCHEMATC
