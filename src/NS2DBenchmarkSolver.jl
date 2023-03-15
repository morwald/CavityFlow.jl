module NS2DBenchmarkSolver

using LinearAlgebra

include("typedefs.jl")
include("differentiation.jl")
include("boundarycondition.jl")
include("solve.jl")
include("spectralmesh.jl")
include("spectralproblem.jl")
include("solution.jl")

export Solution1D
export SpectralMesh1D
export SpectralMesh2D
export Example1D
export Cavity4Sided
export setNeumannBC2D
export calculateΨinitial
export solve
export print 

end
