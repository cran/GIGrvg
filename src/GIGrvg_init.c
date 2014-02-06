
/*---------------------------------------------------------------------------*/
/* header files */

#include <R.h>
#include <Rinternals.h>
#include <R_ext/Rdynload.h>

#include "GIGrvg.h"
     
/*---------------------------------------------------------------------------*/

void 
R_init_GIGrvg (DllInfo *info  ATTRIBUTE__UNUSED) 
/*---------------------------------------------------------------------------*/
/* Initialization routine when loading the DLL                               */
/*                                                                           */
/* Parameters:                                                               */
/*   info ... passed by R and describes the DLL                              */
/*                                                                           */
/* Return:                                                                   */
/*   (void)                                                                  */
/*---------------------------------------------------------------------------*/
{
  /* Declare some C routines to be callable from other packages */ 
  R_RegisterCCallable("GIGrvg", "rgig", (DL_FUNC) rgig);
}

/*---------------------------------------------------------------------------*/
