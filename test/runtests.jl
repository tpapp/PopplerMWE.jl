using PopplerMWE
using Test

@show get(ENV, "LD_PRELOAD", nothing)

@test PopplerMWE.run()
