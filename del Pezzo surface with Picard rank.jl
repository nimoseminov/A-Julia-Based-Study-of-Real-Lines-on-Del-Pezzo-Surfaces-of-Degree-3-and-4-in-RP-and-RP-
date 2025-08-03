using HomotopyContinuation
using LinearAlgebra
using Printf

@var x y z w
@var a b c d

function fixedCubicSurface()
    return 72*x^3+1152*x^2*y-96*x*y^2-1664*y^3+3*x^2*z-90*x*y*z-408*y^2*z+9*x*z^2+32*y*z^2+300*x^2*w-1368*x*y*w-3008*y^2*w-382*y*z*w+23*z^2*w-408*x*w^2-1480*y*w^2-67*z*w^2-220*w^3
end

function lines_intersect(P1::Vector{Float64}, d1::Vector{Float64}, P2::Vector{Float64}, d2::Vector{Float64}; tol=1e-10)
    d1 = d1 / norm(d1)
    d2 = d2 / norm(d2)
    M = hcat(d1, -d2)
    rhs = P2 - P1
    try
        sol = M \ rhs
        closest_point_diff = norm(P1 + sol[1]*d1 - (P2 + sol[2]*d2))
        return closest_point_diff < tol
    catch
        return false
    end
end

function realLineEquations()
    f = fixedCubicSurface()

    g0 = subs(f, [x,y,z,w] => [a, c, 1, 0])
    g1 = subs(f, [x,y,z,w] => [a + b, c + d, 1, 1])
    g2 = subs(f, [x,y,z,w] => [a - b, c - d, 1, -1])
    g3 = subs(f, [x,y,z,w] => [b, d, 0, 1])

    S = System([g0, g1, g2, g3])
    result = solve(S; show_progress=false)
    vars = variables(S)
    real_sols = real_solutions(result)
    n = length(real_sols)

    allowed_ns = [3, 7, 15, 27]
    if !(n in allowed_ns)
        error("Number of real lines found ($n) is not in the allowed set [3,7,15,27].")
    end

    println("\nTotal number of real lines found: $n\n")

    points = Vector{Vector{Float64}}(undef, n)
    directions = Vector{Vector{Float64}}(undef, n)

    for (index, sol) in enumerate(real_sols)
        a_val = sol[findfirst(==(a), vars)]
        b_val = sol[findfirst(==(b), vars)]
        c_val = sol[findfirst(==(c), vars)]
        d_val = sol[findfirst(==(d), vars)]

        P1 = [a_val, c_val, 1.0, 0.0]
        P2 = [a_val + b_val, c_val + d_val, 1.0, 1.0]

        dir_vec = P2 - P1
        dir_vec /= norm(dir_vec)

        points[index] = P1
        directions[index] = dir_vec

        println("Real line number $index:")
        @printf(" Point: (%.16f, %.16f, %.16f, %.16f)\n", P1...)
        @printf(" Direction: (%.16f, %.16f, %.16f, %.16f)\n", dir_vec...)
        println("--------\n")
    end

    println("All lines in parametric form (LaTeX):\n")
    for idx in 1:n
        println("\\mathbf{X}_$idx = ")
        println("\\begin{pmatrix}")
        for i in 1:4
            @printf("%.16f\\\\\n", points[idx][i])
        end
        println("\\end{pmatrix} + r \\cdot \\begin{pmatrix}")
        for i in 1:4
            @printf("%.16f\\\\\n", directions[idx][i])
        end
        println("\\end{pmatrix},\n")
    end

    A = zeros(Int, n, n)
    for i in 1:n
        for j in 1:n
            if i == j
                A[i,j] = -1
            else
                A[i,j] = lines_intersect(points[i], directions[i], points[j], directions[j]) ? 1 : 0
            end
        end
    end

    println("\nMatrix A = ")
    show(stdout, "text/plain", A)
    println()

    B = ones(Int, n+1, n+1)
    B[1,1] = 3
    B[2:end, 2:end] = A

    println("\nMatrix B = ")
    show(stdout, "text/plain", B)
    println()

    r = rank(Matrix{Float64}(B))
    println("\nRank of matrix B = $r\n")
end

realLineEquations()