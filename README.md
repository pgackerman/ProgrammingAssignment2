### Introduction

The functions will compute and cache the inverse of a matrix. The matrix is
cached because matrix inversion is usually a costly computation.

### Caching the Inverse of a Matrix

The function, `makeCacheMatrix`, creates a special "matrix" function that can
cache its inverse.

The function, `cacheSolve`, computes the inverse of the special "matrix"
returned by makeCacheMatrix. If the inverse has been computed, and the matrix
has not changed, cacheSolve retrieves and returns the inverse from the cache.

### Deviation from coding norms

I prefer to put the start of a block ( "{" ) on its own line, rather than the
previous line. I find that it's easier to check that each open brace has a
matching closing brace when they are both in the same column.
