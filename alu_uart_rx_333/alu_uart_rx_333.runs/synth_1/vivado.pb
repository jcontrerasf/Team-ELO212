
r
Command: %s
53*	vivadotcl2A
-synth_design -top main -part xc7a100tcsg324-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px� 
�
%s*synth2�
wStarting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 362.020 ; gain = 79.621
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2
main2default:default2
 2default:default2~
hC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/main.sv2default:default2
232default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
divider2default:default2
 2default:default2�
kC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/divider.sv2default:default2
232default:default8@Z8-6157h px� 
b
%s
*synth2J
6	Parameter maxcount bound to: 104166 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter delaywidth bound to: 17 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
divider2default:default2
 2default:default2
12default:default2
12default:default2�
kC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/divider.sv2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
TDM2default:default2
 2default:default2}
gC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/TDM.sv2default:default2
402default:default8@Z8-6157h px� 
\
%s
*synth2D
0	Parameter digitos bound to: 8 - type: integer 
2default:defaulth p
x
� 
�
default block is never used226*oasys2}
gC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/TDM.sv2default:default2
572default:default8@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
TDM2default:default2
 2default:default2
22default:default2
12default:default2}
gC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/TDM.sv2default:default2
402default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
BCD2default:default2
 2default:default2}
gC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/BCD.sv2default:default2
232default:default8@Z8-6157h px� 
�
default block is never used226*oasys2}
gC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/BCD.sv2default:default2
292default:default8@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BCD2default:default2
 2default:default2
32default:default2
12default:default2}
gC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/BCD.sv2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
ALU2default:default2
 2default:default2}
gC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/ALU.sv2default:default2
232default:default8@Z8-6157h px� 
Z
%s
*synth2B
.	Parameter bits bound to: 16 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ALU2default:default2
 2default:default2
42default:default2
12default:default2}
gC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/ALU.sv2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2#
unsigned_to_bcd2default:default2
 2default:default2|
