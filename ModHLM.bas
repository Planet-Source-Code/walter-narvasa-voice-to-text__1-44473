Attribute VB_Name = "ModHLM"
Option Explicit
Option Base 0

#If False Then
'I couldn't handle the following:
    Char hlm_version = "!HVER!HLM:   3.2 [CUED 091202]"
#End If

#If False Then
'I couldn't handle the following:
'char *hlm_vc_id = "$Id: HLM.c,v 1.9 20021219 16:37:11 ge204 Exp $";
#End If

#If False Then
' Cannot handle the following
'#include "HShell.h"
#End If

#If False Then
' Cannot handle the following
'#include "HMem.h"
#End If

#If False Then
' Cannot handle the following
'#include "HMath.h"
#End If

#If False Then
' Cannot handle the following
'#include "HWave.h"
#End If

#If False Then
' Cannot handle the following
'#include "HLabel.h"
#End If

#If False Then
' Cannot handle the following
'#include "HLM.h"
#End If

Public Const T_TIO = 1

#If False Then
'I couldn't handle the following:
'static int trace=0;
#End If

Public Const LN10 = 2.30258509299405

#If False Then
'I couldn't handle the following:
'static Boolean rawMITFormat = FALSE;
#End If

#If False Then
'I couldn't handle the following:
'static ConfParam *cParm[MAXGLOBS];
#End If

#If False Then
'I couldn't handle the following:
'static int nParm = 0;
#End If


'Public Declare Sub InitLM Lib "libname" ( ByRef hlm_version As void { Boolean b int i Register, ByRef "HLM" As hlm_vc_id nParm = GetConfig, ByVal Arg2 As TRUE, ByVal Arg3 As cParm, ByRef cParm As MAXGLOBS if nParm>0 { if GetConfInt, ByVal Arg5 As nParm, ByVal Arg6 As "TRACE", ByRef cParm As &i trace = i if GetConfBool, ByVal Arg8 As nParm, ByVal Arg9 As "RAWMITFORMAT", ByRef source As &b rawMITFormat = b } } static Source )

'Public Declare Function GetInLine Lib "libname" ( ByRef i As char
'buf { int, ByRef buf() As c c = GetCh &source if c==EOF return NULL i = 0 while c!='\n' && i<MAXSTRLEN { buf i++  = c c = GetCh &source } buf i  = '\0' return buf } static void SyncStr char, ByRef buf As char  str { while strcmp, ByRef 8150 As str !=0 { if GetInLine buf ==NULL HError, ByRef %s" As "SyncStr: EOF searching for, ByRef &source() As str } } static int GetInt void { int x char buf 100  if !ReadInt, ByVal Arg6 As &x, ByVal Arg7 As 1, ByRef 8150 As FALSE HError, ByRef %s" As "GetInt: Int Expected at, ByRef source As SrcPosition, ByRef &source() As buf return x } static float GetFloat Boolean bin { float x char buf 100  if !ReadFloat, ByVal Arg12 As &x, ByVal Arg13 As 1, ByRef 8150 As bin HError, ByRef %s" As "GetFloat: Float Expected at, ByRef source As SrcPosition, ByRef i As buf return x } static char  ReadLMWord char  buf { int, ByRef c() As c if rawMITFormat { while isspace c=GetCh &source i=0 while !isspace c && c!=EOF && i<MA _
'TRLEN { buf i++  = c c=GetCh &source } buf i  = '\0' UnGetCh, ByRef &source As &source if i>0 return buf else return NULL } else { if ReadString, ByRef 165902236() As buf return buf else return NULL } } static int hvs  = {, ByVal Arg21 As 220889002, ByVal Arg22 As 32510287, ByVal Arg23 As 117809592, ByVal Arg24 As 165902236, ByVal Arg25 As 220889002, ByVal Arg26 As 32510287, ByRef } As 117809592 )  As static char

'Public Declare Function GetNEntry Lib "libname" ( ByRef nglm As NGramLM, ByRef ndx NSIZE() As lmId, ByRef 2() As Boolean create { NEntry  ne unsigned int hash int i hash=0 for i=0 i<NSIZE-1 i++ hash=hash+ ndx i  hvs i  hash= hash>>7 & nglm->hashsize-1 for ne=nglm->hashtab hash  ne!=NULL ne=ne->link { if ne->word 0 ==ndx 0  #if NSIZE > )  As NEntry

