# MZ-80B、MZ-2000のアプリケーションをSD-CARDから起動、ロード、セーブ機能を

![MZ-2000_SD](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/TITLE.jpg)

　MZ-80B、MZ-2000でSD-CARDからのアプリケーション起動、BASICなどのアプリケーションからSD-CARDへのロード、セーブを実現するものです。

　MZ-80B、MZ-2000では「/」キーを押しながら電源を入れる、又は「/」キーを押しながらIPLボタンを押すことでI/Oデバイスとして繋いだROMからプログラムを読み込ませて起動する機能があります。

　この機能を使ってSD-CARDからアプリケーションを起動させる機能を持たせたMONITOR SB-1520(MZ-80B)、MONITOR 1Z-1Z001M(MZ-2000)をROM起動させます。

　SD対応MONITORからはFD又はFDLコマンドでSDからアプリケーションをLOAD実行ができます。

　LOAD実行範囲は、0000h～F7FFhです。アプリケーション、ゲームを起動させるにはほぼ問題ないと思います。

　なお、アプリケーション中でのSD-CARDとのロード、セーブについては、アプリケーションごとにSD-CARD対応化を行う必要があります。

　EXPANSION UNITが接続されていないMZ-2000でも使えます。

　MZ-2500の80Bモード、2000モードでも使えます。

　現在、アプリケーション中でのSD-CARDとのLOAD、SAVEに対応できているものは以下のとおりです。

### MZ-2000用
|アプリケーション名|備考|
| ------------ | ------------ |
|BASIC MZ-1Z001||
|BASIC MZ-1Z002||
|MZ-LISP       |I/O '85/3月号|
|S-OS SWORD TAPE版|Oh!MZ '86/2月号|
|TS-2000       |I/O '82/12月号|
|BASE          |I/O '83/1月号|
|WICS          |I/O '83/2月号|
|EDASM         |Oh!MZ '85/1月号|
|TTL           |Oh!MZ '84/10月号|

### MZ-80B用
|アプリケーション名|備考|
| ------------ | ------------ |
|BASIC SB-5520 ||
|BASIC SB-5520 コンパイラ||
|MZ-LISP       |I/O '85/3月号|
|FORTRAN       |I/O別冊MZ-80B活用研究|
|S-OS SWORD TAPE版|Oh!MZ '86/2月号|
|TS-1000       |I/O '82/2月号 I/O別冊MZ-80B活用研究|
|WICS          |I/O '82/3月号 I/O別冊MZ-80B活用研究|
|TTL           |Oh!MZ '84/10月号|


　なお、Arduino、ROMへ書き込むための機器が別途必要となります。

## 回路図
　MZ-2000_SDは、インタフェース基板とSD-CARD UNIT基板の2枚構成となっています。

　KiCadフォルダ内のMZ-2000_EXT-BOARDフォルダのMZ-2000_EXT-BOARD.pdf、MZ2000_SDフォルダのMZ2000_SD.pdfを参照してください。

![インタフェース基板回路図](https://github.com/yanataka60/MZ-2000_SD/blob/main/KiCad/MZ-2000_EXT-BOARD/MZ-2000_EXT-BOARD.pdf)
![EXT-BOARD](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/MZ-2000_EXT-BOARD_schematic.jpg)
![SD-CARD UNIT基板回路図](https://github.com/yanataka60/MZ-2000_SD/blob/main/KiCad/MZ-2000_SD/MZ2000_SD.pdf)
![MZ-2000_SD](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/MZ2000_SD_schematic.jpg)
## 部品

### MZ-2000_EXT-BOARD
|番号|品名|数量|備考|
| ------------ | ------------ | ------------ | ------------ |
|J2|2x22Pinコネクタ|1|秋月電子通商 PH-2x40SGなど|
|J4|DCジャック|1|秋月電子通商 MJ-179PHなど|
|J5|2x22Pinコネクタ|1|秋月電子通商 PH-2x40RGなど(EXPANSION UNITを使う場合には必要ありません)|
|S1|3Pスライドスイッチ|1|秋月電子通商 SS12D01G4など|

### MZ-2000_SD
|番号|品名|数量|備考|
| ------------ | ------------ | ------------ | ------------ |
|J1|2x22Pinコネクタ|1|秋月電子通商 PH-2x40RGなど|
|J2|Micro_SD_Card_Kit|1|秋月電子通商 AE-microSD-LLCNV (注1)|
|U1,U2|74LS273|2||
|U3|8255|1||
|U4|Arduino_Pro_Mini_5V|1|(注2)|
|U5|GAL22V10|1||
|U6|29C256/27C512|1|29C256を使うときは、S1を5V側にして使うこと|
|U9|74LS245|1||
|C1|電解コンデンサ 16v100uF|1||
|C2-C7|積層セラミックコンデンサ 0.1uF|6||
|S1|3Pスライドスイッチ|1|秋月電子通商 SS12D01G4など|

　　　注1)秋月電子通商　AE-microSD-LLCNVのJ1ジャンパはショートしてください。

　　　注2)Arduino Pro MiniはA4、A5ピンも使っています。

