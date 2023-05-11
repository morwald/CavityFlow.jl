@testset "timestepping.jl" begin
    @testset "timestepping" begin
        n = 6
        Re = 100
        p = CF.setup_params(n, Re)

        Δt = 1
        timesteps = 200
        Ψ0 = ones((n + 1, n + 1))

        Ψ200 = CF.timestepping(Ψ0, p, Δt, timesteps)

        Ψ200_ref = [0 0 0 0 0 0 0
                    0 0.0223534291102081 0.0655941971343996 0.0589510766581025 0.0555732229353761 0.0204248917264253 0
                    0 -0.0664329942047326 -0.0337131774973950 -0.0810657532138882 -0.0857836868595323 -0.0764539684037562 0
                    0 -0.0892424343792270 -0.150714381583066 -0.187874748844775 -0.150714381583067 -0.0892424343792272 0
                    0 -0.0764539684037564 -0.0857836868595334 -0.0810657532138900 -0.0337131774973966 -0.0664329942047329 0
                    0 0.0204248917264252 0.0555732229353758 0.0589510766581022 0.0655941971343994 0.0223534291102081 0
                    0 0 0 0 0 0 0]

        @test Ψ200 ≈ Ψ200_ref
    end
end