fC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/DD.sv2default:default2
222default:default8@Z8-6157h px� 
[
%s
*synth2C
/	Parameter S_IDLE bound to: 1 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter S_SHIFT bound to: 2 - type: integer 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter S_ADD3 bound to: 4 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter COUNTER_MAX bound to: 32 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
unsigned_to_bcd2default:default2
 2default:default2
52default:default2
12default:default2|
fC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/DD.sv2default:default2
222default:default8@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
202default:default2
bcd2default:default2
322default:default2#
unsigned_to_bcd2default:default2~
hC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/main.sv2default:default2
672default:default8@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2 
uart_rx_ctrl2default:default2
 2default:default2�
pC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_rx_ctrl.sv2default:default2
232default:default8@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2�
pC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_rx_ctrl.sv2default:default2
572default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
uart_rx_ctrl2default:default2
 2default:default2
62default:default2
12default:default2�
pC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_rx_ctrl.sv2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2%
banco_de_registro2default:default2
 2default:default2�
uC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/banco_de_registro.sv2default:default2
232default:default8@Z8-6157h px� 
Y
%s
*synth2A
-	Parameter bits bound to: 8 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
banco_de_registro2default:default2
 2default:default2
72default:default2
12default:default2�
uC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/banco_de_registro.sv2default:default2
232default:default8@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
22default:default2
salida2default:default2
82default:default2%
banco_de_registro2default:default2~
hC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/main.sv2default:default2
762default:default8@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2&
uart_baud_tick_gen2default:default2
 2default:default2�
vC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_baud_tick_gen.sv2default:default2
112default:default8@Z8-6157h px� 
�
&Input port '%s' has an internal driver4442*oasys2
value2default:default2�
vC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_baud_tick_gen.sv2default:default2
252default:default8@Z8-6104h px� 
�
&Input port '%s' has an internal driver4442*oasys2
value2default:default2�
vC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_baud_tick_gen.sv2default:default2
272default:default8@Z8-6104h px� 
�
&Input port '%s' has an internal driver4442*oasys2
value2default:default2�
vC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_baud_tick_gen.sv2default:default2
272default:default8@Z8-6104h px� 
�
&Input port '%s' has an internal driver4442*oasys2
value2default:default2�
vC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_baud_tick_gen.sv2default:default2
272default:default8@Z8-6104h px� 
�
&Input port '%s' has an internal driver4442*oasys2
value2default:default2�
vC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_baud_tick_gen.sv2default:default2
272default:default8@Z8-6104h px� 
�
&Input port '%s' has an internal driver4442*oasys2
value2default:default2�
vC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_baud_tick_gen.sv2default:default2
272default:default8@Z8-6104h px� 
�
&Input port '%s' has an internal driver4442*oasys2
value2default:default2�
vC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_baud_tick_gen.sv2default:default2
272default:default8@Z8-6104h px� 
�
&Input port '%s' has an internal driver4442*oasys2
value2default:default2�
vC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_baud_tick_gen.sv2default:default2
272default:default8@Z8-6104h px� 
�
&Input port '%s' has an internal driver4442*oasys2
value2default:default2�
vC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_baud_tick_gen.sv2default:default2
272default:default8@Z8-6104h px� 
�
&Input port '%s' has an internal driver4442*oasys2
value2default:default2�
vC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_baud_tick_gen.sv2default:default2
272default:default8@Z8-6104h px� 
�
&Input port '%s' has an internal driver4442*oasys2
value2default:default2�
vC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_baud_tick_gen.sv2default:default2
272default:default8@Z8-6104h px� 
�
&Input port '%s' has an internal driver4442*oasys2
value2default:default2�
vC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_baud_tick_gen.sv2default:default2
252default:default8@Z8-6104h px� 
�
&Input port '%s' has an internal driver4442*oasys2
value2default:default2�
vC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_baud_tick_gen.sv2default:default2
272default:default8@Z8-6104h px� 
�
&Input port '%s' has an internal driver4442*oasys2
value2default:default2�
vC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_baud_tick_gen.sv2default:default2
272default:default8@Z8-6104h px� 
�
&Input port '%s' has an internal driver4442*oasys2
value2default:default2�
vC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_baud_tick_gen.sv2default:default2
272default:default8@Z8-6104h px� 
�
&Input port '%s' has an internal driver4442*oasys2
value2default:default2�
vC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_baud_tick_gen.sv2default:default2
272default:default8@Z8-6104h px� 
�
&Input port '%s' has an internal driver4442*oasys2
value2default:default2�
vC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_baud_tick_gen.sv2default:default2
272default:default8@Z8-6104h px� 
�
&Input port '%s' has an internal driver4442*oasys2
value2default:default2�
vC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_baud_tick_gen.sv2default:default2
272default:default8@Z8-6104h px� 
�
&Input port '%s' has an internal driver4442*oasys2
value2default:default2�
vC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_baud_tick_gen.sv2default:default2
272default:default8@Z8-6104h px� 
j
%s
*synth2R
>	Parameter CLK_FREQUENCY bound to: 100000000 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter BAUD_RATE bound to: 115200 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter OVERSAMPLING bound to: 8 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter ACC_WIDTH bound to: 18 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter SHIFT_LIMITER bound to: 7 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter INCREMENT bound to: 2416 - type: integer 
2default:defaulth p
x
� 
�
"Detected attribute (* %s = "%s" *)3982*oasys2
keep2default:default2
true2default:default2�
vC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_baud_tick_gen.sv2default:default2
382default:default8@Z8-5534h px� 
�
&Input port '%s' has an internal driver4442*oasys2
value2default:default2�
vC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_baud_tick_gen.sv2default:default2
252default:default8@Z8-6104h px� 
�
&Input port '%s' has an internal driver4442*oasys2
value2default:default2�
vC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_baud_tick_gen.sv2default:default2
272default:default8@Z8-6104h px� 
�
&Input port '%s' has an internal driver4442*oasys2
value2default:default2�
vC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_baud_tick_gen.sv2default:default2
272default:default8@Z8-6104h px� 
�
&Input port '%s' has an internal driver4442*oasys2
value2default:default2�
vC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_baud_tick_gen.sv2default:default2
272default:default8@Z8-6104h px� 
�
&Input port '%s' has an internal driver4442*oasys2
value2default:default2�
vC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_baud_tick_gen.sv2default:default2
272default:default8@Z8-6104h px� 
�
&Input port '%s' has an internal driver4442*oasys2
value2default:default2�
vC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_baud_tick_gen.sv2default:default2
272default:default8@Z8-6104h px� 
�
&Input port '%s' has an internal driver4442*oasys2
value2default:default2�
vC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_baud_tick_gen.sv2default:default2
272default:default8@Z8-6104h px� 
�
&Input port '%s' has an internal driver4442*oasys2
value2default:default2�
vC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_baud_tick_gen.sv2default:default2
272default:default8@Z8-6104h px� 
�
&Input port '%s' has an internal driver4442*oasys2
value2default:default2�
vC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_baud_tick_gen.sv2default:default2
272default:default8@Z8-6104h px� 
�
&Input port '%s' has an internal driver4442*oasys2
value2default:default2�
vC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_baud_tick_gen.sv2default:default2
272default:default8@Z8-6104h px� 
�
&Input port '%s' has an internal driver4442*oasys2
value2default:default2�
vC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_baud_tick_gen.sv2default:default2
272default:default8@Z8-6104h px� 
�
&Input port '%s' has an internal driver4442*oasys2
value2default:default2�
vC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_baud_tick_gen.sv2default:default2
252default:default8@Z8-6104h px� 
�
&Input port '%s' has an internal driver4442*oasys2
value2default:default2�
vC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_baud_tick_gen.sv2default:default2
272default:default8@Z8-6104h px� 
�
&Input port '%s' has an internal driver4442*oasys2
value2default:default2�
vC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_baud_tick_gen.sv2default:default2
272default:default8@Z8-6104h px� 
�
&Input port '%s' has an internal driver4442*oasys2
value2default:default2�
vC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_baud_tick_gen.sv2default:default2
272default:default8@Z8-6104h px� 
�
&Input port '%s' has an internal driver4442*oasys2
value2default:default2�
vC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_baud_tick_gen.sv2default:default2
272default:default8@Z8-6104h px� 
�
&Input port '%s' has an internal driver4442*oasys2
value2default:default2�
vC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_baud_tick_gen.sv2default:default2
272default:default8@Z8-6104h px� 
�
&Input port '%s' has an internal driver4442*oasys2
value2default:default2�
vC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_baud_tick_gen.sv2default:default2
272default:default8@Z8-6104h px� 
�
&Input port '%s' has an internal driver4442*oasys2
value2default:default2�
vC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_baud_tick_gen.sv2default:default2
272default:default8@Z8-6104h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
uart_baud_tick_gen2default:default2
 2default:default2
82default:default2
12default:default2�
vC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_baud_tick_gen.sv2default:default2
112default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
uart_rx2default:default2
 2default:default2�
kC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_rx.sv2default:default2
102default:default8@Z8-6157h px� 
\
%s
*synth2D
0	Parameter RX_IDLE bound to: 0 - type: integer 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter RX_START bound to: 1 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter RX_RECV bound to: 2 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter RX_STOP bound to: 3 - type: integer 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter RX_READY bound to: 4 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2
	data_sync2default:default2
 2default:default2�
mC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/data_sync.sv2default:default2
112default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	data_sync2default:default2
 2default:default2
92default:default2
12default:default2�
mC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/data_sync.sv2default:default2
112default:default8@Z8-6155h px� 
�
-case statement is not full and has no default155*oasys2�
kC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_rx.sv2default:default2
782default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart_rx2default:default2
 2default:default2
102default:default2
12default:default2�
kC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/uart_rx.sv2default:default2
102default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
main2default:default2
 2default:default2
112default:default2
12default:default2~
hC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/main.sv2default:default2
232default:default8@Z8-6155h px� 
�
%s*synth2�
xFinished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 418.797 ; gain = 136.398
2default:defaulth px� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 418.797 ; gain = 136.398
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 418.797 ; gain = 136.398
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2�
kC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/constrs_1/new/constr.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2�
kC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/constrs_1/new/constr.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2
kC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/constrs_1/new/constr.xdc2default:default2*
.Xil/main_propImpl.xdc2default:defaultZ1-236h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
769.7422default:default2
0.0002default:defaultZ17-268h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
769.7422default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
769.7422default:default2
0.0002default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0052default:default2
769.7422default:default2
0.0002default:defaultZ17-268h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
~Finished Constraint Validation : Time (s): cpu = 00:00:16 ; elapsed = 00:00:18 . Memory (MB): peak = 769.742 ; gain = 487.344
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Loading part: xc7a100tcsg324-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:16 ; elapsed = 00:00:18 . Memory (MB): peak = 769.742 ; gain = 487.344
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:16 ; elapsed = 00:00:18 . Memory (MB): peak = 769.742 ; gain = 487.344
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
clkout2default:defaultZ8-5546h px� 
�
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the output of the operator4233*oasys2
adder2default:default2}
gC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/ALU.sv2default:default2
352default:default8@Z8-5818h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2#
unsigned_to_bcd2default:defaultZ8-802h px� 
x
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
bcd_next2default:defaultZ8-5546h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
counter_next2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
idle2default:default2
32default:default2
52default:defaultZ8-5544h px� 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

