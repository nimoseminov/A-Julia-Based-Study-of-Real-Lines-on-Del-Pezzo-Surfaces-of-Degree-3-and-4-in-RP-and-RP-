using HomotopyContinuation
using LinearAlgebra

# Define the variables used in the system
@var x y z w v          # Variables for the quadrics
@var a b c d e f        # Parameters for the line parameterization
@var t s                # Parameters for the line (two variables for parametric line)

# Define two quadratic surfaces (a quartic Del Pezzo surface is the intersection of two quadrics)
Q1 = x^2 + y^2 + z^2 - w^2 
Q2 = x^2 + 4*y^2 + 9*z^2 - v^2

# Function to substitute the parametric line into a quadric equation
function substitute_into_quadric(Q)
    # Define the parametric expressions for each variable along the line,
    # where a,b,c,d,e,f are parameters and t,s are line parameters
    X = a*t + (a + b)*s
    Y = c*t + (c + d)*s
    Z = e*t + (e + f)*s
    W = 1*t + 1*s          # Fixed coefficients for W as example
    V = 0*t + 1*s          # Fixed coefficients for V as example
    # Substitute parametric expressions into quadric Q
    return subs(Q, [x, y, z, w, v] => [X, Y, Z, W, V])
end

# Function to extract the coefficient of a specific monomial (t^2, t*s, or s^2)
function extract_coeff(poly, mon)
    # For t^2 coefficient, substitute t=1, s=0 into poly
    if mon == t^2
        return subs(poly, [t, s] => [1, 0])
    # For s^2 coefficient, substitute t=0, s=1 into poly
    elseif mon == s^2
        return subs(poly, [t, s] => [0, 1])
    # For t*s coefficient, use the formula:
    # coeff(t*s) = (poly(1,1) - poly(1,0) - poly(0,1)) / 2
    elseif mon == t*s
        val11 = subs(poly, [t, s] => [1, 1])
        val10 = subs(poly, [t, s] => [1, 0])
        val01 = subs(poly, [t, s] => [0, 1])
        return (val11 - val10 - val01) / 2
    else
        error("Unsupported monomial")
    end
end

# Substitute the parametric line into both quadrics
poly1 = substitute_into_quadric(Q1)
poly2 = substitute_into_quadric(Q2)

# List of monomials whose coefficients we want to extract from the substituted polynomials
monoms = [t^2, t*s, s^2]

# Extract coefficients for each monomial from both polynomials and collect all into one array
eqs = [extract_coeff(p, m) for p in (poly1, poly2), m in monoms]
eqs = reduce(vcat, eqs)  # Flatten the array vertically to get a system of equations

# Define the polynomial system to be solved
system = System(eqs)

# Solve the polynomial system using homotopy continuation, show progress
result = solve(system; show_progress=true)

# Print a concise summary with only lines containing important statistics
summary_str = repr(result)
for line in split(summary_str, '\n')
    if occursin("paths tracked", line) || occursin("non-singular solutions", line) || occursin("total solutions", line)
        println(line)
    end
end
