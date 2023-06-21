# MZ-80B、MZ-2000、MZ-2200にSD-CARDからのアプリケーション起動、ロード、セーブ機能

![MZ-2000_SD](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/TITLE.jpg)

　MZ-80B、MZ-2000、MZ-2200でSD-CARDからのアプリケーション起動、BASICなどのアプリケーションからSD-CARDへのロード、セーブを実現するものです。

　MZ-80B、MZ-2000、MZ-2200では「/」キーを押しながら電源を入れる、又は「/」キーを押しながらIPLボタンを押すことでI/Oデバイスとして繋いだROMからプログラムを読み込ませて起動する機能があります。

　この機能を使ってSD-CARDからアプリケーションを起動させる機能を持たせたMONITOR SB-1520(MZ-80B)、MONITOR 1Z-1Z001M(MZ-2000)をROM起動させます。

　SD対応MONITORからはFD又はFDLコマンドでSDからアプリケーションをLOAD実行ができます。

　LOAD実行範囲は、0000h～F7FFhです。アプリケーション、ゲームを起動させるにはほぼ問題ないと思います。

　(2023.1.1)FDコマンドでの読み込み実行で読み込み終了アドレスがF800h以降であっても読み込みスタートアドレスが12A0h以降だった場合に限りFFFFhまでの読み込みに対応しました。

　なお、アプリケーション中でのSD-CARDとのロード、セーブについては、アプリケーションごとにSD-CARD対応化を行う必要があります。

　EXPANSION UNITが接続されていないMZ-2000、MZ-2200でも使えます。

　MZ-2500の80Bモード、2000モードでも使えます。

#### (追記2023.3.8)MZ-2500のZ80PIOとI/Oアドレスがぶつかっていることを失念していました。80Bモード、2000モードでは問題ありませんが、MZ-2500モードではMZ-2000_SDを接続したままRS-232C、マウスは使えません。

　現在、アプリケーション中でのSD-CARDとのLOAD、SAVEに対応できているものは以下のとおりです。

### MZ-2000、MZ-2200用
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
|MZ-LISP       |I/O '85/3月号|
|FORTRAN       |I/O別冊MZ-80B活用研究|
|S-OS SWORD TAPE版|Oh!MZ '86/2月号|
|TS-1000       |I/O '82/2月号 I/O別冊MZ-80B活用研究|
|WICS          |I/O '82/3月号 I/O別冊MZ-80B活用研究|
|TTL           |Oh!MZ '84/10月号|


　なお、Arduino、ROMへ書き込むための機器が別途必要となります。

## 回路図
　MZ-2000_SDは、インタフェース基板とSD-CARD UNIT基板の2枚構成となっています。

　注1)MZ-2000_SD(SD-CARD UNIT基板)でU5 GAL22V10をTTLに置き換えたRev3.3基板のKiCadデータを追加しました。後述「MZ-2000_SD(SD-CARD UNIT基板)Rev3.3」を参照してください。

　注2)MZ-80Bに拡張I/Oポートが装備されていない場合の接続方法については後述「MZ-80Bの拡張I/Oポートを使わずに接続する場合」を参照してください。

　KiCadフォルダ内のMZ-2000_EXT-BOARDフォルダのMZ-2000_EXT-BOARD.pdf、MZ2000_SDフォルダのMZ2000_SD.pdfを参照してください。

[インタフェース基板回路図](https://github.com/yanataka60/MZ-2000_SD/blob/main/KiCad/MZ-2000_EXT-BOARD/MZ-2000_EXT-BOARD.pdf)
![EXT-BOARD](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/MZ-2000_EXT-BOARD_schematic.jpg)
[SD-CARD UNIT基板回路図](https://github.com/yanataka60/MZ-2000_SD/blob/main/KiCad/MZ-2000_SD/MZ2000_SD.pdf)
![MZ-2000_SD](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/MZ2000_SD_schematic.jpg)
## 部品

### MZ-2000_EXT-BOARD(インタフェース基板)
|番号|品名|数量|備考|
| ------------ | ------------ | ------------ | ------------ |
|J2|2x22Pinコネクタ|1|秋月電子通商 PH-2x40SGなど|
|J4|DCジャック|1|秋月電子通商 MJ-179PHなど|
|J5|2x22Pinコネクタ|1|秋月電子通商 PH-2x40RGなど(EXPANSION UNITを使う場合には必要ありません)|
|S1|3Pスライドスイッチ|1|秋月電子通商 SS12D01G4など|

### MZ-2000_SD(SD-CARD UNIT基板)Rev2.x
|番号|品名|数量|備考|
| ------------ | ------------ | ------------ | ------------ |
|J1|2x22Pinコネクタ|1|秋月電子通商 PH-2x40RGなど|
||J2、J3のいずれか|||
|J2|Micro_SD_Card_Kit|1|秋月電子通商 AE-microSD-LLCNV (注1)|
|J3|MicroSD Card Adapter|1|Arduino等に使われる5V電源に対応したもの (注3)|
|U1,U2|74LS273|2||
|U3|8255|1||
|U4|Arduino_Pro_Mini_5V|1|(注2)|
|U5|GAL22V10|1||
|U6|27256/29C256/27512/27C512相当品|1|27256/29C256を使うときは、S1を5V側にして使うこと。28C256はピン配置が違うので使えません。|
|U9|74LS245|1||
|C1|電解コンデンサ 16v100uF|1||
|C2-C7|積層セラミックコンデンサ 0.1uF|6||
|S1|3Pスライドスイッチ|1|秋月電子通商 SS12D01G4など|

　　　注1)秋月電子通商　AE-microSD-LLCNVのJ1ジャンパはショートしてください。

　　　注2)Arduino Pro MiniはA4、A5ピンも使っています。

