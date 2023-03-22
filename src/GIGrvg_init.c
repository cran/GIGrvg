
/*---------------------------------------------------------------------------*/
/* header files */

#include <R.h>
#include <Rinternals.h>
#include <R_ext/Rdynload.h>

#include "GIGrvg.h"
     
/*---------------------------------------------------------------------------*/

static const R_CallMethodDef CallEntries[] = {
    {"rgig", (DL_FUNC) &rgig, 4},
    {"dgig", (DL_FUNC) &dgig, 5},
    {NULL, NULL, 0}
};

/*-------------------------------------------------------------------------*/

void 
R_init_GIGrvg (DllInfo *dll  ATTRIBUTE__UNUSED) 
/*---------------------------------------------------------------------------*/
/* Initialization routine when loading the DLL                               */
/*                                                                           */
/* Parameters:                                                               */
/*   dll ... passed by R and describes the DLL                               */
/*                                                                           */
/* Return:                                                                   */
/*   (void)                                                                  */
/*---------------------------------------------------------------------------*/
{
  /* Declare some C routines to be callable from other packages */ 
  R_RegisterCCallable("GIGrvg", "rgig", (DL_FUNC) rgig);
  R_RegisterCCallable("GIGrvg", "do_rgig", (DL_FUNC) do_rgig);

  /* Register native routines */
  R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
  R_useDynamicSymbols(dll, FALSE);
  R_forceSymbols(dll, TRUE);
}

/*---------------------------------------------------------------------------*/
