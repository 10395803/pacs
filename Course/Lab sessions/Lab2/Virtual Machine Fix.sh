#!/bin/bash

if [ "x$(whoami)" != "xroot" ]
then
 echo "you must run this script as root"
fi

dirname=$(dirname $0)
if [ "x${dirname}" == x. ]
then
 dirname=$(pwd)
fi
pushd $dirname

base=$(basename $0)

echo "this script is $dirname/$base"

#destination=/u/geo2/sw
destination=/tmp

if [ ! -d $destination ]
then 
 echo "modules directory ${destination} not found"
else

 cd $destination
 yum install -y sharutils
 uudecode  $dirname/$base |  tar xvjf -

fi

exit 0


##----------------------------------------------------

begin 644 -
M0EIH.3%!629367Q)E,T``9Y_G,P0`$!0?__@/>_4(/_O_^``!!```("`"%`$
M'GO,D>L@``<T9,3`!,1@1I@08C!,F`1@Q5&F33U-``````````"344B>B:)H
M-&@T,$!H,@T&C-`C"2E#0``:-````#0```%*D$331D$]4V(IM,D_4C3:0&FU
M&GIJ>IZ1Z>J?!?>M>M8\K&BRR8F-23MY<MN._687.6>N>SNVXTL:9K;'!8HR
M1UDN5BL888,T^%T$V)$D3\30F"=.+JIF^L,'I&39U."\#!YD,<QR1L2?T_<P
MES)JZF!@:BOZN[N[N[N[N[N_B`;/@5%%%&(HHHQ%'=@`<H/>'R4Q3SWC`[BR
M=U=`-%'V+586\O)>J?/_/Z^6/J\9/&GH#"L!Z_8PKHA#IDVR!OT`"&7CRU7S
M:%5416ZJJJJI:*JJKU!@D1)$23`S9%03="2?-1B9V;G9HS69E)G81[&;9A]R
MC2>"CN75]W.+LDP%X/9?C]5'2Q,>FL73?AN_"3E)L_E:.9;<N&&3I:M,]WM4
M:K?C:"@4^3:"3"`6A%#D\-)$`!XE%X%P,T.L=;QS8MNS):XS;,9;UKEIDS7%
M;T7YWQOB'YW5Z]M7'I.>:0TF)]B3H`,^;.KC-)N%X*ZQ<T2\%;GD)PF@YIL>
MDU3N`8]UT+FN[6[NTSD@<\ST95';?)\K],L8Q[@XKVEC_QR4?92ZU'Y5&V#^
MEYZ7@M)V-S1L9!GJE\*NLLV4GPGY`_T#9;JC\4G-6R:N"/`:TM`TD\Q=#MF^
MXSIYUQOZN+)UKWH_W,#2HWAA3I4:!AV,0Q8#&+-QMRF>X=K0^]TLJ\P.3%*\
MRC;M9S5'.'94;YK.$Z1]<Q4]W![B]2Z*X5'G=!R4PHWM(,JU1T.9]%1S+2J_
MY2YHT7\%[ENG[ZC;:KG4^$Z+N1]LQ-H:VQFUBQ4>%?2V*=K"CE2WH]JW2GQ7
M![:CT+U%J7-&>?!CTOM#N=(>$X,X[P\TW4[P\5^BS/FPX<?74?3)E.%1WHQ.
MQTJ<9FXKRJ.IHH^=1RHXV')>=+==;.HR4]+,->:;]?0S4=4.9^U=3MC]5OR4
6PER;%'EV>.=1WT?_%W)%.%"0?$F4S0``
`
end