　　　注3)Arduino等に使われる5V電源に対応したMicroSD Card Adapterも正しく信号を繋げば使えるとご報告いただきました。

### MZ-2000_SD(SD-CARD UNIT基板)Rev3.3
　MZ-2000_SD(SD-CARD UNIT基板)Rev2.xのU5 GAL22V10が以下の部品に置き換わっています。以下の部品以外はMZ-2000_SD(SD-CARD UNIT基板)Rev2.xの説明を参照してください。
|番号|品名|数量|備考|
| ------------ | ------------ | ------------ | ------------ |
|U5 U7|74LS04|2||
|U8 U11|74LS30|2||
|U10|74LS10|1||
|C8-C11|積層セラミックコンデンサ 0.1uF|4||

#### Rev3.3回路図
[SD-CARD UNIT基板回路図](https://github.com/yanataka60/MZ-2000_SD/blob/main/KiCad/MZ-2000_SD_3_3/MZ2000_SD_33.pdf)
![MZ-2000_SD](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/MZ2000_SD_33_schematic.jpg)
![Rev3.3](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/MZ2000_SD_33.jpg)

### MZ-2000_SD(SD-CARD UNIT基板)Rev4.3
　EXT-BOARDとSD-CARD UNIT基板Rev3.3を1枚の基板とした拡張スロット装着専用の基板となります。

　MZ-2000、MZ-2200ならEXPANSION UNIT、MZ-80Bなら拡張I/Oポート、MZ-2500なら拡張ユニットが必要です。

　MZ-2000_SD(SD-CARD UNIT基板)Rev2.xのU5 GAL22V10がTTLに置き換わっています。

　また、J1はカードエッジになっていますので「2x22Pinコネクタ」は必要なく、EXT-BOARDを必要としないのでフラットケーブルも不要です。

|番号|品名|数量|備考|
| ------------ | ------------ | ------------ | ------------ |
||J5、J6のいずれか|||
|J5|Micro_SD_Card_Kit|1|秋月電子通商 AE-microSD-LLCNV (注1)|
|J6|MicroSD Card Adapter|1|Arduino等に使われる5V電源に対応したもの (注3)|
|U1,U2|74LS04|2||
|U3,U4|74LS30|2||
|U5|74LS10|1||
|U6,U7|74LS273|2||
|U8|74LS245|1||
|U9|27256/29C256/27512/27C512相当品|1|27256/29C256を使うときは、S1を5V側にして使うこと。28C256はピン配置が違うので使えません。|
|U10|8255|1||
|U11|Arduino_Pro_Mini_5V|1|(注2)|
|C1|電解コンデンサ 16v100uF|1||
|C2-C11|積層セラミックコンデンサ 0.1uF|10||
|S2|3Pスライドスイッチ|1|秋月電子通商 SS12D01G4など|

　　　注1)秋月電子通商　AE-microSD-LLCNVのJ1ジャンパはショートしてください。

　　　注2)Arduino Pro MiniはA4、A5ピンも使っています。

　　　注3)Arduino等に使われる5V電源に対応したMicroSD Card Adapterも正しく信号を繋げば使えるとご報告いただきました。


