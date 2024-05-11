/* voc 2.1.0 [2022/05/16] for clang LP64 on darwin xtpam */

#define SHORTINT INT8
#define INTEGER  INT16
#define LONGINT  INT32
#define SET      UINT32

#include "SYSTEM.h"
#include "Files.h"
#include "Out.h"
#include "Platform.h"




static void obe_CheckDirectories (void);
static void obe_GenIndex (void);


static void obe_CheckDirectories (void)
{
	Files_File fd = NIL;
	fd = Files_New((CHAR*)"public", 7);
}

static void obe_GenIndex (void)
{
	Files_File outputfd = NIL, templfd = NIL, examplesfd = NIL;
	Files_Rider outputrd, templrd, examplesrd;
}


export int main(int argc, char **argv)
{
	__INIT(argc, argv);
	__MODULE_IMPORT(Files);
	__MODULE_IMPORT(Out);
	__MODULE_IMPORT(Platform);
	__REGMAIN("obe", 0);
/* BEGIN */
	obe_CheckDirectories();
	obe_GenIndex();
	__FINI;
}
