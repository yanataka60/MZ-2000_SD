EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr User 11811 11417
encoding utf-8
Sheet 1 1
Title "MZ-2000_ROM"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74xx:74LS273 U1
U 1 1 625E7AE2
P 4900 5200
F 0 "U1" H 4650 5900 50  0000 C CNN
F 1 "74LS273" H 5100 5900 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_LongPads" H 4900 5200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS273" H 4900 5200 50  0001 C CNN
	1    4900 5200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS273 U2
U 1 1 625E8C92
P 4900 7850
F 0 "U2" H 4650 8550 50  0000 C CNN
F 1 "74LS273" H 5100 8550 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_LongPads" H 4900 7850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS273" H 4900 7850 50  0001 C CNN
	1    4900 7850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 U5
U 1 1 625EA223
P 9050 5950
F 0 "U5" H 9300 6650 50  0000 C CNN
F 1 "74LS245" H 8850 6650 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_LongPads" H 9050 5950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 9050 5950 50  0001 C CNN
	1    9050 5950
	-1   0    0    -1  
$EndComp
$Comp
L Memory_EPROM:27256 U4
U 1 1 625EB0EF
P 7900 6350
F 0 "U4" H 7650 7450 50  0000 C CNN
F 1 "27256" H 8100 7450 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm_LongPads" H 7900 6350 50  0001 C CNN
F 3 "http://datasheet.octopart.com/D27256-2-Intel-datasheet-17852618.pdf" H 7900 6350 50  0001 C CNN
	1    7900 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 8050 6550 8050
Wire Wire Line
	6550 8050 6550 6150
Wire Wire Line
	6550 6150 7500 6150
Wire Wire Line
	5400 7950 6500 7950
Wire Wire Line
	6500 7950 6500 6050
Wire Wire Line
	6500 6050 7500 6050
Wire Wire Line
	5400 7850 6450 7850
Wire Wire Line
	6450 7850 6450 5950
Wire Wire Line
	6450 5950 7500 5950
Wire Wire Line
	5400 7750 6400 7750
Wire Wire Line
	6400 7750 6400 5850
Wire Wire Line
	6400 5850 7500 5850
Wire Wire Line
	5400 7650 6350 7650
Wire Wire Line
	6350 7650 6350 5750
Wire Wire Line
	6350 5750 7500 5750
Wire Wire Line
	5400 7550 6300 7550
Wire Wire Line
	6300 7550 6300 5650
Wire Wire Line
	6300 5650 7500 5650
Wire Wire Line
	5400 7450 6250 7450
Wire Wire Line
	6250 7450 6250 5550
Wire Wire Line
	6250 5550 7500 5550
Wire Wire Line
	5400 7350 6200 7350
Wire Wire Line
	6200 7350 6200 5450
Wire Wire Line
	6200 5450 7500 5450
Wire Wire Line
	7250 6250 7500 6250
Wire Wire Line
	7200 6350 7500 6350
Wire Wire Line
	7150 6450 7500 6450
Wire Wire Line
	7100 6550 7500 6550
Wire Wire Line
	7050 6650 7500 6650
Wire Wire Line
	7000 6750 7500 6750
Wire Wire Line
	6950 6850 7500 6850
Wire Wire Line
	5600 2250 6050 2250
Wire Wire Line
	6050 6450 4250 6450
Wire Wire Line
	4250 6450 4250 8250
Wire Wire Line
	4250 8250 4400 8250
Wire Wire Line
	5600 2350 9900 2350
Wire Wire Line
	9900 6450 9550 6450
Wire Wire Line
	5600 2450 6100 2450
Wire Wire Line
	6100 3950 4250 3950
Wire Wire Line
	4250 3950 4250 5600
Wire Wire Line
	4250 5600 4400 5600
Wire Wire Line
	5400 4700 7250 4700
Wire Wire Line
	7250 4700 7250 6250
Wire Wire Line
	5400 4800 7200 4800
Wire Wire Line
	7200 4800 7200 6350
Wire Wire Line
	5400 4900 7150 4900