#### Rev4.3回路図
[SD-CARD UNIT基板回路図](https://github.com/yanataka60/MZ-2000_SD/blob/main/KiCad/MZ-2000_SD_4_3/MZ2000_SD_43.pdf)
![MZ-2000_SD](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/MZ2000_SD_43_schematic.jpg)
![Rev4.3(1)](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/MZ2000_SD_43(1).JPG)
![Rev4.3(2)](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/MZ2000_SD_43(2).JPG)
![Rev4.3(3)](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/MZ2000_SD_43(3).JPG)

### MicroSD Card Adapterを使う(Rev2.3 Rev3.3)
J3に取り付けます。

MicroSD Card Adapterについているピンヘッダを除去してハンダ付けするのが一番確実ですが、J3の穴にMicroSD Card Adapterをぴったりと押しつけ、裏から多めにハンダを流し込むことでハンダ付けをする方法もあります。なお、この方法の時にはしっかりハンダ付けが出来たかテスターで導通を確認しておいた方が安心です。

ハンダ付けに自信のない方はJ2の秋月電子通商　AE-microSD-LLCNVをお使いください。AE-microSD-LLCNVならパワーLED、アクセスLEDが付いています。

![MicroSD Card Adapter1](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/MicroSD%20Card%20Adapter(1).JPG)

![MicroSD Card Adapter2](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/MicroSD%20Card%20Adapter(2).JPG)

![MicroSD Card Adapter3](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/MicroSD%20Card%20Adapter(3).JPG)

![MicroSD Card Adapter4](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/MicroSD%20Card%20Adapter(4).JPG)


### MicroSD Card Adapterを使う(Rev2.2)
以下のピン番号を参考に変換基板等繋ぎ方は適宜対応してください。
|AE-microSD-LLCNVピン番号|MicroSD Card Adapterピン番号|信号名|
| ---------------------- | -------------------------- | ---- |
|1|2|5V|
|4|1|GND|
|5|5|SCK|
|6|3|MISO|
|7|4|MOSI|
|8|6|CS|

![MicroSD Card Adapter](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/MicroSD%20Card%20Adapter.jpg)

### その他必要なもの
　基板のコネクタは2x22Pinで設計していますが、2.54mmピッチ2x22Pinフラットケーブルが手に入りにくいので2.54mmピッチ2x25Pinフラットケーブルで代用しています。

　2.54mmピッチ2x22Pinフラットケーブルが手に入るようであればそちらをお使いください。

#### EXPANSION UNITの拡張スロットに挿入して使用する場合
・2.54mmピッチ2x25Pinフラットケーブル

　長さは50～70cmあれば前面まで持ってこられます。

#### EXPANSION UNITを使わない場合
・2.54mmピッチ2x25Pinフラットケーブル、ただし片側はカードエッジコネクタ

　長さは50～70cmあれば全面まで持ってこられます。

・2.54mmピッチ2x25Pinフラットケーブル

　インタフェース基板とSD-CARD UNIT基板は重ねられるので10cm以上の長さがあれば十分です。

## GAL22V10への書込み
　WINCUPLファルダのMZ2000_SD.jedをROMライター(TL866II Plus等)を使ってGAL22V10に書き込んでください。

## ROMへの書込み
　まず、BASICからMONITOR(0000h～129Fh)を抜き出し、バイナリファイルとして保存します。

|機種名|BASIC名|モニタ名|
| ------------ | ------------ | ------------ |
|MZ-80B|SB-5520|SB-1520|
|MZ-2000、MZ-2200|MZ-1Z001 or MZ-1Z002|MZ-1Z001M|

バイナリエディタで以下の修正をします。
### MZ-80B SB-1520
|ADDRESS|修正前|修正後|
| ------------ | ------------ | ------------ |
|0000|C3 3B 00|00 18 38|
|00AE|01 76 49(C3 76 49)|C3 A0 12|
|00F6|56 17 02|46 00 F8|
|0252|16 01 21|C3 03 F8|
|0283|16 02 ED|C3 06 F8|
|028F|16 04 21|C3 09 F8|
|02B3|16 08 ED|C3 0C F8|
|02BF|16 08 ED|C3 0F F8|

### MZ-2000、MZ-2200 MZ-1Z001M
|ADDRESS|修正前|修正後|
| ------------ | ------------ | ------------ |
|0000|C3 3B 00|00 18 38|
|00AE|01 05 4C(C3 05 4C)|C3 A0 12|
|00E5|56      |46      |
|00E7|17 02   |00 F8   |
|0252|16 01 21|C3 03 F8|
|0283|16 02 ED|C3 06 F8|
|028F|16 04 21|C3 09 F8|
|02B3|16 08 ED|C3 0C F8|
|02BF|16 08 ED|C3 0F F8|

　次にEXT-ROMフォルダ内のEXT-ROM_SD MZ-80B.bin又はEXT-ROM_SD MZ-2000.binをMONITORの後ろ(12A0h～)に付け加えて保存します。出来上がるバイナリファイルは0000h～198Ehとなるはずです。

　出来上がったバイナリファイルをROMライター(TL866II Plus等)を使って27C256に書き込んでください。

　27C512を使えば二つのバイナリファイルを切り替えて使うような使い方ができます。このとき、一つのバイナリファイルは32KByte、二つ合わせて64KByteにして書き込んでください。

### 参考)起動プロセス
　1　「/」キーを押しながら電源を入れる、又は「/」キーを押しながらIPLボタンを押す。

　2　EXT-ROMからプログラムが読み込まれ、ノーマル時のメモリマップに切り替わった後、リセットされる。

　3　MINITORが起動し、MZの初期化が行われた後、12A0hにJUMPする。

　4　12A0hからの転送プログラムにより、SDアクセスルーチンをF800h以降に転送する。

　5　MZ-2000_SDの8255を初期化する。

　6　12A0hからの転送プログラムが再度起動しないよう00AEhに01hを書き込む。

　7　コマンドプロンプトに戻る。

　8　FDコマンド又はFDLコマンドによりSD-CARD内アプリケーションのLOAD実行が指示されるとF800hのSDアクセスルーチンにJUMPする。

　9　指定したファイルがSDに存在したらスタックポインタをFFFFhに設定する。

　10　MZTファイルのヘッダ情報にあるLOAD開始アドレスからファイル長分をSD-CARDから読み出しメインメモリに書き込む。

　　　この時、LOAD終了アドレスがF800h以降でLOAD開始アドレスが12A0h以降ならSD-LOADルーチンを1200h～124Fhにコピーし1206hにJUMPしてLOADを実行する。

　11　実行開始アドレスが0000hでないならスタックポインタを1140hに設定する。

　12　実行開始アドレスにJUMPする。

### ROMにBOOT LOADERを書き込む方式の追加
　前述のBASICからMONITORを抜き出してROMに書き込む方式は、自分が所有しているBASICから抜き出してROMに書き込むには問題が無いのですが、書き込み済みROMの配布はSHARPの著作権があるので出来ません。

　そこで「@BOOT-A MZ-2000.bin」、「@BOOT-A MZ-80B.bin」というバイナリファイルをSD-CARDから読み込み起動するプログラムをROMに書き込む方式を追加しました。

　ROMに27256を使えば「@BOOT-A MZ-xxxx.bin」、27512を使えば「@BOOT-A MZ-xxxx.bin」と「@BOOT-B MZ-xxxx.bin」を切り替えて読み込むことができます。

　前述「ROMへの書込み」の手順により修正を加えたMONITORの後ろ(12A0h～)にEXT-ROM_SD MZ-2000.bin又はEXT-ROM_SD MZ-80B.binを付け加えて保存したバイナリファイル(従来ROMに書き込んでいたバイナリファイル)を「@BOOT-A MZ-2000.bin」又は「@BOOT-A MZ-80B.bin」のファイルネームでSD-CARDに保存してください。

　27512を使うのであれば同様にBASICを加工したバイナリファイル(従来ROMに書き込んでいたバイナリファイル)を「@BOOT-B MZ-2000.bin」又は「@BOOT-B MZ-80B.bin」のファイルネームでSD-CARDに保存することでスイッチの切り替えで読み込むことができます。

#### BOOT LOADERをROMに書き込む
　BOOT_LOADERフォルダにある「BOOT_A_LOADER.bin」または「BOOT_AB_LOADER.bin」をROMに書き込みます。

　　27256を使用する場合は「BOOT_A_LOADER.bin」を書き込んでください。

　　27512を使用する場合は「BOOT_AB_LOADER.bin」を書き込んでください。

#### 「@BOOT-A MZ-xxxx.bin」を作成してSD-CARDに保存する
　「ROMへの書込み」を参照してバイナリファイル(従来ROMに書き込んでいたバイナリファイル)を作成します。

　出来上がったファイルの名前は、MZ-2000用なら「@BOOT-A MZ-2000.bin」、MZ-80B用なら「@BOOT-A MZ-80B.bin」としてSD-CARDに保存します。

　起動させた機械がMZ-2000か、MZ-80Bか自動的に判断して「@BOOT-A MZ-2000.bin」、「@BOOT-A MZ-80B.bin」のどちらかを読み込まれます。

#### 「@BOOT-B MZ-xxxx.bin」を作成してSD-CARDに保存する(27512を使用する場合)
　後述の「BASICをEXT-ROMから起動させる」を参照してバイナリファイル(従来ROMに書き込んでいたバイナリファイル)を作成し、出来上がったファイルの名前をMZ-2000用なら「@BOOT-B MZ-2000.bin」、MZ-80B用なら「@BOOT-B MZ-80B.bin」としてSD-CARDに保存します。

#### Arduinoプログラム
　この機能に対応させるためArduinoプログラムも更新しました。この機能を使いたい場合にはArduinoプログラムも書き込み直してください。

## Arduinoプログラム

　MZ-80K_SDと全く同じものを使用しています。

　MZ-80K_SDでソケットを使用して差込式にしているのであればそのままMZ-2000_SDに差して使えます。

　Arduino IDEを使ってMZ-80Kリポジトリ Arduinoフォルダ内のMZ-80K_SD.inoを書き込みます。

　SdFatライブラリを使用しているのでArduino IDEメニューのライブラリの管理からライブラリマネージャを立ち上げて「SdFat」をインストールしてください。

　「SdFat」で検索すれば見つかります。「SdFat」と「SdFat - Adafruit Fork」が見つかりますが「SdFat」のほうを使っています。

注)Arduinoを基板に直付けしている場合、Arduinoプログラムを書き込むときは、MZ-2000本体とは接続を外し、74LS04を外したうえで書き込んでください。