state_next2default:defaultZ8-5546h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2 
uart_rx_ctrl2default:defaultZ8-802h px� 
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
mostrar2default:defaultZ8-5546h px� 
x
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
save_reg2default:defaultZ8-5546h px� 
s
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
RGB2default:defaultZ8-5546h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
uart_rx2default:defaultZ8-802h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
rx_ready2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

state_next2default:default2
12default:default2
52default:defaultZ8-5544h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
.
%s
*synth2
*
2default:defaulth p
x
� 
�
%s
*synth2s
_                  S_IDLE |                              001 |                              001
2default:defaulth p
x
� 
�
%s
*synth2s
_                 S_SHIFT |                              010 |                              010
2default:defaulth p
x
� 
�
%s
*synth2s
_                  S_ADD3 |                              100 |                              100
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
6No Re-encoding of one hot register '%s' in module '%s'3445*oasys2
	state_reg2default:default2#
unsigned_to_bcd2default:defaultZ8-3898h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_            Wait_OP1_LSB |                     000000000001 |                            00000
2default:defaulth p
x
� 
�
%s
*synth2s
_           Store_OP1_LSB |                     000000000010 |                            00001
2default:defaulth p
x
� 
�
%s
*synth2s
_            Wait_OP1_MSB |                     000000000100 |                            00010
2default:defaulth p
x
� 
�
%s
*synth2s
_           Store_OP1_MSB |                     000000001000 |                            00011
2default:defaulth p
x
� 
�
%s
*synth2s
_            Wait_OP2_LSB |                     000000010000 |                            00100
2default:defaulth p
x
� 
�
%s
*synth2s
_           Store_OP2_LSB |                     000000100000 |                            00101
2default:defaulth p
x
� 
�
%s
*synth2s
_            Wait_OP2_MSB |                     000001000000 |                            00110
2default:defaulth p
x
� 
�
%s
*synth2s
_           Store_OP2_MSB |                     000010000000 |                            00111
2default:defaulth p
x
� 
�
%s
*synth2s
_                Wait_CMD |                     000100000000 |                            01000
2default:defaulth p
x
� 
�
%s
*synth2s
_               Store_CMD |                     001000000000 |                            01001
2default:defaulth p
x
� 
�
%s
*synth2s
_           Delay_1_cycle |                     010000000000 |                            01010
2default:defaulth p
x
� 
�
%s
*synth2s
_       Trigger_TX_result |                     100000000000 |                            01011
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2
one-hot2default:default2 
uart_rx_ctrl2default:defaultZ8-3354h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                 RX_IDLE |                              000 |                              000
2default:defaulth p
x
� 
�
%s
*synth2s
_                RX_START |                              001 |                              001
2default:defaulth p
x
� 
�
%s
*synth2s
_                 RX_RECV |                              010 |                              010
2default:defaulth p
x
� 
�
%s
*synth2s
_                 RX_STOP |                              011 |                              011
2default:defaulth p
x
� 
�
%s
*synth2s
_                RX_READY |                              100 |                              100
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2
uart_rx2default:defaultZ8-3354h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 769.742 ; gain = 487.344
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     19 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     17 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     16 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               19 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               17 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 7     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 4     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input     32 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     17 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input     16 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      6 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      3 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  12 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  12 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 7     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  12 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
� 
9
%s
*synth2!
Module main 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
� 
<
%s
*synth2$
Module divider 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     17 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               17 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     17 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
Module TDM 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 8     
2default:defaulth p
x
� 
8
%s
*synth2 
Module ALU 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     16 Bit       Adders := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input     16 Bit        Muxes := 2     
2default:defaulth p
x
� 
D
%s
*synth2,
Module unsigned_to_bcd 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 8     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input     32 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      6 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
� 
A
%s
*synth2)
Module uart_rx_ctrl 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  12 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  12 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  12 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
F
%s
*synth2.
Module banco_de_registro 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
G
%s
*synth2/
Module uart_baud_tick_gen 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     19 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               19 Bit    Registers := 1     
2default:defaulth p
x
� 
>
%s
*synth2&
Module data_sync 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
<
%s
*synth2$
Module uart_rx 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2+
u32_to_bcd_inst/bcd_reg2default:default2
322default:default2
202default:default2|
fC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.srcs/sources_1/new/DD.sv2default:default2
1302default:default8@Z8-3936h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2,
u32_to_bcd_inst/bcd_next2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2.
u32_to_bcd_inst/state_next2default:defaultZ8-5546h px� 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

