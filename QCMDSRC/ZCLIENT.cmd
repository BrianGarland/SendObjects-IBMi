             CMD        PROMPT('Send objects') TEXT('Send objects') +
                          ALLOW(*ALL) MODE(*ALL) ALWLMTUSR(*NO) +
                          HLPID(*CMD) HLPPNLGRP(ZCLIENT) +
                          PRDLIB(changelibraryname)

             PARM       KWD(OBJ) TYPE(OBJLIB) MIN(1) PROMPT('Object')

             PARM       KWD(OBJTYPE) TYPE(*CHAR) LEN(10) RSTD(*YES) +
                          DFT(*ALL) VALUES(*ALL *ALRTBL *BNDDIR +
                          *CHTFMT *CLD *CLS *CMD *CRG *CRQD *CSI +
                          *CSPMAP *CSPTBL *DTAARA *DTAQ *EDTD +
                          *EXITRG *FCT *FILE *FNTRSC *FNTTBL +
                          *FORMDF *FTR *GSS *IGCDCT *IGCSRT *IGCTBL +
                          *IMGCLG *JOBD *JOBQ *JOBSCD *JRN *JRNRCV +
                          *LIB *LOCALE *MEDDFN *MENU *MGTCOL +
                          *MODULE *MSGF *MSGQ *NODGRP *NODL *NWSCFG +
                          *OUTQ *OVL *PAGDFN *PAGSEG *PDFMAP *PDG +
                          *PGM *PNLGRP *PRDAVL *PRDDFN *PRDLOD +
                          *PSFCFG *QMFORM *QMQRY *QRYDFN *RCT *SBSD +
                          *SCHIDX *SPADCT *SQLPKG *SQLUDT *SQLXSR +
                          *SRVPGM *SSND *SVRSTG *S36 *TBL *TIMZON +
                          *USRIDX *USRQ *USRSPC *VLDL *WSCST) +
                          CHOICE('Type, *ALL') PROMPT('Objecttype')

             PARM       KWD(RMTSYS) TYPE(*CHAR) LEN(16) +
                          CHOICE('Remotesystem') PROMPT('IP-Adress +
                          or Hostname')

             PARM       KWD(USRPRF) TYPE(*NAME) LEN(10) SPCVAL((*NONE +
                          *NONE)) PROMPT('User')

             PARM       KWD(PWD) TYPE(*CHAR) LEN(32) CASE(*MIXED) +
                          DSPINPUT(*NO) PMTCTL(USEPWD) +
                          PROMPT('Password')

             PARM       KWD(TGTRLS) TYPE(*CHAR) LEN(8) RSTD(*YES) +
                          DFT(*CURRENT) VALUES(*CURRENT *PRV) +
                          PMTCTL(*PMTRQS) PROMPT('Target-Release')

             PARM       KWD(RSTLIB) TYPE(*NAME) LEN(10) DFT(*SAVLIB) +
                          SPCVAL((*SAVLIB *SAVLIB)) PMTCTL(*PMTRQS) +
                          PROMPT('Restore in following library')

             PARM       KWD(PORT) TYPE(*DEC) LEN(5) DFT(19335) +
                          RANGE(1 65535) PMTCTL(*PMTRQS) PROMPT('Port')

             PARM       KWD(TLS) TYPE(*LGL) RSTD(*YES) DFT(*YES) +
                          SPCVAL((*YES '1') (*NO '0')) +
                          PMTCTL(*PMTRQS) PROMPT('Send data over TLS')

             PARM       KWD(DTACPR) TYPE(*CHAR) LEN(7) RSTD(*YES) +
                          DFT(*HIGH) VALUES(*DEV *NO *YES *LOW +
                          *MEDIUM *HIGH) PMTCTL(*PMTRQS) +
                          PROMPT('Datacompression')

             PARM       KWD(SAVF) TYPE(SAVOBJ) PMTCTL(*PMTRQS) +
                          PROMPT('Savefile')

             PARM       KWD(PATH) TYPE(*PNAME) LEN(128) +
                          DFT('/tmp/snd.file') PMTCTL(*PMTRQS) +
                          PROMPT('Workobject')

 OBJLIB:     QUAL       TYPE(*SNAME)
             QUAL       TYPE(*SNAME) DFT(*LIBL) SPCVAL((*LIBL +
                          *LIBL)) PROMPT('Library')
 SAVOBJ:     QUAL       TYPE(*SNAME) DFT(SND)
             QUAL       TYPE(*SNAME) DFT(QTEMP) PROMPT('Library')
 USEPWD:     PMTCTL     CTL(USRPRF) COND((*NE '*NONE'))
