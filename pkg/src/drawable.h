#ifndef EBIMAGE_DRAWABLE_H
#define EBIMAGE_DRAWABLE_H

#include <R.h>
#include <Rdefines.h>

#ifdef __cplusplus
extern "C" {
#endif
  
  SEXP lib_drawText (SEXP, SEXP, SEXP, SEXP, SEXP);
  SEXP drawCircle (SEXP, SEXP, SEXP, SEXP);
  
#ifdef __cplusplus
};
#endif

#endif

