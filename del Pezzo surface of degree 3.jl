using HomotopyContinuation
using LinearAlgebra

@var x y z w
@var a b c d

function festeKubischeFlaeche()
    return 621*x^3+2619*x^2*y-1800*x*y^2-3040*y^3+315*x^2*z+618*x*y*z-1212*y^2*z+174*x*z^2+172*y*z^2+1152*x^2*w-24*x*y*w-4328*y^2*w+306*x*z*w-650*y*z*w+38*z^2*w+51*x*w^2-1907*y*w^2-97*z*w^2
end

function realLineEquations()

    f = festeKubischeFlaeche()
    
    g0 = subs(f, [x,y,z,w] => [a, c, 1, 0])
    g1 = subs(f, [x,y,z,w] => [a + b, c + d, 1, 1])
    g2 = subs(f, [x,y,z,w] => [a - b, c - d, 1, -1])
    g3 = subs(f, [x,y,z,w] => [b, d, 0, 1])
    
    S = System([g0, g1, g2, g3])
    
    result = solve(S)
    
    vars = variables(S)
    
    real_sols = real_solutions(result)

    println("\n Insgesamt $(length(real_sols)) reelle Geraden gefunden.\n")

    for (index, sol) in enumerate(real_sols)

        a_val = sol[findfirst(==(a), vars)]
        b_val = sol[findfirst(==(b), vars)]
        c_val = sol[findfirst(==(c), vars)]
        d_val = sol[findfirst(==(d), vars)]
        
        P1 = [a_val, c_val, 1.0, 0.0]
        P2 = [a_val + b_val, c_val + d_val, 1.0, 1.0]
        
        V = hcat(P1, P2)
        N = nullspace(V')

        println("Reelle Gerade Nr. $(index):")
        
        for i in 1:size(N, 2)
            
            coeffs = N[:, i]
            equation = coeffs[1]*x + coeffs[2]*y + coeffs[3]*z + coeffs[4]*w
            println("  Gleichung $i: $equation = 0")
        
        end
        
        println("--------\n")
    
    end

end

realLineEquations()