Wire Wire Line
	7150 4900 7150 6450
Wire Wire Line
	5400 5000 7100 5000
Wire Wire Line
	7100 5000 7100 6550
Wire Wire Line
	5400 5100 7050 5100
Wire Wire Line
	7050 5100 7050 6650
Wire Wire Line
	5400 5200 7000 5200
Wire Wire Line
	7000 5200 7000 6750
Wire Wire Line
	5400 5300 6950 5300
Wire Wire Line
	6950 5300 6950 6850
Wire Wire Line
	5400 5400 6150 5400
Wire Wire Line
	6150 5400 6150 3150
Wire Wire Line
	6800 3050 6800 7250
Wire Wire Line
	6800 7250 7500 7250
Wire Wire Line
	8300 5450 8550 5450
Wire Wire Line
	8300 5550 8550 5550
Wire Wire Line
	8300 5650 8550 5650
Wire Wire Line
	8300 5750 8550 5750
Wire Wire Line
	8300 5850 8550 5850
Wire Wire Line
	8300 5950 8550 5950
Wire Wire Line
	8300 6050 8550 6050
Wire Wire Line
	8300 6150 8550 6150
$Comp
L Device:C C4
U 1 1 62654DEF
P 8450 7200
F 0 "C4" H 8565 7246 50  0000 L CNN
F 1 "0.1uF" H 8565 7155 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 8488 7050 50  0001 C CNN
F 3 "~" H 8450 7200 50  0001 C CNN
	1    8450 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 5250 7900 5100
Wire Wire Line
	7900 5100 8450 5100
Wire Wire Line
	8450 5100 8450 7050
Wire Wire Line
	8450 7350 8450 7550
Wire Wire Line
	8450 7550 7900 7550
Wire Wire Line
	7900 7550 7900 7450
$Comp
L power:+5V #PWR09
U 1 1 6265A07E
P 8450 5000
F 0 "#PWR09" H 8450 4850 50  0001 C CNN
F 1 "+5V" H 8465 5173 50  0000 C CNN
F 2 "" H 8450 5000 50  0001 C CNN
F 3 "" H 8450 5000 50  0001 C CNN
	1    8450 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 5000 8450 5100
Connection ~ 8450 5100
$Comp
L power:GND #PWR010
U 1 1 6265C4C8
P 8450 7650
F 0 "#PWR010" H 8450 7400 50  0001 C CNN
F 1 "GND" H 8455 7477 50  0000 C CNN
F 2 "" H 8450 7650 50  0001 C CNN
F 3 "" H 8450 7650 50  0001 C CNN
	1    8450 7650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 7650 8450 7550
Connection ~ 8450 7550
Wire Wire Line
	7500 7150 7400 7150
Wire Wire Line
	7400 7150 7400 7550
Wire Wire Line
	7400 7550 7900 7550
Connection ~ 7900 7550
Wire Wire Line
	7500 7050 7400 7050
Wire Wire Line
	7400 7050 7400 5100
Wire Wire Line
	7400 5100 7900 5100
Connection ~ 7900 5100
$Comp
L Device:C C5
U 1 1 6269A68E
P 9750 6650
F 0 "C5" H 9865 6696 50  0000 L CNN
F 1 "0.1uF" H 9865 6605 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 9788 6500 50  0001 C CNN
F 3 "~" H 9750 6650 50  0001 C CNN
	1    9750 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 5150 9050 5100
Wire Wire Line
	9050 5100 9750 5100
Wire Wire Line
	9750 5100 9750 6500
Wire Wire Line
	9750 6800 9750 6900
Wire Wire Line
	9750 6900 9600 6900
Wire Wire Line
	9050 6900 9050 6750
$Comp
L power:+5V #PWR011
U 1 1 626A36F2
P 9750 5000
F 0 "#PWR011" H 9750 4850 50  0001 C CNN
F 1 "+5V" H 9765 5173 50  0000 C CNN
F 2 "" H 9750 5000 50  0001 C CNN
F 3 "" H 9750 5000 50  0001 C CNN
	1    9750 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 5000 9750 5100