## 接続
### MZ-80B、MZ-2000、MZ-2200、MZ-2500の拡張スロットに差し込む
　インタフェース基板は、安価に発注するために10cmx10cmで設計しているのでMZ-80B、MZ-2000、MZ-2200の拡張カードとしては寸足らずです。右側をガイドスロットに沿って差し込めるように設計しています。

　インタフェース基板からMZ-2000_SDへのフラットケーブルは真ん中のJ2に差してください。

![EXT_CONNECT_1](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/EXT_CONNECT_1.JPG)
![EXT_CONNECT_2](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/EXT_CONNECT_2.JPG)
![EXT_CONNECT_3](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/EXT_CONNECT_3.JPG)
![EXT_CONNECT_4](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/EXT_CONNECT_4.JPG)
![EXT_CONNECT_5](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/EXT_CONNECT_5.JPG)

### MZ-2200、MZ-80B、MZ-2500拡張スロットへの抜き差しに苦労する場合
　MZ-2200 EXPANSION UNITにインタフェース基板を挿入しようとしたところ、抜き差しが非常に硬く苦労する個体がありました。

　開発ではMZ-2000 EXPANSION UNITでのスムーズな抜き差しを確認していますが、抜き差しに苦労する場合には画像の部分をほんの少しヤスリ掛け(4～5回)するだけでかなりスムーズになりますのでお試しください。

![Adjustment](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/Adjustment%20place.jpg)

### MZ-2000、MZ-2200のEXPANSION UNITを使わずに接続する場合
　インタフェース基板のカードエッジ反対側のJ5と本体のカードエッジを接続します。

　インタフェース基板からMZ-2000_SDへのフラットケーブルは真ん中のJ2に差してください。

![DIRECT_CONNECT_1](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/DIRECT_CONNECT_1.JPG)
![DIRECT_CONNECT_2](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/DIRECT_CONNECT_2.JPG)
![DIRECT_CONNECT_3](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/DIRECT_CONNECT_3.JPG)
![DIRECT_CONNECT_4](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/DIRECT_CONNECT_4.JPG)
![DIRECT_CONNECT_5](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/DIRECT_CONNECT_5.JPG)
![DIRECT_CONNECT_6](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/DIRECT_CONNECT_6.JPG)

#### カードエッジコネクタを使う
　変則的ではありますが、インタフェース基板に基板用カードエッジコネクタのピンを曲げて付けてみました。

　カードエッジコネクタを基板にハンダ付けすると上面、下面が逆になってしまいますのでカードエッジコネクタは基板の裏面に付ける必要があります。

　カードエッジコネクタB列のピンは90度曲げることでそのままハンダ付けできますが、A列のピンは空中に浮いてしまいますので手配線する必要があります。

　また、MZ-2000本体のカードエッジに挿す時には、基板を逆さまに挿しますのでフラットケーブルが邪魔になって結構斜めになっています。

