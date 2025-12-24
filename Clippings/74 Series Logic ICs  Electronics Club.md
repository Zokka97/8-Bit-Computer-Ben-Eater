---
title: "74 Series Logic ICs | Electronics Club"
source: "https://electronicsclub.info/74series.htm"
author:
published:
created: 2025-12-23
description: "Learn about 74 Series Logic ICs including the 74HC, 74HCT, 74LS families, open collector output, logic gates, counters, decoders and display drivers."
tags:
  - "clippings"
---
## 74 Series Logic ICs

[Families](https://electronicsclub.info/#families)  | [Open collector](https://electronicsclub.info/#opencollector)  | [Characteristics](https://electronicsclub.info/#characteristics)  | [Gates](https://electronicsclub.info/#gates)  | [Counters](https://electronicsclub.info/#counters)  | [Decoders](https://electronicsclub.info/#decoders)  | [Display drivers](https://electronicsclub.info/#drivers)

Also see: [4000 Series](https://electronicsclub.info/cmos.htm)  | [ICs](https://electronicsclub.info/ics.htm)  | [Logic Gates](https://electronicsclub.info/gates.htm)  | [Counting Circuits](https://electronicsclub.info/counting.htm)

---

There are several [families](https://electronicsclub.info/#families) of logic ICs numbered from 74xx00 onwards with letters (xx) in the middle of the number to indicate the type of circuitry, eg 74LS00 and 74HC00. The original family (now obsolete) had no letters, eg 7400.

[![74 series IC](https://electronicsclub.info/images/7400horizontal.gif)](https://www.rapidonline.com/Catalogue/Search?Tier=74XX%20Series)  
Rapid Electronics: [74 series ICs](https://www.rapidonline.com/Catalogue/Search?Tier=74XX%20Series)

This page covers a selection of the many ICs in the 74 series, concentrating on the most useful [gates](https://electronicsclub.info/#gates), [counters](https://electronicsclub.info/#counters),[decoders](https://electronicsclub.info/#decoders) and [display drivers](https://electronicsclub.info/#drivers). For each IC there is a diagram showing the pin arrangement and brief notes explain the function of the pins where necessary. For simplicity the family letters after the 74 are omitted in the diagrams below because the pin connections apply to all ICs with the same number. For example 7400 NAND gates are available as 74HC00, 74HCT00 and 74LS00.

If you are using another reference please be aware that there is some variation in the terms used to describe pin functions, for example **reset** is also called **clear**. Some inputs are 'active low' which means they perform their function when low. If you see a line drawn above a label it means it is active low, for example: (say 'reset-bar').

---

## 74 series families

The **74LS** (Low-power Schottky) family (like the original) uses TTL (Transistor-Transistor Logic) circuitry which is fast but requires more power than later families. The 74 series is often still called the 'TTL series' even though the latest ICs do not use TTL!

The **74HC** family has High-speed CMOS circuitry, combining the speed of TTL with the very low power consumption of the [4000 series](https://electronicsclub.info/cmos.htm). They are CMOS ICs with the same pin arrangements as the older 74LS family. Note that 74HC inputs cannot be reliably driven by 74LS outputs because the voltage ranges used for logic 0 are not quite compatible, use 74HCT instead.

The **74HCT** family is a special version of 74HC with 74LS TTL-compatible inputs so 74HCT can be safely mixed with 74LS in the same system. In fact 74HCT can be used as low-power direct replacements for the older 74LS ICs in most circuits. The minor disadvantage of 74HCT is a lower immunity to noise, but this is unlikely to be a problem in most situations.

**For most new projects the 74HC family is the best choice.**The 74LS and 74HCT families require a 5V supply so they are not convenient for battery operation.

---

## Open Collector Outputs

Some 74 series ICs have open collector outputs, this means they can [sink](https://electronicsclub.info/ics.htm#sinksource) current but they cannot [source](https://electronicsclub.info/ics.htm#sinksource) current. They behave like an NPN [transistor switch](https://electronicsclub.info/transistorcircuits.htm#switching).

The diagram shows how an open collector output can be connected to sink current from a supply which has a higher voltage than the logic IC supply. The maximum load supply is 15V for most open collector ICs.

Open collector outputs can be safely connected together to switch on a load when any one of them is low; unlike normal outputs which must be combined [using diodes](https://electronicsclub.info/ics.htm#combining).

![open collector output](https://electronicsclub.info/images/opencoll.gif)

---

## 74HC and 74HCT family characteristics

The CMOS circuitry used in the **74HC** and **74HCT** series ICs means that they are [static sensitive](https://electronicsclub.info/ics.htm#static). Touching a pin while charged with static electricity (from your clothes for example) may damage the IC. In fact most ICs in regular use are quite tolerant and earthing your hands by touching a metal water pipe or window frame before handling them will be adequate. ICs should be left in their protective packaging until you are ready to use them.

- **74HC Supply:** 2 to 6V, small fluctuations are tolerated.
- **74HCT Supply:** 5V ±0.5V, a regulated supply is best.
- **Inputs** have very high impedance (resistance), this is good because it means they will not affect the part of the circuit where they are connected. However, it also means that unconnected inputs can easily pick up electrical noise and rapidly change between high and low states in an unpredictable way. This is likely to make the IC behave erratically and it will significantly increase the supply current. To prevent problems **all unused inputs MUST be connected to the supply (either +Vs or 0V)**, this applies even if that part of the IC is not being used in the circuit!  
	**Note that 74HC inputs cannot be reliably driven by 74LS outputs** because the voltage ranges used for logic 0 are not quite compatible. For reliability use **74HCT** if the system includes some 74LS ICs.
- **Outputs** can [sink and source](https://electronicsclub.info/ics.htm#sinksource) about 4mA if you wish to maintain the correct output voltage to drive logic inputs, but if there is no need to drive any inputs the maximum current is about 20mA. To switch larger currents you can [connect a transistor](https://electronicsclub.info/transistorcircuits.htm#ic).
- **Fan-out:** one output can drive many inputs (50+), except 74LS inputs because these require a higher current and only 10 can be driven.
- **Gate propagation time**: about 10ns for a signal to travel through a gate.
- **Frequency**: up to 25MHz.
- **Power consumption** (of the IC itself) is very low, a few µW. It is much greater at high frequencies, a few mW at 1MHz for example.

## 74LS family TTL characteristics

- **Supply:** 5V ±0.25V, it must be very smooth, a regulated supply is best\*. In addition to the normal supply smoothing, a 0.1µF capacitor should be connected across the supply near the IC to remove the 'spikes' generated as it switches state, one capacitor is needed for every 4 ICs.  
	\* *In my experience 74LS ICs usually work successfully with a 4.5V battery supply in simple and undemanding low frequency circuits but I certainly don't recommend this for any circuit with a serious purpose as it's outside the rated voltage range.*
- **Inputs** 'float' high to logic 1 if unconnected, but do not rely on this in a permanent (soldered) circuit because the inputs may pick up electrical noise. 1mA must be drawn out to hold inputs at logic 0. In a permanent circuit it is wise to connect any unused inputs to +Vs to ensure good immunity to noise.
- **Outputs** can [sink](https://electronicsclub.info/ics.htm#sinksource) up to 16mA (enough to light an LED), but they can [source](https://electronicsclub.info/ics.htm#sinksource) only about 2mA. To switch larger currents you can [connect a transistor](https://electronicsclub.info/transistorcircuits.htm#ic).
- **Fan-out**: one output can drive up to 10 74LS inputs, but many more 74HCT inputs.
- **Gate propagation time**: about 10ns for a signal to travel through a gate.
- **Frequency**: up to about 35MHz (under the right conditions).
- **Power consumption** (of the IC itself) is a few mW.

#### For most new projects the 74HC family is the best choice.

The 74LS and 74HCT families require a 5V supply so they are not convenient for battery operation. If you are used to using the 74LS series remember that 74HC and 74HCT inputs do not float high when unconnected so unused inputs must be connected to +Vs or 0V for reliable operation.

---

### Mixing Logic Families

It is best to build a circuit using just one logic family, but if necessary the different families may be mixed providing the power supply is suitable for all of them. For example mixing [4000](https://electronicsclub.info/cmos.htm) and 74HC requires the power supply to be in the range 3 to 6V. A circuit which includes 74LS or 74HCT ICs must have a 5V supply.

A 74LS output cannot reliably drive a [4000](https://electronicsclub.info/cmos.htm) or 74HC input unless a 'pull-up' resistor of 2.2kΩ is connected between the +5V supply and the input to correct the slightly different logic voltage ranges used.

Note that a [4000](https://electronicsclub.info/cmos.htm) series output can drive only one 74LS input.

For tables showing characteristics of the logic families see: [Logic ICs](https://electronicsclub.info/ics.htm#logic)

![using a pull-up resistor](https://electronicsclub.info/images/pullup.gif)  
Driving 4000 or 74HC inputs from a  
74LS output using a pull-up resistor.

---

## Quad 2-input gates

- 7400 quad 2-input NAND
- 7403 quad 2-input NAND with open collector outputs
- 7408 quad 2-input AND
- 7409 quad 2-input AND with open collector outputs
- 7432 quad 2-input OR
- 7486 quad 2-input EX-OR
- 74132 quad 2-input NAND with Schmitt trigger inputs

The 74132 has [Schmitt trigger](https://electronicsclub.info/555buffer.htm) inputs to provide good noise immunity. They are ideal for slowly changing or noisy signals.

![quad 2-input gates](https://electronicsclub.info/images/7400etc.gif)

---

## 7402 quad 2-input NOR

The 7402 IC is shown separately because it has an unusual gate layout.

![7402 quad 2-input NOR gates](https://electronicsclub.info/images/7402.gif)

---

## Triple 3-input gates

- 7410 triple 3-input NAND
- 7411 triple 3-input AND
- 7412 triple 3-input NAND with open collector outputs
- 7427 triple 3-input NOR

Notice how gate 1 is spread across the two sides of the package.

![triple 3-input gates](https://electronicsclub.info/images/7410etc.gif)

---

## Dual 4-input gates

- 7420 dual 4-input NAND
- 7421 dual 4-input AND

NC = No Connection (unused pin).

![dual 4-input gates](https://electronicsclub.info/images/7420-21.gif)

---

## 7430 8-input NAND gate

NC = No Connection (unused pin).

![7430 8-input NAND gate](https://electronicsclub.info/images/7430.gif)

---

## Hex NOT gates

- 7404 hex NOT
- 7405 hex NOT with open collector outputs
- 7414 hex NOT with Schmitt trigger inputs

The 7414 has [Schmitt trigger](https://electronicsclub.info/555buffer.htm) inputs to provide good noise immunity. They are ideal for slowly changing or noisy signals.

![hex NOT gates](https://electronicsclub.info/images/7404etc.gif)

---

## 7490 decade (0-9) ripple counter7493 4-bit (0-15) ripple counter

These are [ripple](https://electronicsclub.info/counting.htm#ripple) counters so beware that glitches may occur in any logic gate systems connected to their outputs due to the slight delay before the later counter outputs respond to a clock pulse.

The count advances as the **clock** input becomes low (on the falling-edge), this is indicated by the bar over the clock label. This is the usual clock behaviour of ripple counters and it means a counter output can directly drive the clock input of the next counter in a chain.

**The counter is in two sections:** clockA-QA and clockB-QB-QC-QD. For normal use connect QA to clockB to link the two sections, and connect the external clock signal to clockA.

For normal operation at least one **reset0** input should be low, making both high resets the counter to zero (0000, QA-QD low). Note that the 7490 has a pair of **reset9** inputs on pins 6 and 7, these reset the counter to nine (1001) so at least one of them must be low for counting to occur.

**Counting to less than the maximum** (9 or 15) can be achieved by connecting the appropriate output(s) to the two **reset0** inputs. If only one reset input is required the two inputs can be connected together. For example: to count 0 to 8 connect QA (1) and QD (8) to the reset inputs.

![7490 and 7493 ripple counters](https://electronicsclub.info/images/7490-93.gif)  
NC = No Connection (unused pin).  
\# on the 7490 pins 6 and 7 connect to  
an internal AND gate for resetting to 9.  
For normal use connect QA to clockB and  
connect external clock signal to clockA.

#### Connecting in a chain

Please see below for details of connecting ripple counters like the 7490 and 7493 in a [chain](https://electronicsclub.info/#chain).

---

## 74390 dual decade (0-9) ripple counter

The 74390 contains two separate decade (0 to 9) counters, one on each side of the IC. They are [ripple](https://electronicsclub.info/counting.htm#ripple) counters so beware that glitches may occur in any logic gate systems connected to their outputs due to the slight delay before the later counter outputs respond to a clock pulse.

The count advances as the **clock** input becomes low (on the falling-edge), this is indicated by the bar over the clock label. This is the usual clock behaviour of ripple counters and it means a counter output can directly drive the clock input of the next counter in a chain.

**Each counter is in two sections:** clockA-QA and clockB-QB-QC-QD. For normal use connect QA to clockB to link the two sections, and connect the external clock signal to clockA.

For normal operation the **reset** input should be low, making it high resets the counter to zero (0000, QA-QD low).

**Counting to less than 9** can be achieved by connecting the appropriate output(s) to the reset input, using an AND gate if necessary. For example: to count 0 to 7 connect QD (8) to reset, to count 0 to 8 connect QA (1) and QD (8) to reset using an AND gate.

![74390 dual decade counter](https://electronicsclub.info/images/74390.gif)  
For normal use connect QA to clockB and  
connect external clock signal to clockA.

#### Connecting in a chain

Please see below for details of connecting ripple counters like the 74390 in a [chain](https://electronicsclub.info/#chain).

---

## 74393 dual 4-bit (0-15) ripple counter

The 74393 contains two separate 4-bit (0 to 15) counters, one on each side of the IC. They are [ripple](https://electronicsclub.info/counting.htm#ripple) counters so beware that glitches may occur in logic systems connected to their outputs due to the slight delay before the later outputs respond to a clock pulse.

The count advances as the **clock** input becomes low (on the falling-edge), this is indicated by the bar over the clock label. This is the usual clock behaviour of ripple counters and it means means a counter output can directly drive the clock input of the next counter in a chain.

For normal operation the **reset** input should be low, making it high resets the counter to zero (0000, QA-QD low).

**Counting to less than 15** can be achieved by connecting the appropriate output(s) to the reset input, using an AND gate if necessary. For example to count 0 to 8 connect QA (1) and QD (8) to reset using an AND gate.

![74393 dual 4-bit counter](https://electronicsclub.info/images/74393.gif)

#### Connecting in a chain

Please see below for details of connecting ripple counters like the 74390 in a [chain](https://electronicsclub.info/#chain).

---

## Connecting ripple counters in a chain

The diagram below shows how to link ripple counters in a chain, notice how the highest output QD of each counter drives the **clock** input of the next counter.

![connecting ripple counters](https://electronicsclub.info/images/ripcount.gif)

---

## 74160-3 synchronous counters

- 74160 synchronous decade counter (standard reset)
- 74161 synchronous 4-bit counter (standard reset)
- 74162 synchronous decade counter (synchronous reset)
- 74163 synchronous 4-bit counter (synchronous reset)

These are **synchronous** counters so their outputs change precisely together on each clock pulse. This is helpful if you need to connect their outputs to logic gates because it avoids the glitches which occur with ripple counters.

The count advances as the **clock** input becomes high (on the rising-edge). The **decade** counters count from 0 to 9 (0000 to 1001 in binary). The **4-bit** counters count from 0 to 15 (0000 to 1111 in binary).

For normal operation (counting) the **reset**, **preset**, **count enable** and **carry in** inputs should all be high. When **count enable** is low the clock input is ignored and counting stops.

The counter may be **preset** by placing the desired binary number on the **inputs A-D**, making the **preset** input low, and applying a positive pulse to the **clock** input. The **inputs A-D** may be left unconnected if not required.

The **reset** input is active-low so it should be high (+Vs) for normal operation (counting). When low it resets the count to zero (0000, QA-QD low), this happens immediately with the 74160 and 74161 (**standard reset**), but with the 74162 and 74163 (**synchronous reset**) the reset occurs on the rising-edge of the clock input.

**Counting to less than the maximum** (15 or 9) can be achieved by connecting the appropriate output(s) through a NOT or NAND gate to the reset input. For the 74162 and 74163 (**synchronous reset**) you must use the output(s) representing **one less** than the reset count you require, e.g. to reset on 7 (counting 0 to 6) use QB (2) and QC (4).

![74160-3 counters](https://electronicsclub.info/images/74160-3.gif)  
\* reset and preset are both active-low  
preset is also known as parallel enable (PE)

#### Connecting in a chain

Please see below for details of connecting synchronous counters like the 74160-3 ICs in a [chain](https://electronicsclub.info/#synchain).

---

## Connecting synchronous counters in a chain

The diagram below shows how to link synchronous counters such as 74160-3, notice how all the **clock (CK)** inputs are linked. **Carry out (CO)** is used to feed the **carry in (CI)** of the next counter. **Carry in (CI)** of the first 74160-3 counter should be high.

![connecting synchronous counters](https://electronicsclub.info/images/syncount.gif)

---

## 74192 up/down decade (0-9) counter74193 up/down 4-bit (0-15) counter

These are **synchronous** counters so their outputs change precisely together on each clock pulse. This is helpful if you need to connect their outputs to logic gates because it avoids the glitches which occur with ripple counters.

These counters have separate clock inputs for counting up and down. The count increases as the **up clock** input becomes high (on the rising-edge). The count decreases as the **down clock** input becomes high (on the rising-edge). In both cases the other clock input should be high.

For normal operation (counting) the **preset** input should be high and the **reset** input low. When the **reset** input is high it resets the count to zero (0000, QA-QD low).

The counter may be **preset** by placing the desired binary number on the **inputs A-D** and briefly making the **preset** input low. Note that a clock pulse is not required to preset, unlike the 74160-3 counters. The **inputs A-D** may be left unconnected if not required.

![74192-3 up/down counters](https://electronicsclub.info/images/74192-3.gif)  
\* preset is active-low

#### Connecting in a chain

Please see below for details of connecting these up/down counters in a chain.

## Connecting up/down counters in a chain

The diagram below shows how to link 74192-3 up/down counters with separate up and down clock inputs, notice how **carry** and **borrow** are connected to the **up clock** and **down clock** inputs respectively of the next counter.

![connecting 74192-3 up/down counters](https://electronicsclub.info/images/updcount.gif)

---

#### 74HC4017 decade counter (1-of-10)74HC4020 14-bit ripple counter 74HC4040 12-bit ripple counter74HC4060 14-bit ripple counter with internal oscillator

These are the 74HC equivalents of 4000 series CMOS counters. Like all 74HC ICs they need a power supply of 2 to 6V. For pin connections and functions please see:

- [4017](https://electronicsclub.info/cmos.htm#4017)
- [4020](https://electronicsclub.info/cmos.htm#4020)
- [4040](https://electronicsclub.info/cmos.htm#4040)
- [4060](https://electronicsclub.info/cmos.htm#4060)

---

## 7442 BCD to decimal (1 of 10) decoder

The 7442 **outputs** are **active-low** which means they become low when selected but are high at other times. They can [sink](https://electronicsclub.info/ics.htm#sinksource) up to about 20mA.

The appropriate output becomes low in response to the BCD (binary coded decimal) input. For example an input of binary 0101 (=5) will make output Q5 low and all other outputs high.

The 7442 is a [BCD](https://electronicsclub.info/counting.htm#bcd) (binary coded decimal) decoder intended for input values 0 to 9 (0000 to 1001 in binary). With inputs from 10 to 15 (1010 to 1111 in binary) all outputs are high.

Note that the 7442 can be used as a **1-of-8 decoder** if input D is held low.

Also see: [74HC4017](https://electronicsclub.info/#74HC4017) and [4017](https://electronicsclub.info/cmos.htm#4017) both are a decade counter and 1-of-10 decoder in a single IC.

![7442 BCD to decimal (1 of 10) decoder](https://electronicsclub.info/images/7442.gif)

---

## 7447 BCD to 7-segment display driver

The appropriate **outputs a-g** become low to display the [BCD](https://electronicsclub.info/counting.htm#bcd) (binary coded decimal) number supplied on **inputs A-D**. The 7447 has [open collector](https://electronicsclub.info/#opencollector) outputs a-g which can [sink](https://electronicsclub.info/ics.htm#sinksource) up to 40mA. The 7-segment display segments must be connected between +Vs and the outputs with a resistor in series (330Ω with a 5V supply). A **common anode** display is required.

**Display test** and **blank input** are active-low so they should be high for normal operation. When **display test** is low all the display segments should light (showing number 8).

If the **blank input** is low the display will be blank when the count input is zero (0000). This can be used to blank leading zeros when there are several display digits driven by a chain of counters. To achieve this **blank output** should be connected to **blank input** of the next display down the chain (the next most significant digit).

The 7447 is intended for BCD (binary coded decimal) which is input values 0 to 9 (0000 to 1001 in binary). Inputs from 10 to 15 (1010 to 1111 in binary) will light odd display segments but will do no harm.

![7447 BCD to 7-segment display ddriver](https://electronicsclub.info/images/7447.gif)

---

#### 74HC4511 BCD to 7-segment display driver

This is the 74HC equivalent of the CMOS 4511 display driver. Like all 74HC ICs it needs a power supply of 2 to 6V. For pin connections and functions please see [4511](https://electronicsclub.info/cmos.htm#4511).

---

[![TTL Cookbook](https://electronicsclub.info/photos/books/ttl.jpg)](https://amzn.to/3T8Uopq)

## Recommended reference book from Amazon

[

#### TTL Cookbook

](https://amzn.to/3T8Uopq)

A valuable reference book which covers the individual [74 series](https://electronicsclub.info/74series.htm) TTL ICs and how to use them together in circuits.

As an Amazon Associate, I earn from qualifying purchases. Any book you purchase through the Amazon link helps to keep this website available for everyone to use free of charge.

---

Next page: [Other Components](https://electronicsclub.info/other.htm)