Connection ~ 9750 5100
$Comp
L power:GND #PWR012
U 1 1 626AE3F5
P 9750 7000
F 0 "#PWR012" H 9750 6750 50  0001 C CNN
F 1 "GND" H 9755 6827 50  0000 C CNN
F 2 "" H 9750 7000 50  0001 C CNN
F 3 "" H 9750 7000 50  0001 C CNN
	1    9750 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 7000 9750 6900
Connection ~ 9750 6900
Wire Wire Line
	9550 6350 9600 6350
Wire Wire Line
	9600 6350 9600 6900
Connection ~ 9600 6900
Wire Wire Line
	9600 6900 9050 6900
NoConn ~ 5600 2750
$Comp
L Device:C C1
U 1 1 626E8925
P 5450 5650
F 0 "C1" H 5565 5696 50  0000 L CNN
F 1 "0.1uF" H 5565 5605 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 5488 5500 50  0001 C CNN
F 3 "~" H 5450 5650 50  0001 C CNN
	1    5450 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 626EBDC2
P 5450 8300
F 0 "C2" H 5565 8346 50  0000 L CNN
F 1 "0.1uF" H 5565 8255 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 5488 8150 50  0001 C CNN
F 3 "~" H 5450 8300 50  0001 C CNN
	1    5450 8300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 626F0D97
P 5700 3400
F 0 "C3" H 5815 3446 50  0000 L CNN
F 1 "0.1uF" H 5815 3355 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 5738 3250 50  0001 C CNN
F 3 "~" H 5700 3400 50  0001 C CNN
	1    5700 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1950 5100 1850
Wire Wire Line
	5100 1850 5700 1850
Wire Wire Line
	5700 1850 5700 3250
Wire Wire Line
	5700 3550 5100 3550
Wire Wire Line
	5100 3550 5100 3350
Wire Wire Line
	4900 4400 4900 4300
Wire Wire Line
	4900 4300 5450 4300
Wire Wire Line
	5450 4300 5450 5500
Wire Wire Line
	5450 5800 5450 6100
Wire Wire Line
	5450 6100 4900 6100
Wire Wire Line
	4900 6100 4900 6000
Wire Wire Line
	4900 7050 4900 6950
Wire Wire Line
	4900 6950 5450 6950
Wire Wire Line
	5450 6950 5450 8150
Wire Wire Line
	5450 8450 5450 8750
Wire Wire Line
	5450 8750 4900 8750
Wire Wire Line
	4900 8750 4900 8650
Wire Wire Line
	4400 8350 4300 8350
Wire Wire Line
	4300 8350 4300 6950
Wire Wire Line
	4300 6950 4900 6950
Connection ~ 4900 6950
Wire Wire Line
	4400 5700 4300 5700
Wire Wire Line
	4300 5700 4300 4300
Wire Wire Line
	4300 4300 4900 4300
Connection ~ 4900 4300
$Comp
L power:GND #PWR06
U 1 1 6273736E
P 5450 8850
F 0 "#PWR06" H 5450 8600 50  0001 C CNN
F 1 "GND" H 5455 8677 50  0000 C CNN
F 2 "" H 5450 8850 50  0001 C CNN
F 3 "" H 5450 8850 50  0001 C CNN
	1    5450 8850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 8850 5450 8750
Connection ~ 5450 8750
$Comp
L power:GND #PWR08
U 1 1 627479FA
P 5700 3650
F 0 "#PWR08" H 5700 3400 50  0001 C CNN
F 1 "GND" H 5705 3477 50  0000 C CNN
F 2 "" H 5700 3650 50  0001 C CNN
F 3 "" H 5700 3650 50  0001 C CNN
	1    5700 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 3650 5700 3550
Connection ~ 5700 3550
$Comp
L power:GND #PWR04
U 1 1 62766EC2
P 5450 6200
F 0 "#PWR04" H 5450 5950 50  0001 C CNN
F 1 "GND" H 5455 6027 50  0000 C CNN
F 2 "" H 5450 6200 50  0001 C CNN
F 3 "" H 5450 6200 50  0001 C CNN
	1    5450 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 6200 5450 6100