#If False Then
'I couldn't handle the following:
'&& ne->word[1]==ndx[1]  #endif
#End If

#If False Then
' Cannot handle the following
'#if NSIZE > 3
#End If

#If False Then
'I couldn't handle the following:
'&& ne->word[2]==ndx[2]  #endif
#End If

#If False Then
' Cannot handle the following
'#if NSIZE > 4
#End If


#If False Then
'I couldn't handle the following:
'&& ne->word[3]==ndx[3]  #endif
#End If


'Public Declare Function
'if Lib "libname" ( ByRef nglm->heap As ne==NULL && create
'{ ne= NEntry   New, ByRef v1() As sizeof NEntry nglm->counts 0 ++ for i=0 i<NSIZE-1 i++ ne->word i =ndx i  ne->user=0 ne->nse=0 ne->se=NULL ne->bowt=0.0 ne->link=nglm->hashtab hash  nglm->hashtab hash =ne } return ne } static int se_cmp   void, ByRef s1 As void  v2 { SEntry, ByRef v1 As s2 s1= SEntry  v1 s2= SEntry  v2 return int s1->word-s2->word } static int nep_cmp   void, ByRef n1 As void  v2 { NEntry, ByRef res As n2 int, ByRef file() As i res=0 n1=  NEntry   v1 n2=  NEntry   v2 for i=NSIZE-2 i>=0 i-- if n1->word i !=n2->word i  { res= n1->word i -n2->word i  break } return res } static int WriteNGrams FILE, ByRef nglm As NGramLM, ByVal n As Long, ByRef ne As float scale { NEntry, ByRef Arg10 As be, ByRef Arg11 As ce, ByRef c() As neTab SEntry  se LogFloat prob lmId ndx NSIZE+1  int, ByVal Arg13 As i, ByVal Arg14 As j, ByVal Arg15 As k, ByVal Arg16 As N, ByVal Arg17 As g=1, ByVal Arg18 As hash, ByVal Arg19 As neCnt, ByRe _
" As total if trace&T_TIO printf "\nn%1d,
'ByVal Arg21 As n, ByRef file As fflush stdout fprintf, ByVal Arg23 As "\n\\%d-grams:\n", ByRef &gstack() As n N=VectorSize nglm->unigrams neTab= NEntry    New, ByRef i=1() As sizeof NEntry   nglm->counts 0  for hash=neCnt=0 hash<nglm->hashsize hash++ for ne=nglm->hashtab hash  ne!=NULL ne=ne->link { for, ByRef neTab() As ce=ne i<n i++ if ne->word i-1 ==0 { ce=NULL break } if ce!=NULL for i=n i<NSIZE i++ if ne->word i-1 !=0 { ce=NULL break } if ce!=NULL && ce->nse>0 neTab neCnt++ =ce } qsort, ByVal Arg27 As neCnt, ByRef NEntry As sizeof, ByRef i=0() As nep_cmp total=0 for c=n c<=NSIZE c++ ndx c =0 for j=0 j<neCnt j++ { ne=neTab j  for c=1 c<n c++ ndx c =ne->word c-1  if ne!=NULL && ne->nse>0 { for, ByRef i++ As se=ne->se i<ne->nse, ByRef " As se++ { if trace&T_TIO { if g%25000 ==0 printf "., ByRef " As fflush stdout if g%800000 ==0 printf "\n, ByRef nglm() As fflush stdout g++ } ndx 0 =se->word if n<nglm->nsize be=GetNEntry, ByVal Arg34 As ndx, ByRef file() As FALSE _
'lse be=NULL if be==NULL || be->nse==0 be=NULL total++ if n==1 prob=nglm->unigrams se->word  else prob=se->prob if prob scale<-99.999 fprintf, ByVal Arg36 As "%+6.3f", ByRef file As -99.999 else fprintf, ByVal Arg38 As "%+6.4f", ByRef file As prob scale c='\t' for k=n-1 k>=0 k-- if rawMITFormat fprintf, ByVal Arg40 As "%c%s", ByVal Arg41 As c, ByRef Arg42() As nglm->wdlist ndx k  ->name, ByRef file As c=' ' else fprintf, ByVal Arg44 As "%c%s", ByVal Arg45 As c, ByRef nglm->wdlist ndx k  ->name() As ReWriteString, ByVal Arg47 As NULL, ByVal Arg48 As ESCAPE_CHAR, ByRef file As c=' ' if be!=NULL fprintf, ByVal Arg50 As "\t%+6.4f\n", ByRef file As be->bowt scale else fprintf, ByRef &gstack As "\n" } } } Dispose, ByRef "\n" As neTab if trace&T_TIO printf, ByRef \ As fflush stdout return total } #define PROGRESS g )  As ) break; }