### その他必要なもの
　基板のコネクタは2x22Pinで設計していますが、2.54mmピッチ2x22Pinフラットケーブルが手に入りにくいので2.54mmピッチ2x25Pinフラットケーブルで代用しています。

　2.54mmピッチ2x22Pinフラットケーブルが手に入るようであればそちらをお使いください。

#### EXPANSION UNITの拡張スロットに挿入して使用する場合
・2.54mmピッチ2x25Pinフラットケーブル

　長さは50～70mmあれば前面まで持ってこられます。

![EXT_CONNECT_1](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/EXT_CONNECT_1.JPG)
![EXT_CONNECT_2](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/EXT_CONNECT_2.JPG)
![EXT_CONNECT_3](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/EXT_CONNECT_3.JPG)
![EXT_CONNECT_4](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/EXT_CONNECT_4.JPG)
![EXT_CONNECT_5](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/EXT_CONNECT_5.JPG)

#### EXPANSION UNITを使わない場合
・2.54mmピッチ2x25Pinフラットケーブル、ただし片側はカードエッジコネクタ

　長さは50～70mmあれば全面まで持ってこられます。

・2.54mmピッチ2x25Pinフラットケーブル

　重ねた基板を接続するだけなので10mm以上の長さがあれば十分です。

![DIRECT_CONNECT_1](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/DIRECT_CONNECT_1.JPG)
![DIRECT_CONNECT_2](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/DIRECT_CONNECT_2.JPG)
![DIRECT_CONNECT_3](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/DIRECT_CONNECT_3.JPG)
![DIRECT_CONNECT_4](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/DIRECT_CONNECT_4.JPG)
![DIRECT_CONNECT_5](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/DIRECT_CONNECT_5.JPG)
![DIRECT_CONNECT_6](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/DIRECT_CONNECT_6.JPG)

## GAL22V10への書込み
　WINCUPLファルダのMZ2000_SD.jedをROMライター(TL866II Plus等)を使ってGAL22V10に書き込んでください。

## ROMへの書込み
　まず、BASICからMONITOR(0000h～128Fh)を抜き出し、バイナリファイルとして保存します。

|機種名|BASIC名|モニタ名|
| ------------ | ------------ | ------------ |
|MZ-80B|SB-5520|SB-1520|
|MZ-2000|MZ-1Z001 or MZ-1Z002|MZ-1Z001M|

バイナリエディタで以下の修正をします。
### MZ-80B SB-1520
|ADDRESS|修正前|修正後|
| ------------ | ------------ | ------------ |
|0000|C3 3B 00|00 18 38|
|00AE|01 76 49|C3 A0 12|
|00F6|56 17 02|46 00 F8|
|0252|16 01 21|C3 03 F8|
|0283|16 02 ED|C3 06 F8|
|028F|16 04 21|C3 09 F8|
|02B3|16 08 ED|C3 0C F8|
|02BF|16 08 ED|C3 0F F8|

### MZ-2000 MZ-1Z001M
|ADDRESS|修正前|修正後|
| ------------ | ------------ | ------------ |
|0000|C3 3B 00|00 18 38|
|00AE|01 05 4C|C3 A0 12|
|00E5|56      |46      |
|00E7|17 02   |00 F8   |
|0252|16 01 21|C3 03 F8|
|0283|16 02 ED|C3 06 F8|
|028F|16 04 21|C3 09 F8|
|02B3|16 08 ED|C3 0C F8|
|02BF|16 08 ED|C3 0F F8|

　次にEXT-ROMフォルダ内のEXT-ROM_SD MZ-80B.bin又はEXT-ROM_SD MZ-2000.binをMONITORの後ろ(12A0h～)に付け加えて保存します。(0000h～190Ch)

　出来上がったバイナリファイルをROMライター(TL866II Plus等)を使って27C256に書き込んでください。