Connection ~ 5450 6100
$Comp
L power:+5V #PWR05
U 1 1 627A5F41
P 5450 6850
F 0 "#PWR05" H 5450 6700 50  0001 C CNN
F 1 "+5V" H 5465 7023 50  0000 C CNN
F 2 "" H 5450 6850 50  0001 C CNN
F 3 "" H 5450 6850 50  0001 C CNN
	1    5450 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 6850 5450 6950
Connection ~ 5450 6950
$Comp
L power:+5V #PWR03
U 1 1 627CDACB
P 5450 4200
F 0 "#PWR03" H 5450 4050 50  0001 C CNN
F 1 "+5V" H 5465 4373 50  0000 C CNN
F 2 "" H 5450 4200 50  0001 C CNN
F 3 "" H 5450 4200 50  0001 C CNN
	1    5450 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 4200 5450 4300
Connection ~ 5450 4300
$Comp
L power:+5V #PWR07
U 1 1 627D8A40
P 5700 1750
F 0 "#PWR07" H 5700 1600 50  0001 C CNN
F 1 "+5V" H 5715 1923 50  0000 C CNN
F 2 "" H 5700 1750 50  0001 C CNN
F 3 "" H 5700 1750 50  0001 C CNN
	1    5700 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1750 5700 1850
Connection ~ 5700 1850
$Comp
L Connector_Generic:Conn_02x22_Row_Letter_First J1
U 1 1 627EE89C
P 2050 2700
F 0 "J1" H 2100 3917 50  0000 C CNN
F 1 "Conn_02x22_Row_Letter_First" H 2100 3826 50  0000 C CNN
F 2 "mz-2000:BUS_MZ2000" H 2050 2700 50  0001 C CNN
F 3 "~" H 2050 2700 50  0001 C CNN
	1    2050 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x22_Row_Letter_First J2
U 1 1 627F25E4
P 2050 5200
F 0 "J2" H 2100 6417 50  0000 C CNN
F 1 "Conn_02x22_Row_Letter_First" H 2100 6326 50  0000 C CNN
F 2 "mz-2000:PinHeader_2x22_P2.54mm_Vertical" H 2050 5200 50  0001 C CNN
F 3 "~" H 2050 5200 50  0001 C CNN
	1    2050 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1700 1750 1700
Wire Wire Line
	1750 1700 1750 4200
Wire Wire Line
	1750 4200 1850 4200
Wire Wire Line
	1850 1800 1700 1800
Wire Wire Line
	1700 1800 1700 4300
Wire Wire Line
	1700 4300 1850 4300
Wire Wire Line
	1850 1900 1650 1900
Wire Wire Line
	1650 1900 1650 4400
Wire Wire Line
	1650 4400 1850 4400
Wire Wire Line
	1850 2000 1600 2000
Wire Wire Line
	1600 2000 1600 4500
Wire Wire Line
	1600 4500 1850 4500
Wire Wire Line
	1850 2100 1550 2100
Wire Wire Line
	1550 2100 1550 4600
Wire Wire Line
	1550 4600 1850 4600
Wire Wire Line
	1850 2200 1500 2200
Wire Wire Line
	1500 2200 1500 4700
Wire Wire Line
	1500 4700 1850 4700
Wire Wire Line
	1850 2300 1450 2300
Wire Wire Line
	1450 2300 1450 4800
Wire Wire Line
	1450 4800 1850 4800
Wire Wire Line
	1850 2400 1400 2400
Wire Wire Line
	1400 2400 1400 4900
Wire Wire Line
	1400 4900 1850 4900
Wire Wire Line
	1850 2500 1350 2500
Wire Wire Line
	1350 2500 1350 5000
Wire Wire Line
	1350 5000 1850 5000
Wire Wire Line
	1850 2600 1300 2600
Wire Wire Line
	1300 2600 1300 5100
Wire Wire Line
	1300 5100 1850 5100
Wire Wire Line
	1850 2700 1250 2700
Wire Wire Line
	1250 2700 1250 5200
