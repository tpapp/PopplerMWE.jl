using PopplerMWE
using Test

@show get(ENV, "LD_PRELOAD", nothing)
@show get(ENV, "LD_LIBRARY_PATH", nothing)

@test PopplerMWE.run()