　27C512を使えば二つのバイナリファイルを切り替えて使うような使い方ができます。このとき、一つのバイナリファイルは32KByte、二つ合わせて64KByteにして書き込んでください。

### 参考)起動プロセス
　1　「/」キーを押しながら電源を入れる、又は「/」キーを押しながらIPLボタンを押す。

　2　EXT-ROMからプログラムが読み込まれ、ノーマル時のメモリマップに切り替わった後、リセットされる。

　3　MINITORが起動し、MZの初期化が行われる。

　4　12A0hからの転送プログラムにより、SDアクセスルーチンをF800hに転送した後、コマンドプロンプトに戻る。

　5　FD又はFDLによりSD-CARD内アプリケーションのLOAD起動を指示するとF800h以降のアクセスルーチンに動作が移る。

　6　指定したファイルがSDに存在したらスタックポインタをFFFFhに設定し直してからLOAD実行が始まる。

　7　MZTファイルのヘッダ情報開始アドレスからファイル長分をLOADし、実行開始アドレスにJUMPする。

## Arduinoプログラム

　MZ-80K_SDと全く同じものを使用しています。

　MZ-80K_SDでソケットを使用して差込式にしているのであればそのままMZ-2000_SDに差して使えます。

　Arduino IDEを使ってMZ-80KリポジトリArduinoフォルダ内のMZ-80K_SD.inoを書き込みます。

　SdFatライブラリを使用していますのでArduino IDEメニューのライブラリの管理からライブラリマネージャを立ち上げて「SdFat」をインストールしてください。

　「SdFat」で検索すれば見つかります。「SdFat」と「SdFat - Adafruit Fork」が見つかりますが「SdFat」のほうを使っています。

## 接続
### MZ-80B、MZ-2000、MZ-2200、MZ-2500の拡張スロットに差し込む
　EXT-BOARDは、10cmx10cmにするために拡張カードとしては寸足らずです。右側をガイドスロットに沿って差し込めるように設計しています。

　MZ-2000_SDへのフラットケーブルは真ん中のJ2に差してください。

### MZ-2000のEXPANSION UNITを使わずに接続する場合
　EXT-BOARDのカードエッジ反対側のJ5と本体のカードエッジを接続します。

　MZ-2000_SDへのフラットケーブルは真ん中のJ2に差してください。

### MZ-2500の拡張ユニットが無く、本体内部のコネクタに接続する場合
　MZ-2000_SDと本体内部のコネクタを単純にPinケーブルで接続するとA、B面が逆転してしまうため動作しません。MZ-2000_SDのコネクタを裏面にハンダ付けするか、変換アダプタを自作して接続してください。

## 外部電源
　拡張スロットに差す場合には外部電源は必要ありません。EXPANSION UNITを使わずにMZ-2000本体に接続する場合は、本体カードエッジには5Vが出ていないため、外部電源が必要となります。

　なお、MZ-2000_SD程度の消費電流であればMZ-2000本体内部から供給しても問題ないと思います。挑戦される方は自己責任でお願いします。

## 操作方法
　ROM起動させた場合にMONITORコマンド入力待ちから以下のコマンドが拡張されます。

　MONITOR本来のMコマンド、Dコマンド、Jコマンドは同じように使えます。

　Lコマンド、SコマンドはSD-CARD対応として使えます。LコマンドでのLOAD実行範囲は12A0h～F7FFhです。

　Vコマンドは、使えません。

　以下、SD-CARD内のファイルに付けられるファイル名をDOSファイル名、MZT形式ファイルのインフォメーションブロック内ファイル名をIBFファイル名とします。

### FD[CR]
　FDのみでDOSファイル名「0000.MZT」がLOAD及び実行されます。

　「0000.MZT」は、パソコンでBASIC等をリネームコピーして作成してください。

　LOAD実行可能範囲は0000h～F7FFhです。

### FD　DOSファイル名[CR]
　DOSファイル名で指定したバイナリファイルをLOADして実行します。

　「.MZT」は省略可能です。

　LOAD実行可能範囲は0000h～F7FFhです。

例)

FD　TEST[CR]

### FDL[CR]
　SD-CARDルートディレクトリにあるファイルの一覧を表示します。20件表示したところで指示待ちになるので打ち切るならSHIFT+BREAK又は↑を入力すると打ち切られ、Bキーで前の20件に戻ります。それ以外のキーで次の20件を表示します。

　行頭に「*FD」を付加して表示してあるので実行したいファイルにカーソルキーを合わせて[CR]キーを押すだけでLOAD、実行が可能です。

