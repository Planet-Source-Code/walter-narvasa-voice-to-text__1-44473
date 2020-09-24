Attribute VB_Name = "ModLPCalc"

Option Explicit
Option Base 0

'#If Not _LPCALC_H Then
'#Const _LPCALC_H  = True

'#If __cplusplus Then
#If False Then
'The following is an externally defined global variable
'extern "C" {  #endif



#If False Then
' Cannot handle the following
'#include "LModel.h"
#End If

Public Const DEF_KRANGE = 7

Public Const DEF_CUTOFF = 1

Public Const DEF_UNIFLOOR = 1

Public Const DEF_SAVEFMT = LMF_BINARY

Public Const DEF_LMPTYPE = LMP_FLOAT

Public Const DEF_DCTYPE = DC_KATZ

'Public Type BuildInfo     void InitPCalc(void)       void InitBuildInfo(BuildInfo  bi)       Boolean FilterNGram(NGInputSet  inSet
    nSize As Long
    ftab As FoFTab
    wmap As WordMap
    saveFmt As LMFileFmt
    ptype As LMProbType
    dctype As DiscountType
    uniFloor As Float
    kRange As Long
'    cutOff LM_NSIZE+1() As Long
'    wdThresh LM_NSIZE+1() As Long
    inSet As NGInputSet
End Type


#If False Then
'I couldn't handle the following:
'}  #endif
#End If


#End If


