# OLS estimator of slope coefficient from simple linear regression of Y on X
# Returns estimator, HC standard error, and sample variance of X
# Y should be a vector, X should me a matrix
ols <- function(Y, X, se = TRUE) {
  
  X <- as.matrix(X)
  Y <- as.vector(Y)
  
  n <- nrow(X)
  d <- ncol(X)
  
  sXX <- (1/n)*crossprod(X, X)
  sXY <- (1/n)*crossprod(X, Y)

  b <- solve(sXX, sXY)

  if(se){
    Omega = 
    
  }
  else{
    return b
  }
  
function ols(Y, X; se = true)
    
    (n, d) = size(X)
    sXX = BLAS.gemm('T', 'N', 1.0 / n, X, X)
    sXY = BLAS.gemv('T', 1.0 / n, X, Y)
    b = sXX \ sXY
    
    if se

        # HC standard error
        Ω = zeros(d, d)
        @inbounds for i in eachindex(Y)
            x = @view(X[i, :])
            u = Y[i] - dot(x, b)
            BLAS.ger!(u^2, x, x, Ω)
        end
        V = inv(sXX) * Ω * inv(sXX) / n^2

        return (b, V, sXX)

    else

        return b

    end

end
