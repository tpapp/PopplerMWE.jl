"""
Placeholder for a short summary about PopplerMWE.
"""
module PopplerMWE

using Poppler_jll

function run()
    mktempdir() do tmpdir
        cp(joinpath(@__DIR__, "..", "test.pdf"), joinpath(tmpdir, "test.pdf"))
        cd(tmpdir) do
            success(`$(pdftocairo()) -png test.pdf test.png`)
        end
    end
end

end # module
