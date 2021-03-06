#FWH Borland make, (c) FiveTech Software 2005-2011

HBDIR=c:\fivetech\hb32
BCDIR=c:\bcc\bcc582
FWDIR=c:\fivetech\fwh1406

#change these paths as needed
.path.OBJ = .\obj
.path.PRG = .\prg
.path.CH  = $(FWDIR)\include;$(HBDIR)\include
.path.C   = .\
.path.rc  = .\res

#important: Use Uppercase for filenames extensions!

PRG =     		 	\
	MAIN.PRG       \
   PCLAVES.PRG    \
   PMATERIA.PRG   \
	C5IMGLIS.PRG   \
	C5VITEM.PRG		\
	C5VMENU.PRG		\
   REPORT1406.PRG \
   RPREVIEW1406.PRG\
   TFSDI.PRG      \
	TRECORD.PRG		\
   TSAYREF.PRG    \
   UT_BRW.PRG     \
   UT_CALEND.PRG  \
   UT_COMMON.PRG  \
	UT_OVERRIDE.PRG\
   UT_MSG.PRG     

OBJ = $(PRG:.PRG=.OBJ)
OBJS = $(OBJ:.\=.\obj)
PROJECT    : COLOSSUS.EXE

COLOSSUS.EXE : $(PRG:.PRG=.OBJ) $(C:.C=.OBJ) COLOSSUS.RES
  $(BCDIR)\bin\ilink32 -Gn -aa -Tpe -s @cls1406.bc

.PRG.OBJ:
  $(HBDIR)\bin\harbour $< /N /W1 /ES2 /Oobj\ /I$(FWDIR)\include;$(HBDIR)\include;.\ch
  $(BCDIR)\bin\bcc32 -c -tWM -I$(HBDIR)\include;$(BCDIR)\include -oobj\$& obj\$&.c

.C.OBJ:
  echo -c -tWM -D__HARBOUR__ > tmp
  echo -I$(HBDIR)\include;$(FWDIR)\include >> tmp
  $(BCDIR)\bin\bcc32 -oobj\$& @tmp $&.c
  del tmp
