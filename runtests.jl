using Test


include("matching_brackets.jl")
# Tests adapted from `problem-specifications//canonical-data.json` @ v1.4.0

println("\n"^2, "-"^60, "\n"^3)



@testset "Paired square brackets." begin
    @test is_paired("[]") == true
end
println()

@testset "empty string." begin
    @test is_paired("") == true
end
println()

@testset "unpaired brackets." begin
    @test is_paired("[[") == false
end
println()

@testset "wrong ordered brackets." begin
    @test is_paired("}{") == false
end
println()

@testset "Wrong closing bracket." begin
    @test is_paired("{]") == false
end
println()

@testset "Paired with whitespace." begin
    @test is_paired("{ }") == true
end
println()

@testset "Partially paired brackets." begin
    @test is_paired("{[])") == false
end
println()

@testset "Wimple nested brackets." begin
    @test is_paired("{[]}") == true
end
println()

@testset "Weveral paired brackets." begin
    @test is_paired("{}[]") == true
end
println()

@testset "Paired and nested brackets." begin
    @test is_paired("([{}({}[])])") == true
end
println()

@testset "Unopened closing brackets." begin
    @test is_paired("{[)][]}") == false
end
println()

@testset "Unpaired and nested brackets." begin
    @test is_paired("([{])") == false
end
println()

@testset "Paired and wrong nested brackets." begin
    @test is_paired("[({]})") == false
end
println()

@testset "Paired and incomplete brackets." begin
    @test is_paired("{}[") == false
end
println()

@testset "Too many closing brackets." begin
    @test is_paired("[]]") == false
end
println()

@testset "Math expression." begin
    @test is_paired("(((185 + 223.85) * 15) - 543)/2") == true
end
println()
