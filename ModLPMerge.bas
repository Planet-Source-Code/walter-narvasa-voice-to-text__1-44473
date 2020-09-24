Attribute VB_Name = "ModLPMerge"
Option Explicit
Option Base 0

'#If Not _LPMERGE_H Then
'#Const _LPMERGE_H  = True

'#If __cplusplus Then
#If False Then
'The following is an externally defined global variable
'extern "C" {  #endif

Public Const MAX_LMODEL = 32

'Public Type LMInfo     void InitPMerge(void)       BackOffLM  MergeModels(MemHeap  heap
    fn As String
    lm As BackOffLM
    weight As Float
End Type


#If False Then
'I couldn't handle the following:
'}  #endif
#End If


#End If


