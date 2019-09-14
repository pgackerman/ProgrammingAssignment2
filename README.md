### Introduction

The functions will compute and cache the inverse of a matrix. The matrix is
cached because matrix inversion is usually a costly computation.

### Caching the Inverse of a Matrix

The function, `makeCacheMatrix`, creates a special "matrix" function that can cache its inverse.

The function, `cacheSolve`, computes the inverse of the special "matrix"
returned by makeCacheMatrix. If the inverse has been computed, and the matrix
has not changed, cacheSolve retrieves and returns the inverse from the cache.