Wire Wire Line
	1250 5200 1850 5200
Wire Wire Line
	1850 2800 1200 2800
Wire Wire Line
	1200 2800 1200 5300
Wire Wire Line
	1200 5300 1850 5300
Wire Wire Line
	1850 2900 1150 2900
Wire Wire Line
	1150 2900 1150 5400
Wire Wire Line
	1150 5400 1850 5400
Wire Wire Line
	1850 3000 1100 3000
Wire Wire Line
	1100 3000 1100 5500
Wire Wire Line
	1100 5500 1850 5500
Wire Wire Line
	1850 3100 1050 3100
Wire Wire Line
	1050 3100 1050 5600
Wire Wire Line
	1050 5600 1850 5600
Wire Wire Line
	1850 3200 1000 3200
Wire Wire Line
	1000 3200 1000 5700
Wire Wire Line
	1000 5700 1850 5700
Wire Wire Line
	1850 3300 950  3300
Wire Wire Line
	950  3300 950  5800
Wire Wire Line
	950  5800 1850 5800
Wire Wire Line
	1850 3400 900  3400
Wire Wire Line
	900  3400 900  5900
Wire Wire Line
	900  5900 1850 5900
Wire Wire Line
	1850 3500 850  3500
Wire Wire Line
	850  3500 850  6000
Wire Wire Line
	850  6000 1850 6000
Wire Wire Line
	1850 3600 800  3600
Wire Wire Line
	800  3600 800  6100
Wire Wire Line
	800  6100 1850 6100
Wire Wire Line
	1850 3700 750  3700
Wire Wire Line
	750  3700 750  6200
Wire Wire Line
	750  6200 1850 6200
Wire Wire Line
	1850 3800 700  3800
Wire Wire Line
	700  3800 700  6300
Wire Wire Line
	700  6300 1800 6300
Wire Wire Line
	2350 1700 2550 1700
Wire Wire Line
	2550 1700 2550 4200
Wire Wire Line
	2550 4200 2350 4200
Wire Wire Line
	2350 1800 2600 1800
Wire Wire Line
	2600 1800 2600 4300
Wire Wire Line
	2600 4300 2350 4300
Wire Wire Line
	2350 1900 2650 1900
Wire Wire Line
	2650 1900 2650 4400
Wire Wire Line
	2650 4400 2350 4400
Wire Wire Line
	2350 2000 2700 2000
Wire Wire Line
	2700 2000 2700 4500
Wire Wire Line
	2700 4500 2350 4500
Wire Wire Line
	2350 2100 2750 2100
Wire Wire Line
	2750 2100 2750 4600
Wire Wire Line
	2750 4600 2350 4600
Wire Wire Line
	2350 2200 2800 2200
Wire Wire Line
	2800 2200 2800 4700
Wire Wire Line
	2800 4700 2350 4700
Wire Wire Line
	2350 2300 2850 2300
Wire Wire Line
	2850 2300 2850 4800
Wire Wire Line
	2850 4800 2350 4800
Wire Wire Line
	2350 2400 2900 2400
Wire Wire Line
	2900 4900 2350 4900
Wire Wire Line
	2950 2500 2950 5000
Wire Wire Line
	2950 5000 2350 5000
Wire Wire Line
	2350 2600 3000 2600
Wire Wire Line
	3000 5100 2350 5100
Wire Wire Line
	3000 2600 3000 5100
Wire Wire Line
	2350 2700 3050 2700
Wire Wire Line
	3050 2700 3050 5200
Wire Wire Line
	3050 5200 2350 5200
Wire Wire Line
	2350 2800 3100 2800
Wire Wire Line
	3100 2800 3100 5300
Wire Wire Line
	3100 5300 2350 5300
Wire Wire Line
	2350 2900 3150 2900
Wire Wire Line
	3150 2900 3150 5400
Wire Wire Line
	3150 5400 2350 5400
Wire Wire Line
	2350 3000 3200 3000
Wire Wire Line
	3200 3000 3200 5500
Wire Wire Line
	3200 5500 2350 5500
