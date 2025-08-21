using HomotopyContinuation
using LinearAlgebra
using Printf

@var x y z w
@var a b c d

# K3 surface
function fixedCubicSurface()
    return 525600*x^4+284760*x^3*y-428400*x^2*y^2-284760*x*y^3-97200*y^4+459300*x^3*z+22452*x^2*y*z-334920*x*y^2*z-124872*y^3*z+146546*x^2*z^2-34518*x*y*z^2-31100*y^2*z^2+26336*x*z^3+5706*y*z^3+1094*z^4-51000*x^3*w+40920*x^2*y*w+204000*x*y^2*w+79320*y^3*w+129760*x^2*z*w+247464*x*y*z*w+87566*y^2*z*w+89275*x*z^2*w+72065*y*z^2*w+25090*z^3*w-414760*x^2*w^2-166110*x*y*w^2-18260*y^2*w^2-204997*x*z*w^2-59497*y*z*w^2-20940*z^2*w^2+12750*x*w^3-37230*y*w^3-76084*z*w^3+70840*w^4
end

# if two 4D line meet each other
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

function realLineEquations(io::IO)
    f = fixedCubicSurface()

    # 代入参数表示直线
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
        println(io, "Error: Number of real lines found ($n) is not in [3, 7, 15, 27].")
        return
    end

    println(io, "\nTotal number of real lines found: $n\n")

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

        println(io, "Real line number $index:")
        @printf(io, " Point: (%.16f, %.16f, %.16f, %.16f)\n", P1...)
        @printf(io, " Direction: (%.16f, %.16f, %.16f, %.16f)\n", dir_vec...)
        println(io, "--------\n")
    end

    println(io, "All lines in parametric form (LaTeX):\n")
    for idx in 1:n
        println(io, "\\mathbf{X}_$idx = ")
        println(io, "\\begin{pmatrix}")
        for i in 1:4
            @printf(io, "%.16f\\\\\n", points[idx][i])
        end
        println(io, "\\end{pmatrix} + r \\cdot \\begin{pmatrix}")
        for i in 1:4
            @printf(io, "%.16f\\\\\n", directions[idx][i])
        end
        println(io, "\\end{pmatrix},\n")
    end

    # Matrix A
    A = zeros(Int, n, n)
    for i in 1:n
        for j in 1:n
            if i == j
                A[i,j] = -2
            else
                A[i,j] = lines_intersect(points[i], directions[i], points[j], directions[j]) ? 1 : 0
            end
        end
    end

    println(io, "\nMatrix A = ")
    for i in 1:n
        println(io, join(A[i,:], " "))
    end

    # Matrix B
    B = ones(Int, n+1, n+1)
    B[1,1] = 4
    B[2:end, 2:end] = A

    println(io, "\nMatrix B = ")
    for i in 1:n+1
        println(io, join(B[i,:], " "))
    end

    # rank of B
    r = rank(Matrix{Float64}(B))
    println(io, "\nRank of matrix B = $r\n")
end

# main function: put everything into output.txt
open("output.txt", "w") do io
    realLineEquations(io)
end
