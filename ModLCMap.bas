Attribute VB_Name = "ModLCMap"
Option Explicit

Option Base 0

'#If Not _LCMAP_H Then
'#Const _LCMAP_H  = True

'#If __cplusplus Then
#If False Then
'The following is an externally defined global variable
'extern "C" {  #endif

Public Const CLMHASHSIZE = 503

Public Const DEF_UNKNOWNNAME = "!!UNK"

Public Const DEF_UNKNOWNID = 1

'Public Type ClassMap     void InitCMap(void)       void CreateClassMap(char  fn
    id As LabId
'    ndx As               int
    size As Long
    inClass As Boolean
'    next As      struct clEntry
'    mem As typedef struct        MemHeap
    hdrless As Boolean
    htkEsc As Boolean
    entries As Long
    name As Char
    lang As Char
'    maxClndx As                  int
    wmap As WordMap
'    htab CLMHASHSIZE() As                ClassEntry
    nfree As Long
    flist As ClassEntry
'    Arg As
End Type


#If False Then
'I couldn't handle the following:
'}  #endif
#End If


#End If


