function crossprod(u1, u2, u3, v1, v2, v3)
a = [(u2.*v3 - u3.*v1), (u3.*v1 - u1.*v3), (v1.*u2 - u2.*v1)]