　ちょっと強引な付け方になりますので試される方は自己責任でお願いします。

![DIRECT_CONNECT_7](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/DIRECT_CONNECT_7.JPG)
![DIRECT_CONNECT_8](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/DIRECT_CONNECT_8.JPG)
![DIRECT_CONNECT_9](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/DIRECT_CONNECT_9.JPG)
![DIRECT_CONNECT_10](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/DIRECT_CONNECT_10.JPG)

### MZ-80Bの拡張I/Oポートを使わずに接続する場合
　MZ-80Bに拡張I/Oポートが装備されていない場合には、MZ-80B用のインタフェース基板を使用します。

[MZ-80Bインタフェース基板回路図](https://github.com/yanataka60/MZ-2000_SD/blob/main/KiCad/MZ-80B_EXT-BOARD/mz-80b.pdf)
![MZ-80B_EXT-BOARD](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/MZ-80B_EXT-BOARD_schematic.jpg)

|番号|品名|数量|備考|
| ------------ | ------------ | ------------ | ------------ |
|J2|2x22Pinコネクタ|1|秋月電子通商 PH-2x40SGなど|
|J3|1Pinコネクタ|1|秋月電子通商 FHU-1x42SGなど|
|J4|DCジャック|1|秋月電子通商 MJ-179PHなど(J3により5Vを供給すれば特に必要はありません)|
|J5|2x20Pinソケット|1|秋月電子通商 FHU-2x42SGなど|
|S1|3Pスライドスイッチ|1|秋月電子通商 SS12D01G4など(J3により5Vを供給すれば特に必要はありません)|
||2.54mmピッチ2x25Pinフラットケーブル|1|長さは50～70cm(手に入れば2x22Pin)|

J5の2x20Pinソケットは基板裏側にハンダ付けします。

ケーブルはMZ-80Bインターフェース基板のJ3から一回反転させてMZ-8000_SDに繋ぎます。

![MZ-80B_EXT_BOARD(1)](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/MZ-80B_EXT_BOARD(1).JPG)

MZ-80B本体後ろからカバーを開け、メインボードに二つ並んでいる2x20Pinコネクタのうち手前の2x20PinコネクタにMZ-80Bインターフェース基板を挿し込みます。ピンの位置を確認してずれて挿すことのないように装着します。

![MZ-80B_EXT_BOARD(2)](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/MZ-80B_EXT_BOARD(2).JPG)

MZ-80B本体内部の拡張I/Oポート用電源から5V電源を供給すれば扱いが楽です。

![MZ-80B_EXT_BOARD(3)](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/MZ-80B_EXT_BOARD(3).JPG)

![MZ-80B_EXT_BOARD(4)](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/MZ-80B_EXT_BOARD(4).JPG)

![MZ-80B_EXT_BOARD(5)](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/MZ-80B_EXT_BOARD(5).JPG)

MZ-80B用拡張I/Oポートが手に入ったときにはMZ-80Bインタフェース基板のカードエッジ側を拡張I/Oポートに挿してください。

![MZ-80B_EXT_BOARD(6)](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/MZ-80B_EXT_BOARD(6).JPG)

### MZ-2500の拡張ユニットが無く、本体内部のコネクタに接続する場合
　MZ-2000_SDと本体内部のコネクタを単純にPinケーブルで接続するとA、B面が逆転してしまうため動作しません。MZ-2000_SDのコネクタを裏面にハンダ付けするか、変換アダプタを自作して接続してください。

![MZ-2500_1](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/MZ-2500_1.jpg)
![MZ-2500_2](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/MZ-2500_2.jpg)

　変換アダプタは、MZ-2000 EXT-BOARDか、MZ-80B EXT-BOARDのどちらかで自作できます。

　EXT-BOARD基板の長さではケースにあたってしまうので若干カットします。

　カードエッジ部を挟み込むように25x2PinピンソケットをEXT-BOARD基板の表面からみて左側に3x2Pinがはみ出すようにハンダ付けします。

　EXT-BOARD基板の裏面に22x2Pinピンヘッダをつけて出来上がりです。

![MZ-2500_1](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/MZ-2500_3.jpg)
![MZ-2500_2](https://github.com/yanataka60/MZ-2000_SD/blob/main/JPEG/MZ-2500_4.jpg)

## 外部電源
　EXPANSION UNITを使わずにMZ-2000、MZ-2200本体に接続する場合は、本体側カードエッジには5Vが出ていないため、外部電源が必要となります。

　なお、MZ-2000_SD程度の消費電流であればMZ-2000本体内部から供給しても問題ないと思います。挑戦される方は自己責任でお願いします。

　拡張スロットに差す場合には外部電源は必要ありません。拡張スロットに差した状態で外部電源を供給すると故障の原因となる恐れがあります。拡張スロットに差す運用のみであればインタフェース基板にはDCジャック及びJ5ピンヘッダは取り付けないほうが無難です。
## SD-CARD
　FAT16又はFAT32が認識できます。

　ルートに置かれたMZTファイルのみ認識できます。(MZT以外のファイル、フォルダも表示されますがLOAD実行の対象になりません)

　ファイル名は「.MZT」を除いて32文字まで、ただし半角カタカナ、及び一部の記号はArduinoが認識しないので使えません。パソコンでファイル名を付けるときはアルファベット、数字および空白でファイル名をつけてください。

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

　注)読み込み終了アドレスがF800h以降であっても読み込みスタートアドレスが12A0h以降だった場合に限りFFFFhまで読み込めます。

### FD　DOSファイル名[CR]
　DOSファイル名で指定したバイナリファイルをLOADして実行します。

　「.MZT」は省略可能です。

　LOAD実行可能範囲は0000h～F7FFhです。

例)