Wire Wire Line
	2350 3100 3250 3100
Wire Wire Line
	3250 3100 3250 5600
Wire Wire Line
	3250 5600 2350 5600
Wire Wire Line
	2350 3200 3300 3200
Wire Wire Line
	3300 3200 3300 5700
Wire Wire Line
	3300 5700 2350 5700
Wire Wire Line
	2350 3300 3350 3300
Wire Wire Line
	3350 3300 3350 5800
Wire Wire Line
	3350 5800 2350 5800
Wire Wire Line
	2350 3400 3400 3400
Wire Wire Line
	3400 3400 3400 5900
Wire Wire Line
	3400 5900 2350 5900
Wire Wire Line
	2350 3500 3450 3500
Wire Wire Line
	3450 3500 3450 6000
Wire Wire Line
	3450 6000 2350 6000
Wire Wire Line
	2350 3600 3500 3600
Wire Wire Line
	3500 3600 3500 6100
Wire Wire Line
	3500 6100 2350 6100
Wire Wire Line
	2350 3700 3550 3700
Wire Wire Line
	3550 3700 3550 6200
Wire Wire Line
	3550 6200 2350 6200
Wire Wire Line
	2350 3800 3600 3800
Wire Wire Line
	3600 3800 3600 6300
Wire Wire Line
	3600 6300 2450 6300
Wire Wire Line
	1750 1700 1750 1400
Wire Wire Line
	1750 1400 2550 1400
Wire Wire Line
	2550 1400 2550 1700
Connection ~ 1750 1700
Connection ~ 2550 1700
$Comp
L power:+5V #PWR02
U 1 1 62AAC609
P 2550 1300
F 0 "#PWR02" H 2550 1150 50  0001 C CNN
F 1 "+5V" H 2565 1473 50  0000 C CNN
F 2 "" H 2550 1300 50  0001 C CNN
F 3 "" H 2550 1300 50  0001 C CNN
	1    2550 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 1300 2550 1400
Connection ~ 2550 1400
Wire Wire Line
	1550 2100 650  2100
Wire Wire Line
	650  2100 650  6300
Wire Wire Line
	650  6300 700  6300
Connection ~ 1550 2100
Connection ~ 700  6300
Wire Wire Line
	1800 6300 1800 6550
Wire Wire Line
	2450 6550 2450 6300
Connection ~ 1800 6300
Wire Wire Line
	1800 6300 1850 6300
Connection ~ 2450 6300
Wire Wire Line
	2450 6300 2350 6300
Wire Wire Line
	1800 6550 2450 6550
Wire Wire Line
	1800 6650 1800 6550
$Comp
L power:GND #PWR01
U 1 1 62B1B61E
P 1800 6650
F 0 "#PWR01" H 1800 6400 50  0001 C CNN
F 1 "GND" H 1805 6477 50  0000 C CNN
F 2 "" H 1800 6650 50  0001 C CNN
F 3 "" H 1800 6650 50  0001 C CNN
	1    1800 6650
	1    0    0    -1  
$EndComp
Connection ~ 1800 6550
Wire Wire Line
	1600 4500 1600 7350
Wire Wire Line
	1600 7350 4200 7350
Connection ~ 1600 4500
Wire Wire Line
	1650 4400 1650 7450
Wire Wire Line
	1650 7450 4150 7450
Connection ~ 1650 4400
Wire Wire Line
	1700 4300 1700 7550
Wire Wire Line
	1700 7550 4100 7550
Connection ~ 1700 4300
Wire Wire Line
	4200 7350 4200 4700
Wire Wire Line
	4200 4700 4400 4700
Connection ~ 4200 7350
Wire Wire Line
	4200 7350 4400 7350
Wire Wire Line
	4150 7450 4150 4800
Wire Wire Line
	4150 4800 4400 4800
Connection ~ 4150 7450
Wire Wire Line
	4150 7450 4400 7450
Wire Wire Line
	4100 7550 4100 4900
Wire Wire Line
	4100 4900 4400 4900
Connection ~ 4100 7550
Wire Wire Line
	4100 7550 4400 7550