　表示される順番は、登録順となりファイル名アルファベッド順などのソートした順で表示することはできません。

　LOAD実行可能範囲は0000h～F7FFhです。

### FDL　x[CR]
ファイル名がxで始まるファイルの一覧を表示します。20件表示したところで指示待ちになるので打ち切るならSHIFT+BREAK又は↑を入力すると打ち切られ、Bキーで前の20件に戻ります。それ以外のキーで次の20件を表示します。

xはMZのキーボードから入力可能な32文字までの文字列です。(数字、記号、アルファベット)

　LOAD実行可能範囲は0000h～F7FFhです。


例)

FDL S[CR]

FDL SP[CR]

FDL BASIC S[CR]


### アプリケーションからのLOAD
　L、LOAD等アプリケーションが指定したコマンドの後ろにはIBFファイル名を指定可となっていますが、指定せずにL、LOAD等のコマンドのみで[CR]キーを押します。

　CMTの場合にはここでPLAYボタンを押すよう指示が出るところですが、「DOS FILE:」と表示して行入力待ちになっていますのでDOSファイル名を入力して[CR]キーを押します。この時、「.MZT」の入力は省略できます。

　DOSファイル名は「.MZT」を除いて32文字まで、ただし半角カタカナ、及び一部の記号はArduinoが認識しないので使えません。パソコンでファイル名を付けるときはアルファベット、数字および空白でファイル名をつけてください。

例)BASIC SP-5030では

× LOAD "TEST"[CR]

○ LOAD[CR]

　DOS FILE:TEST[CR]

○ LOAD[CR]

　DOS FILE:TEST.MZT[CR]

** 参考 **

　S-OS SWORDでの運用に当たっては起動直後に「DV S:」としてデバイスを各SYSTEMデバイスとしてください。

　FUZZY BASICだけかもしれませんが共通フォーマットデバイスのままだとLOADコマンドでIBFファイル名の省略ができませんでした。

#### LOAD時の特殊コマンド
　「DOS FILE:」と表示して行入力待ちになったときに以下の特殊コマンドが使用可能です。

##### *FDL[CR]
##### *FDL x[CR]
　MONITORコマンド入力待ちからのFDL、FDL xと全く同等のファイル一覧機能が使えます。

　検索結果の行頭には「DOS FILE:」を付加して表示してあるのでLOADしたいファイルにカーソルキーを合わせて[CR]キーを押すだけでLOADが可能です。

　「*FDL」で検索、カーソルで選んで読み込もうとした場合に「DOS FILE:」に戻ってしまうアプリケーションがありますが、再度カーソルを合わせて[CR]すれば読み込めます。


### アプリケーションからのSAVE
　CMTの時と同様にアプリケーションの指定する入力方法、ルールでファイル名等を入力して保存してください。

　ただし、半角カタカナはArduinoが認識できないため、使用できません。アルファベット、数字および空白で指定してください。

　SAVE時は、入力したファイル名がIBFファイル名、DOSファイル名の両方に適用されます。

　DOSファイル名としての「.MZT」は自動的に付加されます。

例)BASIC SP-5030では

○ SAVE "TEST"[CR]

## 操作上の注意
　「SD-CARD INITIALIZE ERROR」と表示されたときは、SD-CARDをいったん抜き再挿入したうえでArduinoをリセットしてください。

　SD-CARDにアクセスしていない時に電源が入ったままで SD-CARDを抜いた後、再挿入しSD-CARDにアクセスすると「SD-CARD INITIALIZE ERROR」となる場合があります。再挿入した場合にはSD-CARDにアクセスする前にArduinoを必ずリセットしてください。

　SD-CARDの抜き差しは電源を切った状態で行うほうがより確実です。

　DOSファイル名を指定せずに[CR]を押下してしまった場合、「.MZT」というDOSファイルが作成されてしまいます。この「.MZT」はアプリケーションからLOADする時にDOSファイル名を指定せずに[CR]を押下した場合に読み込まれることで不測の動作を起こす原因になりますので作成された場合には削除しておく方が無難です。

　「.MZT」はWindowsパソコンから消去してください。