#If False Then
'I couldn't handle the following:
'if (trace&T_TIO) { \     if ((g%25000)==0) \     printf(". "),fflush(stdout); \     if ((g%800000)==0) \     printf("\n   "),fflush(stdout); \     }      #define NGHSIZE1 8192
#End If


Public Const NGHSIZE2 = 32768

Public Const NGHSIZE3 = 131072

'Public Declare Function CreateBoNGram Lib "libname" ()
'( ByRef lm As LModel, ByVal vocSize As Long, ByRef i() As int counts NSIZE  { lmId ndx NSIZE  int, ByRef lm->heap As k NGramLM  nglm nglm = NGramLM   New, ByRef k=0() As sizeof NGramLM lm->data.ngram = nglm nglm->heap = lm->heap for i=0 i<=NSIZE i++ nglm->counts i =0 for i=1 i<=NSIZE i++ if counts i ==0 break else nglm->counts i =counts i  nglm->nsize=i-1 for, ByRef lm->heap() As i=1 i<nglm->nsize i++ k+=nglm->counts i  if k<25000 nglm->hashsize=NGHSIZE1 else if k<250000 nglm->hashsize=NGHSIZE2 else nglm->hashsize=NGHSIZE3 nglm->hashtab= NEntry    New, ByRef lm->heap() As sizeof NEntry   nglm->hashsize for i=0 i<nglm->hashsize i++ nglm->hashtab i =NULL nglm->vocSize = vocSize nglm->unigrams = CreateVector, ByRef lm->heap As nglm->vocSize nglm->wdlist = LabId   New, ByRef nglm() As nglm->vocSize sizeof LabId nglm->wdlist-- for i=1 i<=nglm->vocSize i++ nglm->wdlist i =NULL for i=0 i<NSIZE i++ ndx i =0 GetNEntry, ByVal Arg9 As ndx, ByRef 1 As TRUE return ngl _
'} #define BIN_ARPA_HAS_BOWT )  As NGramLM

Public Const BIN_ARPA_INT_LMID = 2

