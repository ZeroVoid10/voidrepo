# 电力电子课程第二小组无线充电项目资料整理

[toc]

整理：林嵩翔

## Part1 整理总结

### 项目目标

初步资料整理后，需要明确/确认项目目标。
建议项目目标：
- 输入电压：220V 50Hz
- 输出电压：5V、9V、12（单选或多选）
- 输出电流：0.5A~2A（可适当减小设定最大电流）
- 输出功率：2.5W～18W（如果可以那么大功率的话）
- 效率：尽量高吧，10%,20%应该要有吧

### 初步方案


```
graph LR
rectifier1[AC-DC整流]
input[220VAC,50Hz]
controler[控制器]
inverter[DC-AC逆变器]
rectifer2[AC-DC整流]
coils1[主级线圈]
coils2[次级线圈]
regulated[稳压]
output[USB type C]

input -->  rectifier1
rectifier1 --> inverter
inverter --> coils1
controler-->inverter
coils1-->coils2
coils2-->rectifer2
rectifer2-->regulated
regulated-->output
```

### 主级AD-DC整流

-a single phase full wave diode bridge rectifier（ECE）加电容滤波，计算参考书上
![AC-DC_cal](https://upload.cc/i1/2019/04/16/iKyC6g.png)

#### 控制器方案

- arduino控制（参考ECE）
- STWBC IC控制（参考`ST_Wireless Battery Chargin.pdf`和`stwb.pdf`文档）
- TI bq500414Q  Wireless Power TX


### 1.5 资料主要来源

- University of Manitoba ECE4600
- TI公司
- ST公司
- IJEECS论文



## Part2 ECE4600方案
ECE4600 Design and Implementation of a Wireless Charger

详见`G03_FinalReport.pdf`

- 【大体电路设计框架】：The final design consisted of a primary and secondary circuit interfaced via 2
coupled planar surface coils. The primary side circuit consisted of a 3 stage AC-AC converter
responsible for supplying power to a primary source coil. Mains voltage, 120VAC at 60Hz,
was supplied to a rectifier circuit which was stepped down to 12VDC. Following the rectifier
circuit was an inverter which converted the 12VDC voltage to 12VAC at variable high
frequency, on the order of 105 Hz. An Arduino UNO controlled the inverter switches via
gate driver integrated circuits (IC). The microcontroller also managed the radio frequency
identification phone (RFID) recognition system. The high frequency voltage was applied to
the primary coil which induced a high-frequency magnetic field perpendicularly aligned to
the surface of the secondary coil. The entire primary circuit was enclosed in a 3D printed
case. The high frequency magnetic field induced an AC voltage on the secondary coil.
The secondary circuit rectified and regulated the induced voltage to 5VDC. The secondary
circuit was housed in a 3D printed case specific to a Samsung Galaxy S4 and was connected
via Micro-B cable. Figure 1.1 shows a block diagram of the complete project.
![Fig_1](https://upload.cc/i1/2019/04/16/DC2A7c.png)

## ST方案

详见`ST_Wireless Battery Charging.pdf`

## 其他资料

- [TI RX端IC方案_BQ51051B][TIRX_BQ51051B]
- [TI电动车无线充电][OBC]



[OBC]: http://www.ti.com/solution/hevev_onboard_obc_wireless_charger?keyMatch=Wireless%20Charger&tisearch=Search-EN-Everything
[TIRX_BQ51051B]: http://www.ti.com/product/BQ51051B/technicaldocuments?keyMatch=Wireless%20Charger&tisearch=Search-EN-TechDocs