uno/clkout2default:defaultZ8-5546h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2+
multiplex/anodos_reg[5]2default:default2
FD2default:default2+
multiplex/anodos_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2+
multiplex/anodos_reg[6]2default:default2
FD2default:default2+
multiplex/anodos_reg[7]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2-
\multiplex/anodos_reg[7] 2default:defaultZ8-3333h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:19 ; elapsed = 00:00:21 . Memory (MB): peak = 769.742 ; gain = 487.344
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:29 ; elapsed = 00:00:32 . Memory (MB): peak = 769.742 ; gain = 487.344
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Timing Optimization : Time (s): cpu = 00:00:31 ; elapsed = 00:00:33 . Memory (MB): peak = 796.602 ; gain = 514.203
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
{Finished Technology Mapping : Time (s): cpu = 00:00:31 ; elapsed = 00:00:33 . Memory (MB): peak = 796.602 ; gain = 514.203
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
uFinished IO Insertion : Time (s): cpu = 00:00:33 ; elapsed = 00:00:35 . Memory (MB): peak = 796.602 ; gain = 514.203
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:33 ; elapsed = 00:00:35 . Memory (MB): peak = 796.602 ; gain = 514.203
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:33 ; elapsed = 00:00:35 . Memory (MB): peak = 796.602 ; gain = 514.203
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:33 ; elapsed = 00:00:35 . Memory (MB): peak = 796.602 ; gain = 514.203
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:33 ; elapsed = 00:00:35 . Memory (MB): peak = 796.602 ; gain = 514.203
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:33 ; elapsed = 00:00:35 . Memory (MB): peak = 796.602 ; gain = 514.203
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|1     |BUFG   |     1|
2default:defaulth px� 
D
%s*synth2,
|2     |CARRY4 |    12|
2default:defaulth px� 
D
%s*synth2,
|3     |LUT1   |     9|
2default:defaulth px� 
D
%s*synth2,
|4     |LUT2   |    21|
2default:defaulth px� 
D
%s*synth2,
|5     |LUT3   |    32|
2default:defaulth px� 
D
%s*synth2,
|6     |LUT4   |    27|
2default:defaulth px� 
D
%s*synth2,
|7     |LUT5   |    40|
2default:defaulth px� 
D
%s*synth2,
|8     |LUT6   |    43|
2default:defaulth px� 
D
%s*synth2,
|9     |MUXF7  |     7|
2default:defaulth px� 
D
%s*synth2,
|10    |MUXF8  |     3|
2default:defaulth px� 
D
%s*synth2,
|11    |FDCE   |    45|
2default:defaulth px� 
D
%s*synth2,
|12    |FDPE   |     1|
2default:defaulth px� 
D
%s*synth2,
|13    |FDRE   |   117|
2default:defaulth px� 
D
%s*synth2,
|14    |FDSE   |     5|
2default:defaulth px� 
D
%s*synth2,
|15    |IBUF   |     3|
2default:defaulth px� 
D
%s*synth2,
|16    |OBUF   |    18|
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
� 
d
%s
*synth2L
8+------+------------------+--------------------+------+
2default:defaulth p
x
� 
d
%s
*synth2L
8|      |Instance          |Module              |Cells |
2default:defaulth p
x
� 
d
%s
*synth2L
8+------+------------------+--------------------+------+
2default:defaulth p
x
� 
d
%s
*synth2L
8|1     |top               |                    |   384|
2default:defaulth p
x
� 
d
%s
*synth2L
8|2     |  alu             |ALU                 |     4|
2default:defaulth p
x
� 
d
%s
*synth2L
8|3     |  bancoA1         |banco_de_registro   |     8|
2default:defaulth p
x
� 
d
%s
*synth2L
8|4     |  bancoA2         |banco_de_registro_0 |     8|
2default:defaulth p
x
� 
d
%s
*synth2L
8|5     |  bancoB1         |banco_de_registro_1 |    12|
2default:defaulth p
x
� 
d
%s
*synth2L
8|6     |  bancoB2         |banco_de_registro_2 |    11|
2default:defaulth p
x
� 
d
%s
*synth2L
8|7     |  bancoOP         |banco_de_registro_3 |    29|
2default:defaulth p
x
� 
d
%s
*synth2L
8|8     |  baud8_tick_blk  |uart_baud_tick_gen  |    28|
2default:defaulth p
x
� 
d
%s
*synth2L
8|9     |  ctrl            |uart_rx_ctrl        |    50|
2default:defaulth p
x
� 
d
%s
*synth2L
8|10    |  multiplex       |TDM                 |    20|
2default:defaulth p
x
� 
d
%s
*synth2L
8|11    |  toseven         |BCD                 |     7|
2default:defaulth p
x
� 
d
%s
*synth2L
8|12    |  u32_to_bcd_inst |unsigned_to_bcd     |    95|
2default:defaulth p
x
� 
d
%s
*synth2L
8|13    |  uart_rx_blk     |uart_rx             |    43|
2default:defaulth p
x
� 
d
%s
*synth2L
8|14    |    rx_sync_inst  |data_sync           |    13|
2default:defaulth p
x
� 
d
%s
*synth2L
8|15    |  uno             |divider             |    45|
2default:defaulth p
x
� 
d
%s
*synth2L
8+------+------------------+--------------------+------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:33 ; elapsed = 00:00:35 . Memory (MB): peak = 796.602 ; gain = 514.203
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:21 ; elapsed = 00:00:27 . Memory (MB): peak = 796.602 ; gain = 163.258
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Complete : Time (s): cpu = 00:00:33 ; elapsed = 00:00:35 . Memory (MB): peak = 796.602 ; gain = 514.203
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
222default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
796.6022default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
622default:default2
412default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:352default:default2
00:00:382default:default2
796.6022default:default2
514.2032default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
796.6022default:default2
0.0002default:defaultZ17-268h px� 
K
"No constraints selected for write.1103*constraintsZ18-5210h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2w
cC:/Users/julio/Desktop/Universidad/TeamELO212/alu_uart_rx_333/alu_uart_rx_333.runs/synth_1/main.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2r
^Executing : report_utilization -file main_utilization_synth.rpt -pb main_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Fri Jul 26 21:24:28 20192default:defaultZ17-206h px� 


End Record