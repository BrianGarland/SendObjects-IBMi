             CMD        PROMPT('Send objects') TEXT('Send objects') +
                          ALLOW(*ALL) MODE(*ALL) ALWLMTUSR(*NO) +
                          HLPID(*CMD) HLPPNLGRP($$YOURLIB/ZCLIENT) +
                          PRDLIB($$YOURLIB)

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

             PARM       KWD(HOST) TYPE(*CHAR) LEN(16) CHOICE('Host') +
                          PROMPT('IP-Adress or Hostname')

             PARM       KWD(USER) TYPE(*NAME) LEN(10) PROMPT('User')

             PARM       KWD(PASS) TYPE(*CHAR) LEN(32) CASE(*MIXED) +
                          DSPINPUT(*NO) PROMPT('Password')

             PARM       KWD(TGTRLS) TYPE(*CHAR) LEN(8) RSTD(*YES) +
                          DFT(*CURRENT) VALUES(*CURRENT *PRV) +
                          PROMPT('Target-Release')

             PARM       KWD(RSTLIB) TYPE(*NAME) LEN(10) DFT(*SAVLIB) +
                          SPCVAL((*SAVLIB *SAVLIB)) PROMPT('Restore +
                          in following library')

             PARM       KWD(PORT) TYPE(*DEC) LEN(5) DFT(19335) +
                          RANGE(1 65535) PROMPT('Port')

             PARM       KWD(TLS) TYPE(*LGL) RSTD(*YES) DFT(*NO) +
                          SPCVAL((*YES '1') (*NO '0')) PROMPT('Send +
                          data over TLS')

             PARM       KWD(DTACPR) TYPE(*CHAR) LEN(7) RSTD(*YES) +
                          DFT(*HIGH) VALUES(*DEV *NO *YES *LOW +
                          *MEDIUM *HIGH) PROMPT('Datacompression')

 OBJLIB:     QUAL       TYPE(*SNAME)
             QUAL       TYPE(*SNAME) DFT(*LIBL) SPCVAL((*LIBL +
                          *LIBL)) PROMPT('Library')