## アプリケーションの対応
### BASIC
#### MZ-80B SB-5520
バイナリエディタで以下の修正をします。フリーエリアの修正箇所はI/O '82/8月号 I/O別冊MZ-80B活用研究「BASIC SB-5520の拡張」を参考にしています。
|MZT ADDRESS|実ADDRESS|修正前|修正後|
| ------------ | ------------ | ------------ | ------------ |
|02D2|0252|16 01 21|C3 00 52|
|0303|0283|16 02 ED|C3 03 52|
|030F|028F|16 04 21|C3 06 52|
|0333|02B3|16 08 ED|C3 09 52|
|033F|02BF|16 08 ED|C3 0C 52|
|1329|12A9|FF 49   |9F 57   |
|19FF|197F|5C 51   |A0 57   |
|1AA2|1A22|5C 51   |A0 57   |
|1C12|1B92|5C 51   |A0 57   |
|1C2C|1BAC|5C 51   |A0 57   |
|1C5B|1BDB|5C 51   |A0 57   |
|1C63|1BE3|5C 51   |A0 57   |
|1DDA|1D5A|5C 51   |A0 57   |
|2014|1F94|5C 51   |A0 57   |
|3CF5|3C75|5C 51   |A0 57   |
|3DE3|3D63|5C 51   |A0 57   |
|3E06|3D86|5E 61   |A2 57   |
|3EE5|3E65|5C 51   |A0 57   |
|3EEB|3E6B|5C 51   |A0 57   |

　次にAPP_BASIC_LISP_SDフォルダ内のAPP_BASIC_LISP_SD_SB-5520.binをMZTアドレス5280h(実アドレス5200h)から付け加えて保存します。(MZTファイル0000h～5810h)

#### MZ-2000 MZ-1Z001
バイナリエディタで以下の修正をします。フリーエリアの修正箇所はI/O '83/5月号「MZ-2000 BASICの拡張」を参考にしています。
|MZT ADDRESS|実ADDRESS|修正前|修正後|
| ------------ | ------------ | ------------ | ------------ |
|02D2|0252|16 01 21|C3 00 55|
|0303|0283|16 02 ED|C3 03 55|
|030F|028F|16 04 21|C3 06 55|
|0333|02B3|16 08 ED|C3 09 55|
|033F|02BF|16 08 ED|C3 0C 55|
|1329|12A9|FF 4C   |9F 5A   |
|1A0C|198C|5C 54   |A0 5A   |
|1AAF|1A2F|5C 54   |A0 5A   |
|1C1F|1B9F|5C 54   |A0 5A   |
|1C39|1BB9|5C 54   |A0 5A   |
|1C68|1BE8|5C 54   |A0 5A   |
|1C70|1BF0|5C 54   |A0 5A   |
|1DE7|1D67|5C 54   |A0 5A   |
|2021|1FA1|5C 54   |A0 5A   |
|3CF2|3C72|5C 54   |A0 5A   |
|3DE1|3D61|5C 54   |A0 5A   |
|3E07|3D87|5E 54   |A2 5A   |
|3EE6|3E66|5C 54   |A0 5A   |
|3EEC|3E6C|5C 54   |A0 5A   |

　次にAPP_BASIC_LISP_SDフォルダ内のAPP_BASIC_LISP_SD_MZ-1Z001.binをMZTアドレス5580h(実アドレス5500h)から付け加えて保存します。(MZTファイル0000h～5B10h)

#### MZ-2000 MZ-1Z002
バイナリエディタで以下の修正をします。フリーエリアの修正箇所はI/O '83/5月号「MZ-2000 BASICの拡張」を参考にしています。
|MZT ADDRESS|実ADDRESS|修正前|修正後|
| ------------ | ------------ | ------------ | ------------ |
|02D2|0252|16 01 21|C3 00 66|
|0303|0283|16 02 ED|C3 03 66|
|030F|028F|16 04 21|C3 06 66|
|0333|02B3|16 08 ED|C3 09 66|
|033F|02BF|16 08 ED|C3 0C 66|
|1329|12A9|FF 5D   |9F 6B   |
|1A46|19C6|5C 65   |A0 6B   |
|1AE9|1A69|5C 65   |A0 6B   |
|1C59|1BD9|5C 65   |A0 6B   |
|1C73|1BF3|5C 65   |A0 6B   |
|1CA2|1C22|5C 65   |A0 6B   |
|1CAA|1C2A|5C 65   |A0 6B   |
|1E6D|1DED|5C 65   |A0 6B   |
|20A7|2027|5C 65   |A0 6B   |
|3D78|3CF8|5C 65   |A0 6B   |
|3E67|3DE7|5C 65   |A0 6B   |
|3E8D|3E0D|5E 65   |A2 6B   |
|3F6C|3EEC|5C 65   |A0 6B   |
|3F72|3EF2|5C 65   |A0 6B   |