Public Declare Function ReadNGrams Lib "libname" ()
'( ByRef nglm As NGramLM, ByVal n As Long, ByVal count As Long, ByRef ne() As Boolean bin { float prob LabId wdid SEntry  cse char wd 255  lmId ndx NSIZE+1  NEntry, ByRef i As le=NULL int, ByVal Arg5 As g, ByVal Arg6 As idx, ByRef size As total unsigned char, ByRef nglm->heap As flags cse = SEntry   New, ByRef "() As count sizeof SEntry for i=1 i<=NSIZE i++ ndx i =0 if trace&T_TIO printf "\nn%1d, ByVal Arg10 As n, ByRef wd As fflush stdout total=0 for g=1 g<=count g++ { PROGRESS g if bin { size = GetCh &source flags = GetCh &source } prob = GetFloat bin  LN10 if n==1 { ReadLMWord wd wdid = GetLabId, ByRef 8150 As TRUE if wdid->aux != NULL HError, ByRef list" As "ReadNGrams: Duplicate word %s in 1-gram, ByRef &source() As wdid->name wdid->aux = Ptr g nglm->wdlist g  = wdid nglm->unigrams g  = prob ndx 0 =g } else { for i=0 i<n i++ { if bin { if flags & BIN_ARPA_INT_LMID { unsigned int ui if !ReadInt, ByVal Arg15 As &ui, ByVal Arg16 As 1, ByRef 9999 As bin HErr _
, ByRef &source As "ReadNGrams: failed reading int lm word id" idx = ui } else { unsigned short us if !ReadShort, ByVal Arg19 As &us, ByVal Arg20 As 1, ByRef 9999 As bin HError, ByRef wd As "ReadNGrams: failed reading short lm word id at" idx = us } } else { ReadLMWord wd wdid = GetLabId, ByRef 8150 As FALSE idx = wdid==NULL?0: int wdid->aux } if idx<1 || idx>nglm->vocSize HError, ByRef %dGram" As "ReadNGrams: Unseen word %s in, ByVal Arg25 As wd, ByRef nglm() As n ndx n-1-i =idx } } total++ ne = GetNEntry, ByVal Arg27 As ndx+1, ByRef 8150 As FALSE if ne == NULL HError, ByRef %dGram" As "ReadNGrams: Backoff weight not seen for %dth, ByVal Arg30 As g, ByRef 8150 As n if ne!=le { if le != NULL && ne->se != NULL HError, ByRef order" As "ReadNGrams: %dth %dGrams out of, ByVal Arg33 As g, ByRef le->se As n if le != NULL { if le->nse==0 { le->se=NULL } else { qsort, ByVal Arg35 As le->nse, ByRef SEntry As sizeof, ByRef nglm() As se_cmp } } ne->se = cse ne->nse = 0 le = ne } cse->prob = prob cse->word = ndx 0  ne _
nse++ cse++ if bin { if flags & BIN_ARPA_HAS_BOWT { ne = GetNEntry, ByVal Arg38 As ndx, ByRef nglm As TRUE ne->bowt = GetFloat TRUE  LN10 } } else { SkipWhiteSpace &source if !source.wasNewline { ne=GetNEntry, ByVal Arg40 As ndx, ByRef le->se As TRUE ne->bowt = GetFloat FALSE  LN10 } } } if le != NULL { if le->nse==0 { le->se=NULL } else { qsort, ByVal Arg42 As le->nse, ByRef SEntry As sizeof, ByRef "\n" As se_cmp } } if trace&T_TIO printf, ByRef lm As fflush stdout return total } static void ReadBoNGram LModel, ByRef i As char  fn { NGramLM  nglm int, ByVal Arg47 As j, ByVal Arg48 As k, ByRef buf MAXSTRLEN+1() As counts NSIZE+1  Boolean ngBin NSIZE+1  char, ByRef "() As syc 64  char ngFmtCh if trace&T_TIO printf "\nBOffB, ByRef fn As fflush stdout if InitSource, ByVal Arg52 As &source, ByRef 8110 As LangModFilter <SUCCESS HError, ByRef %s" As "ReadBoNGram: Can't open file, ByRef buf As fn GetInLine buf SyncStr, ByRef buf() As "\\data\\" for i=1 i<=NSIZE i++ counts i =0 for i=1 i<=NSIZE i++ { GetInLine buf _
f sscanf, ByRef %d%c%d" As "ngram, ByVal Arg58 As &j, ByVal Arg59 As &ngFmtCh, ByRef 8150 As &k !=3 && i>1 break if i!=j || k==0 HError, ByRef " As "ReadBoNGram: %dGram count missing %s, ByVal Arg62 As i, ByRef 9999() As buf switch ngFmtCh { case '=': ngBin j  = FALSE break case '~': ngBin j  = TRUE break default: HError, ByRef '%c'" As "ReadARPALM: unknown ngram format type, ByRef 8113() As ngFmtCh } counts j =k } if ngBin 1  HError, ByRef lm As "ReadARPALM: unigram must be stored as text" nglm=CreateBoNGram, ByRef Arg67() As counts 1, ByRef syc As counts for i=1 i<=nglm->nsize i++ { sprintf, ByVal Arg69 As "\\%d-grams:", ByRef buf As i SyncStr, ByRef nglm As syc ReadNGrams, ByVal Arg72 As i, ByRef Arg73() As nglm->counts i, ByRef buf() As ngBin i  } SyncStr, ByRef " As "\\end\\" CloseSource &source if trace&T_TIO { printf "\n NEntry==%d, ByRef %d-Grams==%d"() As nglm->counts 0  for i=1 i<=nglm->nsize i++ printf ", ByVal Arg77 As i, ByRef lm() As nglm->counts i  printf "\n\n" fflush stdout } } static void _
riteBoNGram LModel, ByRef fn As String, ByRef i As int flags { int, ByRef fn As k FILE  file NGramLM  nglm Boolean isPipe nglm = lm->data.ngram file=FOpen, ByVal Arg82 As LangModOFilter, ByRef file As &isPipe fprintf, ByRef file As "\\data\\\n" for i=1 i<=nglm->nsize i++ { fprintf, ByRef %d=%d\n" As "ngram, ByVal Arg86 As i, ByRef file() As nglm->counts i  } for i=1 i<=nglm->nsize i++ { k = WriteNGrams, ByVal Arg88 As nglm, ByVal Arg89 As i, ByRef -8190() As 1.0LN10 if k!=nglm->counts i  HError, ByRef " As "WriteBoNGram: Counts disagree for %dgram %d vs %d, ByVal Arg92 As i, ByVal Arg93 As k, ByRef file() As nglm->counts i  } fprintf, ByRef file As "\n\\end\\\n" FClose, ByRef lm() As isPipe } void ClearBoNGram LModel  lm { NGramLM  nglm = lm->data.ngram int i for i=1 i<=nglm->vocSize i++ if nglm->wdlist i !=NULL nglm->wdlist i ->aux=0 } MatBiLM  CreateMatBigram LModel, ByRef lm->heap As int nw { MatBiLM  matbi matbi = MatBiLM   New, ByRef lm->heap As sizeof MatBiLM lm->data.matbi = matbi matbi->heap = lm-> _
ap matbi->numWords = nw matbi->wdlist = LabId   New, ByRef lm->heap As sizeof LabId   nw+1 matbi->bigMat = CreateMatrix, ByVal Arg100 As nw, ByRef i As nw ZeroMatrix matbi->bigMat return matbi } int ReadRow Vector v { int, ByVal Arg102 As j, ByVal Arg103 As N, ByVal Arg104 As cnt, ByRef c As c float x N = VectorSize v i=0 while !source.wasNewline { x = GetFloat FALSE c=GetCh &source if c == ' ' cnt=GetInt else { UnGetCh, ByRef lm() As &source cnt=1 } SkipWhiteSpace &source for j=0 j<cnt j++ { i++ if i<=N v i  = x } } return i } static void ReadMatBigram LModel, ByRef P() As char  fn { Vector vec char buf 132  int, ByVal Arg108 As p, ByRef sum As j float, ByRef " As x LabId id MatBiLM  matbi if trace&T_TIO printf "\nMB, ByRef fn As fflush stdout if InitSource, ByVal Arg112 As &source, ByRef 8110 As LangModFilter <SUCCESS HError, ByRef %s" As "ReadMatBigram: Can't open file, ByRef &gcheap As fn vec = CreateVector, ByRef buf As MAX_LMID ReadLMWord buf SkipWhiteSpace &source id=GetLabId, ByRef 8151 As TRUE P = _
eadRow vec if P<=0 || P >MAX_LMID HError, ByRef " As "ReadMatBigram: First row invalid %d entries, ByRef lm As P matbi=CreateMatBigram, ByRef &gcheap() As P matbi->wdlist 1  = id for p=1 p<=P p++ matbi->bigMat 1  p =vec p  id->aux= Ptr 1 Dispose, ByRef sum=0.0 As vec for, ByRef 8151() As j=1 j<=P j++ { x = matbi->bigMat 1  j  if x<0 HError, ByRef bigram As "ReadMatBigram: In, ByRef " As entry %d for %s is -ve %e, ByVal Arg125 As j, ByVal Arg126 As buf, ByRef -8151() As x sum += x matbi->bigMat 1  j = x<MINLARG ?LZERO:log x } if sum < 0.99 || sum > 1.01 HError, ByRef %f" As "ReadMatBigram: Row %d of bigram %s adds up to, ByVal Arg129 As 1, ByVal Arg130 As fn, ByRef " As sum for p=2 ReadLMWord buf p++ { if trace&T_TIO { if p%25 ==0 printf "., ByRef " As fflush stdout if p%800 ==0 printf "\n, ByRef 8150 As fflush stdout } if p>P HError, ByRef %s" As "ReadMatBigram: More rows than columns in bigram, ByRef buf As fn id=GetLabId, ByRef 8150 As TRUE if int id->aux != 0 HError, ByRef %s" As "ReadMatBigram: Duplica _
d name %s in bigram, ByVal Arg138 As buf, ByRef 8150() As fn id->aux = Ptr p matbi->wdlist p  = id SkipWhiteSpace &source if ReadRow matbi->bigMat p  !=P HError, ByRef %d" As "ReadMatBigram: Wrong number of items in row, ByRef sum=0.0 As p for, ByRef 8151() As j=1 j<=P j++ { x = matbi->bigMat p  j  if x<0 HError, ByRef bigram As "ReadMatBigram: In, ByRef " As entry %d for %s is -ve %e, ByVal Arg145 As j, ByVal Arg146 As buf, ByRef -8151() As x sum += x matbi->bigMat p  j = x<MINLARG ?LZERO:log x } if sum < 0.99 || sum > 1.01 HError, ByRef %f" As "ReadMatBigram: Row %d of bigram %s adds up to, ByVal Arg149 As p, ByVal Arg150 As fn, ByRef 8150 As sum } if P>p HError, ByRef %s" As "ReadMatBigram: More columns than rows in bigram, ByRef "\n" As fn if trace&T_TIO printf, ByRef lm As fflush stdout CloseSource &source } static void WriteMatBigram LModel, ByRef fn As String, ByRef x As int flags {   float epsilon = 0.000001 MatBiLM  matbi FILE  file Boolean isPipe Vector v double, ByRef i As y int, ByVal Arg158 As _
, ByRef " As rep if trace&T_TIO printf "\nMB, ByRef fn As fflush stdout matbi = lm->data.matbi file=FOpen, ByVal Arg161 As LangModOFilter, ByRef " As &isPipe for i=1 i<=matbi->numWords i++ { if trace&T_TIO { if i%25 ==0 printf "., ByRef " As fflush stdout if i%800 ==0 printf "\n, ByRef file As fflush stdout } fprintf, ByRef " As "%-8s, ByRef matbi->wdlist i ->name() As ReWriteString, ByVal Arg167 As NULL, ByRef file() As ESCAPE_CHAR v=matbi->bigMat i  rep=0 x=-1.0 for j=1 j<=matbi->numWords j++ { y = L2F v j  if fabs y - x <= epsilon rep++ else { if rep>0 { fprintf, ByRef Arg169 As " %d", ByRef file As rep+1 rep=0 } x = y if x == 0.0 fprintf, ByRef file As " 0" else if x == 1.0 fprintf, ByRef file As " 1" else fprintf, ByRef %e" As ", ByRef file As x } } if rep>0 fprintf, ByRef Arg175 As " %d", ByRef file As rep+1 fprintf, ByRef file As "\n" } FClose, ByRef "\n" As isPipe if trace&T_TIO printf, ByRef lm As fflush stdout } float GetLMProb LModel, ByRef prid NSIZE() As LabId, ByRef p() As LabId wdid { LabId _
id NSIZE  NEntry  ne SEntry  se lmId, ByVal Arg182 As q, ByVal Arg183 As word, ByRef bowt() As ndx NSIZE  LogFloat, ByRef i As prob int, ByRef s=-1 As s switch lm->type { case boNGram: word = int wdid->aux if word==0 || word>lm->data.ngram->vocSize return LZERO for, ByRef prid i ->aux() As i=0 i<NSIZE i++ if prid i !=NULL ndx i = int, ByRef Arg188() As cpid i =prid i, ByRef ndx i =0() As s=i else, ByRef lm->data.ngram() As cpid i =NULL if s<0 { if word!=0 return lm->data.ngram->unigrams word  else return log 1.0lm->data.ngram->vocSize } cpid s =0 ne = GetNEntry, ByVal Arg191 As ndx, ByRef i=0 As FALSE if ne { for, ByRef i++ As se=ne->se i<ne->nse, ByRef lm() As se++ if se->word==word return se->prob bowt=ne->bowt } else { bowt=0.0 } if s==0 return lm->data.ngram->unigrams word +bowt else return bowt+GetLMProb, ByVal Arg195 As cpid, ByRef heap() As wdid break case matBigram: p= int prid 0 ->aux q= int wdid->aux return lm->data.matbi->bigMat p  q  default: prob=LZERO } return prob } LModel  ReadLModel MemHea _
 ByRef heap() As char  fn { LModel  lm LMType type char buf MAXSTRLEN+1  int i lm= LModel  New, ByRef heap As sizeof LModel lm->heap=heap lm->name=CopyString, ByRef fn As fn if InitSource, ByVal Arg200 As &source, ByRef 8110 As LangModFilter <SUCCESS HError, ByRef %s" As "ReadLModel: Can't open file, ByRef buf As fn type=boNGram i=0 do { if i++==1000 { type=matBigram break } GetInLine buf } while strcmp, ByRef lm As "\\data\\" !=0 CloseSource &source lm->type=type switch type { case boNGram: ReadBoNGram, ByRef lm As fn break case matBigram: ReadMatBigram, ByRef lm As fn break } return lm } void WriteLModel LModel, ByRef fn As String, ByRef lm As int flags { switch lm->type { case boNGram: WriteBoNGram, ByVal Arg209 As fn, ByRef lm As flags break case matBigram: WriteMatBigram, ByVal Arg211 As fn, ByRef NO_LAT_LM As flags break } } void ClearLModel LModel  lm { switch lm->type { case boNGram: ClearBoNGram lm break case matBigram: break } } #ifndef )  As static int

Public Declare Function FindSEntry Lib "libname" ()
'( ByRef se As SEntry, ByRef pronId As lmId, ByVal l As Long, ByRef lm() As int h { int c while l <= h { c = l + h 2 if se c .word == pronId return &se c  else if se c .word < pronId l = c + 1 else h = c - 1 } return NULL } LogFloat LMTrans LModel, ByRef src As LMState, ByRef wdid As LabId, ByRef i() As LMState  dest { NGramLM  nglm LogFloat lmprob lmId hist NSIZE  = {0} int, ByRef -9999 As l NEntry  ne SEntry  se lmId word assert lm->type == boNGram nglm = lm->data.ngram word = int wdid->aux if word==0 || word>lm->data.ngram->vocSize { HError, ByRef wordlist" As "word %d not in LM, ByRef ne->se() As word  dest = NULL return LZERO } ne = src if !src { lmprob = nglm->unigrams word  } else { se = FindSEntry, ByVal Arg10 As word, ByVal Arg11 As 0, ByRef nglm() As ne->nse - 1 assert !se || se->word == word if se lmprob = se->prob else { lmprob = 0.0 l = 0 hist NSIZE-1  = 0 for i = 0 i < NSIZE-1 ++i { hist i  = ne->word i  if hist i  != 0 l = i } for l > 0 --l { i _
'ne lmprob += ne->bowt hist l  = 0 ne = GetNEntry, ByVal Arg13 As hist, ByRef ne->se As FALSE if ne { se = FindSEntry, ByVal Arg15 As word, ByVal Arg16 As 0, ByRef nglm() As ne->nse - 1 assert !se || se->word == word if se { lmprob += se->prob l = -1 break } } } if l == 0 { assert !se lmprob += ne->bowt lmprob += nglm->unigrams word  } } } if src { ne = NEntry   src l = 0 hist NSIZE-1  = 0 for i = 1 i < NSIZE-1 ++i { hist i  = ne->word i-1  if hist i  != 0 l = i } } else { for i = 1 i < NSIZE-1 ++i hist i  = 0 l = 1 } hist 0  = word ne = LMState GetNEntry, ByVal Arg18 As hist, ByRef nglm() As FALSE for !ne && l > 0 --l { hist l  = 0 ne = LMState GetNEntry, ByVal Arg20 As hist, ByRef 0 As FALSE }  dest = ne #if )  As static SEntry


#If False Then
'I couldn't handle the following:
'printf ("lmprob = %f  dest %p\n", lmprob, *dest);  #endif
#End If

#If False Then
'I couldn't handle the following:
'return (lmprob);  }  #endif
#End If