Wire Wire Line
	2600 4300 2600 7650
Wire Wire Line
	2600 7650 4050 7650
Connection ~ 2600 4300
Wire Wire Line
	2650 4400 2650 7750
Wire Wire Line
	2650 7750 4000 7750
Connection ~ 2650 4400
Wire Wire Line
	2700 4500 2700 7850
Wire Wire Line
	2700 7850 3950 7850
Connection ~ 2700 4500
Wire Wire Line
	2750 4600 2750 7950
Wire Wire Line
	2750 7950 3900 7950
Connection ~ 2750 4600
Wire Wire Line
	2800 4700 2800 8050
Wire Wire Line
	2800 8050 3850 8050
Connection ~ 2800 4700
Wire Wire Line
	4050 7650 4050 5000
Wire Wire Line
	4050 5000 4400 5000
Connection ~ 4050 7650
Wire Wire Line
	4050 7650 4400 7650
Wire Wire Line
	4000 7750 4000 5100
Wire Wire Line
	4000 5100 4400 5100
Connection ~ 4000 7750
Wire Wire Line
	4000 7750 4400 7750
Wire Wire Line
	3950 7850 3950 5200
Wire Wire Line
	3950 5200 4400 5200
Connection ~ 3950 7850
Wire Wire Line
	3950 7850 4400 7850
Wire Wire Line
	3900 7950 3900 5300
Wire Wire Line
	3900 5300 4400 5300
Connection ~ 3900 7950
Wire Wire Line
	3900 7950 4400 7950
Wire Wire Line
	3850 8050 3850 5400
Wire Wire Line
	3850 5400 4400 5400
Connection ~ 3850 8050
Wire Wire Line
	3850 8050 4400 8050
Wire Wire Line
	4200 7350 4200 9150
Wire Wire Line
	4200 9150 10000 9150
Wire Wire Line
	10000 9150 10000 5450
Wire Wire Line
	10000 5450 9550 5450
Wire Wire Line
	4150 7450 4150 9200
Wire Wire Line
	4150 9200 10050 9200
Wire Wire Line
	10050 9200 10050 5550
Wire Wire Line
	10050 5550 9550 5550
Wire Wire Line
	4100 7550 4100 9250
Wire Wire Line
	4100 9250 10100 9250
Wire Wire Line
	10100 9250 10100 5650
Wire Wire Line
	10100 5650 9550 5650
Wire Wire Line
	4050 7650 4050 9300
Wire Wire Line
	4050 9300 10150 9300
Wire Wire Line
	10150 9300 10150 5750
Wire Wire Line
	10150 5750 9550 5750
Wire Wire Line
	4000 7750 4000 9350
Wire Wire Line
	4000 9350 10200 9350
Wire Wire Line
	10200 9350 10200 5850
Wire Wire Line
	10200 5850 9550 5850
Wire Wire Line
	3950 7850 3950 9400
Wire Wire Line
	3950 9400 10250 9400
Wire Wire Line
	10250 9400 10250 5950
Wire Wire Line
	10250 5950 9550 5950
Wire Wire Line
	3900 7950 3900 9450
Wire Wire Line
	3900 9450 10300 9450
Wire Wire Line
	10300 9450 10300 6050
Wire Wire Line
	10300 6050 9550 6050
Wire Wire Line
	3850 8050 3850 9500
Wire Wire Line
	3850 9500 10350 9500
Wire Wire Line
	10350 9500 10350 6150
Wire Wire Line
	10350 6150 9550 6150
Wire Wire Line
	1100 3000 1100 950 
Wire Wire Line
	1100 950  4500 950 
Wire Wire Line
	4500 950  4500 2850
Wire Wire Line
	4500 2850 4600 2850
Connection ~ 1100 3000
Wire Wire Line
	1050 3100 1050 900 
Wire Wire Line
	1050 900  4450 900 
Wire Wire Line
	4450 900  4450 2750
Wire Wire Line
	4450 2750 4600 2750
Connection ~ 1050 3100
Wire Wire Line
	1000 3200 1000 850 