FD　TEST[CR]

　注)読み込み終了アドレスがF800h以降であっても読み込みスタートアドレスが12A0h以降だった場合に限りFFFFhまで読み込めます。

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

　CMTの場合にはここでPLAYボタンを押すよう指示が出るところですが、「DOS FILE:」と表示して行入力待ちになっているのでDOSファイル名を入力して[CR]キーを押します。この時、「.MZT」の入力は省略できます。

　DOSファイル名は「.MZT」を除いて32文字まで、ただし半角カタカナ、及び一部の記号はArduinoが認識しないので使えません。パソコンでファイル名を付けるときはアルファベット、数字および空白でファイル名をつけてください。

例)BASIC MZ-1Z001では

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

例)BASIC MZ-1Z001では

○ SAVE "TEST"[CR]

## 操作上の注意
　「SD-CARD INITIALIZE ERROR」と表示されたときは、SD-CARDをいったん抜き再挿入したうえでArduinoをリセットしてください。

　SD-CARDにアクセスしていない時に電源が入ったままで SD-CARDを抜いた後、再挿入しSD-CARDにアクセスすると「SD-CARD INITIALIZE ERROR」となる場合があります。再挿入した場合にはSD-CARDにアクセスする前にArduinoを必ずリセットしてください。

　SD-CARDの抜き差しは電源を切った状態で行うほうがより確実です。

　SD-CARDへのセーブ時にDOSファイル名を指定せずに[CR]を押下してしまった場合、「.MZT」というDOSファイルが作成されてしまいます。この「.MZT」はアプリケーションからLOADする時にDOSファイル名を指定せずに[CR]を押下した場合に読み込まれることで不測の動作を起こす原因になるので作成された場合には削除しておく方が無難です。

　「.MZT」はWindowsパソコンからリネーム又は削除してください。

## アプリケーションからSD-CARDとのLOAD、SAVEをするための対応
### BASIC
#### MZ-80B　SB-5520
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
|3E06|3D86|5E 51   |A2 57   |
|3EE5|3E65|5C 51   |A0 57   |
|3EEB|3E6B|5C 51   |A0 57   |

　次にAPP_BASIC_LISP_SDフォルダ内のAPP_BASIC_LISP_SD_SB-5520.binをMZTアドレス5280h(実アドレス5200h)から付け加えて保存します。(MZTファイル0000h～5810h)

　SD対応でフリーエリアが44268Byteから42664Byteに減少します。

#### MZ-2000、MZ-2200　MZ-1Z001
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

　SD対応でフリーエリアが43500Byteから41896Byteに減少します。

#### MZ-2000、MZ-2200　MZ-1Z002
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

　SD対応でフリーエリアが39148Byteから37544Byteに減少します。

#### MZ-2000、MZ-2200　DISK BASIC MZ-2Z002
APP_BASIC_LISP_SDフォルダ内のAPP_BASIC_LISP_SD_MZ-2Z002.wavとMZ-2Z002 SD.BAS.wavをカセットテープに録音します。

DISK BASIC MZ-2Z002を起動し、Filing CMTを使ってカセットテープに録音したAPP_BASIC_LISP_SD_MZ-2Z002.wavをFDに保存します。ファイル名は「SD.bin」となります。

次にLOAD/Tコマンドでカセットテープに録音したMZ-2Z002 SD.BAS.wavをFDに保存します。ファイル名は取り敢えず「SD.BAS」とします。

最後に現在のAUTO RUNをリネーム又は削除してから「SD.BAS」を「AUTO RUN」にリネームします。これで起動時にSD対応となります。

　SD対応でフリーエリアが30956Byteから29161Byteに減少します。

#### BASICをEXT-ROMから起動させる
　27C512を使えば二つのバイナリファイルを切り替えて使う使い方ができるのでSD対応MONITORとROM起動SD対応BASICを切り替えて使うこともできます。

　ROM起動SD対応BASICを使えばBASICマシンとしてはかなり快適です。

　BASICをROMに焼くには、SD対応BASICのMZTファイルからヘッダを削除し、以下の修正を加えてROMに焼きます。
|ADDRESS|修正前|修正後|
| ------------ | ------------ | ------------ |
|0000|C3 3B 00|00 18 38|

### MZ-LISP
バイナリエディタで以下の修正をします。
#### MZ-80B版
|MZT ADDRESS|実ADDRESS|修正前|修正後|
| ------------ | ------------ | ------------ | ------------ |
|012E|00AE|01 76 49|C3 A0 12|
|02D2|0252|16 01 21|C3 20 3F|
|0303|0283|16 02 ED|C3 23 3F|
|030F|028F|16 04 21|C3 26 3F|
|0333|02B3|16 08 ED|C3 29 3F|
|033F|02BF|16 08 ED|C3 2C 3F|

#### MZ-2000、MZ-2200版
|MZT ADDRESS|実ADDRESS|修正前|修正後|
| ------------ | ------------ | ------------ | ------------ |
|012E|00AE|01 05 4C|C3 A0 12|
|02D2|0252|16 01 21|C3 20 3F|
|0303|0283|16 02 ED|C3 23 3F|
|030F|028F|16 04 21|C3 26 3F|
|0333|02B3|16 08 ED|C3 29 3F|
|033F|02BF|16 08 ED|C3 2C 3F|

