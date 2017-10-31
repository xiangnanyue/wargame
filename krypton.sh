# 1
# Welcome to Krypton! The first level is easy. 
# The following string encodes the password using Base64:
# S1JZUFRPTklTR1JFQVQ=
# Use this password to log in to krypton.labs.overthewire.org with username krypton1 using SSH on port 2222. 
# You can find the files for other levels in /krypton/
ssh -p 2222 krypton1@krypton.labs.overthewire.org

# 2 
# use this https://www.nayuki.io/page/automatic-caesar-cipher-breaker-javascript
# use entropy to guess out the shift number !

# 3 mais it doesn't work because the shift is not always the same
dual="ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ"
for i in {1..26}; do 
    rotat=$i; 
    cat found1 | tr "${dual:0:26}" "${dual:${rotat}:26+$rotat}"; 
    echo $rotat "rotate";
done;
# use frequency count
# and the ones sorted : 
# [('P', 2), ('H', 4), ('R', 4), ('O', 12), ('I', 19), ('F', 28), ('A', 55), ('L', 60), ('E', 64), ('K', 67), ('X', 71), ('T', 75), ('Y', 84), ('M', 86), ('W', 129), ('V', 130), ('Z', 132), ('D', 210), ('C', 227), ('G', 227),('N', 240), ('B', 246), ('U', 257), ('J', 301), ('Q', 340), ('S', 456)]
# 
# SQJU BNCGD ZWVYMTXKLEAFIOHRP --> EAR IO T NSLCUDPMHGBFYWKVXZJQ
# most used 3 words : ('DSN', 22), ('SQN', 23), ('QGW', 27), ('JDS', 61)]
# guess JDS -> the
# SQJDGWC -> eathndt, QGW --> and, C-> o i,  SQN -> ea_, DSN --> he_
# compare with the letter frequency table of english https://en.wikipedia.org/wiki/Letter_frequency
# SN -> e_ SU -> e_ DS -> he NS -> 
# ('SQ', 48), ('SW', 52), ('DQ', 52), ('CG', 53), ('QN', 54), ('NS', 54), ('SU', 63), ('SN', 68), ('DS', 83), ('JD', 96)]
CGZNL YtBEN aYhLa ZaeUa NZCYh eNaVU BFGBK GaUaZ aeUaN UZCYh eN the UhCXt ZCYhe NZaeU aNUZB WeBNZ aeUaN UhCXt CUBGe BXthe UCTYV eUtaG WTBUt KCWeV LFGBK GeGZN LYtCB GteZh GCHMe UCtCU atLYe BXUMA UtCtM tCBGZ CYheN CGKhC ZheaZ hVett eNCGt heYVa CGteO tCUNe YVaZe WALaV etteN UBTeX COeWG MTAeN BXYBU CtCBG UWBKG theaV YhaAe tXBNe OaTYV eKCthaUhCX tBXaK BMVWA eNeYV aZeWA LWAKB MVWAe ZBTee aGWUB BGthe TethB WCUGa TeWaX teNRM VCMUZ aeUaN KhBMU eWCtt BZBTT MGCZa teKCt hhCUE eGeNa VUthe eGZNL YtCBG UteYY eNXBN TeWAL aZaeU aNZCY heNCU BXteG CGZBN YBNat eWaUY aNtBX TBNeZ BTYVe OUZhe TeUUM ZhaUt heICE eGNeZ CYheN aGWUt CVVha UTBWe NGaYY VCZat CBGCG theNB tULUt eTaUK CthaV VUCGEVeaVY haAet UMAUt CtMtC BGZCY heNUt heZae UaNZC YheNC UeaUC VLANB FeGaG WCGYN aZtCZ eBXXe NUeUU eGtCa VVLGB ZBTTM GCZat CBGUe ZMNCt LUhaF eUYea NeYNB WMZeW TBUtB XhCUF GBKGK BNFAe tKeeG aGWhC UeaNV LYVaL UKeNe TaCGV LZBTe WCeUa GWhCU tBNCe UEeGN eUheN aCUeW tBthe YeaFB XUBYh CUtCZ atCBG aGWaN tCUtN LALth eeGWB XtheU COtee GthZe GtMNLGeOth eKNBt eTaCG VLtNa EeWCe UMGtC VaABM tCGZV MWCGE haTVe tFCGE VeaNa GWTaZ AethZ BGUCW eNeWU BTeBX theXC GeUte OaTYV eUCGt heeGE VCUhV aGEMa EeCGh CUVaU tYhaU eheKN BtetN aECZB TeWCe UaVUB FGBKG aUNBT aGZeU aGWZB VVaAB NateW KCthB theNY VaLKN CEhtU TaGLB XhCUY VaLUK eNeYM AVCUh eWCGe WCtCB GUBXI aNLCG EHMaV CtLaG WaZZM NaZLW MNCGEhCUVC XetCT eaGWC GtKBB XhCUX BNTeN theat NCZaV ZBVVe aEMeU YMAVC UheWt heXCN UtXBV CBaZB VVeZt eWeWC tCBGB XhCUW NaTat CZKBN FUtha tCGZV MWeWa VVAMt tKBBX theYV aLUGB KNeZB EGCUe WaUUh aFeUY eaNeU
KeVVd Bne the VeIe VXBMN YaUUK BNdCU ANMte