Wire Wire Line
	1000 850  4400 850 
Wire Wire Line
	4400 850  4400 2650
Wire Wire Line
	4400 2650 4600 2650
Connection ~ 1000 3200
Wire Wire Line
	950  3300 950  800 
Wire Wire Line
	950  800  4350 800 
Wire Wire Line
	4350 800  4350 2550
Wire Wire Line
	4350 2550 4600 2550
Connection ~ 950  3300
Wire Wire Line
	900  3400 900  750 
Wire Wire Line
	900  750  4300 750 
Wire Wire Line
	4300 750  4300 2450
Wire Wire Line
	4300 2450 4600 2450
Connection ~ 900  3400
Wire Wire Line
	850  3500 850  700 
Wire Wire Line
	850  700  4250 700 
Wire Wire Line
	4250 700  4250 2350
Wire Wire Line
	4250 2350 4600 2350
Connection ~ 850  3500
Wire Wire Line
	800  3600 800  650 
Wire Wire Line
	800  650  4200 650 
Wire Wire Line
	4200 650  4200 2250
Wire Wire Line
	4200 2250 4600 2250
Connection ~ 800  3600
Wire Wire Line
	750  3700 750  600 
Wire Wire Line
	750  600  4150 600 
Wire Wire Line
	4150 600  4150 2150
Wire Wire Line
	4150 2150 4600 2150
Connection ~ 750  3700
Connection ~ 3050 2700
Wire Wire Line
	3000 2600 3950 2600
Wire Wire Line
	3950 2600 3950 2950
Wire Wire Line
	3950 2950 4600 2950
Connection ~ 3000 2600
Wire Wire Line
	3900 2500 3900 3050
Wire Wire Line
	3900 3050 4600 3050
Connection ~ 2950 2500
Wire Wire Line
	2950 2500 3900 2500
$Comp
L power:PWR_FLAG #FLG02
U 1 1 6315A621
P 3000 1300
F 0 "#FLG02" H 3000 1375 50  0001 C CNN
F 1 "PWR_FLAG" H 3000 1473 50  0000 C CNN
F 2 "" H 3000 1300 50  0001 C CNN
F 3 "~" H 3000 1300 50  0001 C CNN
	1    3000 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 1400 3000 1400
Wire Wire Line
	3000 1400 3000 1300
$Comp
L power:PWR_FLAG #FLG01
U 1 1 6318B649
P 2150 6850
F 0 "#FLG01" H 2150 6925 50  0001 C CNN
F 1 "PWR_FLAG" H 2150 7023 50  0000 C CNN
F 2 "" H 2150 6850 50  0001 C CNN
F 3 "~" H 2150 6850 50  0001 C CNN
	1    2150 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 6850 2150 6950
Wire Wire Line
	2150 6950 2450 6950
Wire Wire Line
	2450 6950 2450 6550
Connection ~ 2450 6550
$Comp
L Memory_RAM2:GAL22V10 U3
U 1 1 631BCCBD
P 5100 2650
F 0 "U3" H 4800 3300 50  0000 C CNN
F 1 "GAL22V10" H 5350 3300 50  0000 C CNN
F 2 "Package_DIP:DIP-24_W7.62mm_LongPads" H 5100 2650 50  0001 C CNN
F 3 "" H 5100 2650 50  0001 C CNN
	1    5100 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 2700 3850 3150
Wire Wire Line
	3850 3150 4600 3150
Wire Wire Line
	3050 2700 3850 2700
Wire Wire Line
	6150 3150 5600 3150
Wire Wire Line
	5600 3050 6800 3050
NoConn ~ 5600 2950
NoConn ~ 5600 2850
NoConn ~ 5600 2650
NoConn ~ 5600 2550
Wire Wire Line
	2900 2400 2900 4900
Wire Wire Line
	2350 2500 2950 2500
Wire Wire Line
	6100 2450 6100 3950
Wire Wire Line
	9900 2350 9900 6450
Wire Wire Line
	6050 2250 6050 6450
NoConn ~ 5600 2150
$EndSCHEMATC