　次にAPP_BASIC_LISP_SDフォルダ内のAPP_BASIC_LISP_SD_MZ-LISP_80B.bin又はAPP_BASIC_LISP_SD_MZ-LISP_2000.binをMZTアドレス3FA0h(実アドレス3F20h)から付け加えて保存します。(MZTファイル0000h～4530h)

### S-OS SWORD TAPE版
MZ-80B版、MZ-2000、MZ-2200版ともバイナリエディタで以下の修正をします。
|MZT ADDRESS|実ADDRESS|修正前|修正後|
| ------------ | ------------ | ------------ | ------------ |
|0C6B|1F6B|FF|EF|

　FD又はFDLコマンドでLOAD実行すればSD-CARD対応版SWORDとなります。

　S-OSのアプリケーションはSD-CARD対応版SWORDはすべてSD-CARD対応となるはずです。

　なお、SWORD起動直後に「DV S:」としてSYSTEMデバイスに切り替えておいた方が無難です。

### TS-1000 TS-2000
バイナリエディタで以下の修正をします。
#### TS-1000
|MZT ADDRESS|実ADDRESS|修正前|修正後|備考|
| ------------ | ------------ | ------------ | ------------ | ---- |
|03F5|0375|16 04 21|C3 06 F0||
|0418|0398|16 08 ED|C3 09 F0||
|0424|03A4|16 08 ED|C3 0C F0||
|043F|03BF|16 01 21|C3 00 F0||
|0474|03F4|16 02 ED|C3 03 F0||
|04F0|0470|EF|C9|(注1)|

##### (注1)この修正によりカセットテープを入れたままLコマンドを実行するとカセットテープの早送りが行われるのが回避できます。

#### TS-2000
|MZT ADDRESS|実ADDRESS|修正前|修正後|備考|
| ------------ | ------------ | ------------ | ------------ | ---- |
|0414|0394|16 04 21|C3 06 F0||
|0437|03B7|16 08 ED|C3 09 F0||
|0443|03C3|16 08 ED|C3 0C F0||
|045E|03DE|16 01 21|C3 00 F0||
|0493|0413|16 02 ED|C3 03 F0||
|04F3|0473|3E|C9|(注1)|

##### (注1)この修正によりカセットテープを入れたままLコマンドを実行するとカセットテープの早送りが行われるのが回避できます。

　次にTS-1000、TS-2000共にAPP_BASIC_LISP_SDフォルダ内のAPP_TS-1000_TS-2000_SD.binをMZTアドレスF080h(実アドレスF000h)から付け加えて保存します。(MZTファイル0000h～F5EFh)

##### Lコマンドから「*FDL」で検索、カーソルで選んで読み込もうとした場合に「DOS FILE:」に戻ってしまいますが、再度カーソルを合わせて[CR]すれば読み込めます。

### BASE MZ-2000 MZ-2200
　FD又はFDLコマンドでTS-2000をLOAD起動した後、LコマンドでBASEを読み込めばSD-CARD対応版として使えます。なお、F000h～F5EFhにはSDアクセスルーチンがあるので破壊しないようにしてください。

　また、SD-CARD対応済みのTS-2000と合わせてMZTファイルとすれば起動が簡単になります。

### WICS MZ-80B MZ-2000 MZ-2200
　FD又はFDLコマンドでMZ-80BならTS-1000、MZ-2000、MZ-2200ならTS-2000をLOAD起動した後、LコマンドでWICSを読み込めばSD-CARD対応版として使えます。なお、F000h～F5EFhにはSDアクセスルーチンがあるので破壊しないようにしてください。

　また、SD-CARD対応済みのTS-2000と合わせてMZTファイルとすれば起動が簡単になります。

　WICSコンパイラも同様です。

### EDASM MZ-2000 MZ-2200
　FD又はFDLコマンドでEDASMを読み込めばSD-CARD対応版として使えます。

　なお、F800h～FE56hにはSDアクセスルーチンがあるので破壊しないようにしてください。

### TTL MZ-80B MZ-2000 MZ-2200
　FD又はFDLコマンドでTTLを読み込めばSD-CARD対応版として使えます。

　なお、F800h～FE56hにはSDアクセスルーチンがあるので破壊しないようにしてください。

### FORTRAN MZ-80B
　FD又はFDLコマンドでFORTRANを読み込めばSD-CARD対応版として使えます。

　なお、F800h～FE56hにはSDアクセスルーチンがあるので破壊しないようにしてください。

### q-Pascalコンパイラ
#### MZ-80B版
月刊I/O 1984年9月号のダンプリストを入力後、TS-1000をMZTアドレス0080h(実アドレス0000h)、WICSインタプリタをMZTアドレス1580h(実アドレス1500h)、APP_TS-1000_TS-2000_SDフォルダ内のAPP_q-Pascal_SD.binをMZTアドレスE080h(実アドレスE000h)に配置し、ひとつにまとめます。

そのうえで以下の修正をします。
|MZT ADDRESS|実ADDRESS|修正前|修正後|備考|
| ------------ | ------------ | ------------ | ------------ | ---- |
|0170|00F0|-- -- --|C3 00 4B||
|03F5|0375|16 04 21|C3 06 E0||
|0418|0398|16 08 ED|C3 09 E0||
|0424|03A4|16 08 ED|C3 0C E0||
|043F|03BF|16 01 21|C3 00 E0||
|0474|03F4|16 02 ED|C3 03 E0||
|04F0|0470|EF|C9|(注1)|
|5289|5209|CD C7 63|00 00 00||
|528E|520E|2A D0 65|00 00 00||
|5291|5211|EB|00||
|5292|5212|EF 00|00 00||
|5294|5214|2A D0 65|00 00 00||
|5297|5217|11 0B 00|00 00 00||
|529A|521A|19|00||
|529B|521B|22 E0 65|00 00 00||
|529E|521E|ED 5B E0 65|00 00 00 00||
|52A2|5222|EF 2B|EF 10||
|52A4|5224|DA 45 4E|00 00 00||

