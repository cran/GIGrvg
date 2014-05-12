
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
/* Wrapper for do_rgig():                                                    */
/*   GetRNGstate(); do_rgig(...); PutRNGstate();                             */
/*---------------------------------------------------------------------------*/

SEXP do_rgig(int n, double lambda, double chi, double psi);
/*---------------------------------------------------------------------------*/
/* Draw sample from GIG distribution                                         */
/* without calling GetRNGstate() ... PutRNGstate()                           */
/*---------------------------------------------------------------------------*/

SEXP dgig(SEXP sexp_x, SEXP sexp_lambda, SEXP sexp_chi, SEXP sexp_psi, SEXP sexp_logvalue);
/*---------------------------------------------------------------------------*/
/* evaluate pdf of GIG distribution                                          */
/*---------------------------------------------------------------------------*/

