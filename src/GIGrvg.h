
/*---------------------------------------------------------------------------*/
/* define macros for GCC attributes                                          */

#ifdef __GNUC__
#  define ATTRIBUTE__UNUSED  __attribute__ ((unused))
#else
#  define ATTRIBUTE__UNUSED
#endif

/*---------------------------------------------------------------------------*/

SEXP rgig(SEXP sexp_n, SEXP sexp_lambda, SEXP sexp_chi, SEXP sexp_psi);
/*---------------------------------------------------------------------------*/
/* Draw sample from GIG distribution.                                        */
/*---------------------------------------------------------------------------*/

SEXP dgig(SEXP sexp_x, SEXP sexp_lambda, SEXP sexp_chi, SEXP sexp_psi, SEXP sexp_logvalue);
/*---------------------------------------------------------------------------*/
/* evaluate pdf of GIG distribution                                          */
/*---------------------------------------------------------------------------*/
