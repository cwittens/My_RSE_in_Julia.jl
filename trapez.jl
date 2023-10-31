function trapez(f,a,b,N)


    Δx = (b-a)/N
    x = []
    for i in 1:N+1
        push!(x,a+Δx*(i-1))
    end

    res = 0
    for k in 1:N
        res += (f(x[k]) + f(x[k+1])) / 2 * Δx
    end

    return res
end

a = -1
b = 2
N = 100
f(x) = x*exp(x)

print(trapez(f,a,b,N))

f(x) = cos(200*x)
a = 0
b = 1
result = sin(200)/200

using Plots
plot(err_liste2, xlabel = "# of gitter points", ylabel = "error", title = "error plot", yaxis=:log10, xaxis=:log10)    