##### (注1)この修正によりカセットテープを入れたままLOADコマンドを実行するとカセットテープの早送りが行われるのが回避できます。

#### MZ-2000、MZ-2200版
月刊I/O 1984年10月号の80B用q-PascalソースリストにMZ-2000用の修正を加えてWICSでコンパイルします。

出来上がったオブジェクトで9月号のダンプリストを修正たものがMZ-2000用q-Pascalコンパイラになります。

これにTS-2000をMZTアドレス0080h(実アドレス0000h)、WICSインタプリタをMZTアドレス1580h(実アドレス1500h)、APP_TS-1000_TS-2000_SDフォルダ内のAPP_q-Pascal_SD.binをMZTアドレスE080h(実アドレスE000h)に配置し、ひとつにまとめます。

そのうえで以下の修正をします。
|MZT ADDRESS|実ADDRESS|修正前|修正後|備考|
| ------------ | ------------ | ------------ | ------------ | ---- |
|0170|00F0|-- -- --|C3 00 4B||
|0414|0394|16 04 21|C3 06 E0||
|0437|03B7|16 08 ED|C3 09 E0||
|0443|03C3|16 08 ED|C3 0C E0||
|045E|03DE|16 01 21|C3 00 E0||
|0493|0413|16 02 ED|C3 03 E0||
|04F3|0473|3E|C9|(注1)|
|5289|5209|CD C7 63|00 00 00||
|528E|520E|2A D0 65|00 00 00||
|5291|5211|EB|00||
|5292|5212|EF 00|00 00||
|5294|5214|2A D0 65|00 00 00||
|5297|5217|11 0B 00|00 00 00||
|529A|521A|19|00||
|529B|521B|22 E0 65|00 00 00||
|529E|521E|ED 5B E0 65|00 00 00 00||
|52A2|5222|EF 2B|EF 10||
|52A4|5224|DA 45 4E|00 00 00||

##### (注1)この修正によりカセットテープを入れたままLOADコマンドを実行するとカセットテープの早送りが行われるのが回避できます。

#### MZ-80B、MZ-2000、MZ-2200版共通
修正を加えて出来上がったものを開始アドレス0000h、ファイルサイズE56Fh、実行開始アドレス0000hのMZTファイルとして保存します。

なお、C-DOS常駐領域にSDアクセスルーチンを置いているのでFDの利用はできません。FD関連コマンド(dirなど)を実行すると暴走しますので気を付けてください。

## 謝辞
　基板の作成に当たり以下のデータを使わせていただきました。ありがとうございました。

　Arduino Pro Mini

　　https://github.com/g200kg/kicad-lib-arduino

　AE-microSD-LLCNV

　　https://github.com/kuninet/PC-8001-SD-8kRAM

　kuran_kuran様、MZ-2500モードにおける問題点をご指摘いただきありがとうございました。

## 追記
2022.6.6

部品表中、ROMについて追記。

2022.6.7

DISK BASIC MZ-2Z002のSD対応を追加しました。

2022.6.20

q-Pascalコンパイラの対応を追加しました。

回路図にネットラベルを追加しました。

2022.8.4

Arduinoを基板に直付けしている場合、Arduinoプログラムを書き込むときの注意点を書き加えました。

2022.8.8

EXPANSION UNITを使わずに接続する別の方法を追加しました。

2022.9.11

MicroSD Card Adapter用の端子を付加し、基板をRev2.3に更新。

2022.9.25

「MZ-80Bの拡張I/Oポートを使わずに接続する場合」を追記しました。

2022.9.29

TS-1000、TS-2000、q-Pascalコンパイラにおいてカセットテープを入れたままLOADコマンドを実行するとカセットテープの早送りが行われるため、早送りが行われないようTS-1000、TS-2000、q-Pascalコンパイラの修正点を一つ追加しました。

2022.12.10

GAL22V10をTTLに置き換えたMZ-2000_SD(SD-CARD UNIT基板)Rev3.3を追加しました。

2022.12.20

拡張スロット装着専用としたMZ-2000_SD(SD-CARD UNIT基板)Rev4.3を追加しました。

2022.12.30

MZ-80B用ゲーム「COSMO ODYSSEY」に対応。読み込みスタートアドレスが12A0H以降であればFFFFHまで読み込み可能にしました。

2023.1.1

MZ-2000、MZ-80BともFDコマンドでの読み込み終了アドレスがF800H以降であっても読み込みスタートアドレスが12A0H以降であれば読み込み可能とした。

2023.3.8

MZ-2500のZ80PIOとI/Oアドレスがぶつかっており、MZ-2500モードではMZ-2000_SDを接続したままRS-232C、マウスを使おうとするとハングアップすることを追記。

2023.6.19

従来のBASICから抽出したMONITORを修正してROMに書き込む方式以外に「BASICから抽出したMONITORを修正したバイナリファイル」をSD-CARDから読み込むプログラムをROMに書き込む方式を追加した。(現在MZ-80Bで動作不可。)

MZ-2500で拡張ユニットが無く、変換アダプタを自作するときの例を追加。

2023.6.21

「BASICから抽出したMONITORを修正したバイナリファイル」をSD-CARDから読み込むプログラムをROMに書き込む方式をMZ-2000、MZ-80B及び初期型を含めたMZ-2500の2000モード、80Bモードに対応した。