　次にAPP_BASIC_LISP_SDフォルダ内のAPP_BASIC_LISP_SD_MZ-1Z002.binをMZTアドレス6680h(実アドレス6600h)から付け加えて保存します。(MZTファイル0000h～6C10h)

#### MZ-LISP
MZ-80B版、MZ-2000版ともバイナリエディタで以下の修正をします。
|MZT ADDRESS|実ADDRESS|修正前|修正後|
| ------------ | ------------ | ------------ | ------------ |
|012E|00AE|01 05 4C|C3 A0 12|
|02D2|0252|16 01 21|C3 20 3F|
|0303|0283|16 02 ED|C3 23 3F|
|030F|028F|16 04 21|C3 26 3F|
|0333|02B3|16 08 ED|C3 29 3F|
|033F|02BF|16 08 ED|C3 2C 3F|

　次にAPP_BASIC_LISP_SDフォルダ内のAPP_BASIC_LISP_SD_MZ-LISP_80B.bin又はAPP_BASIC_LISP_SD_MZ-LISP_2000.binをMZTアドレス3FA0h(実アドレス3F20h)から付け加えて保存します。(MZTファイル0000h～4530h)

#### S-OS SWORD TAPE版
MZ-80B版、MZ-2000版ともバイナリエディタで以下の修正をします。
|MZT ADDRESS|実ADDRESS|修正前|修正後|
| ------------ | ------------ | ------------ | ------------ |
|0CEB|1FEB|FF|EF|

　FD又はFDLコマンドでLOAD実行すればSD-CARD対応版SWORDとなります。

　S-OSのアプリケーションはSD-CARD対応版SWORDはすべてSD-CARD対応となるはずです。

　なお、SWORD起動直後に「DV S:」としてSYSTEMデバイスに切り替えておいた方が無難です。

#### TS-1000 TS-2000
バイナリエディタで以下の修正をします。
##### TS-1000
|MZT ADDRESS|実ADDRESS|修正前|修正後|
| ------------ | ------------ | ------------ | ------------ |
|03F5|0375|16 04 21|C3 06 F0|
|0418|0398|16 08 ED|C3 09 F0|
|0424|03A4|16 08 ED|C3 0C F0|
|043F|03BF|16 01 21|C3 00 F0|
|0474|03F4|16 02 ED|C3 03 F0|

##### TS-2000
|MZT ADDRESS|実ADDRESS|修正前|修正後|
| ------------ | ------------ | ------------ | ------------ |
|0414|0394|16 04 21|C3 06 F0|
|0437|03B7|16 08 ED|C3 09 F0|
|0443|03C3|16 08 ED|C3 0C F0|
|045E|03DE|16 01 21|C3 00 F0|
|0493|0413|16 02 ED|C3 03 F0|

　次にTS-1000、TS-2000共にAPP_BASIC_LISP_SDフォルダ内のAPP_TS-1000_TS-2000_SD.binをMZTアドレスF080h(実アドレスF000h)から付け加えて保存します。(MZTファイル0000h～F5EFh)

#### BASE MZ-2000
　FD又はFDLコマンドでTS-2000をLOAD起動した後、LコマンドでBASEを読み込めばSD-CARD対応版として使えます。

　また、SD-CARD対応済みのTS-2000と合わせてMZTファイルとすれば起動が簡単になります。

#### WICS MZ-80B MZ-2000
　FD又はFDLコマンドでMZ-80BならTS-1000、MZ-2000ならTS-2000をLOAD起動した後、LコマンドでWICSを読み込めばSD-CARD対応版として使えます。

　また、SD-CARD対応済みのTS-2000と合わせてMZTファイルとすれば起動が簡単になります。

　WICSコンパイラも同様です。

#### EDASM MZ-2000
　FD又はFDLコマンドでEDASMを読み込めばSD-CARD対応版として使えます。

#### TTL MZ-80B MZ-2000
　FD又はFDLコマンドでTTLを読み込めばSD-CARD対応版として使えます。

#### FORTRAN MZ-80B
　FD又はFDLコマンドでTTLを読み込めばSD-CARD対応版として使えます。

## 謝辞
　基板の作成に当たり以下のデータを使わせていただきました。ありがとうございました。

　Arduino Pro Mini

　　https://github.com/g200kg/kicad-lib-arduino

　AE-microSD-LLCNV

　　https://github.com/kuninet/PC-8001-SD-8kRAM
