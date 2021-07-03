### A Pluto.jl notebook ###
# v0.12.12

using Markdown
using InteractiveUtils

# ╔═╡ ee766cf4-dbfc-11eb-0281-9f41bf140214
using DataFrames

# ╔═╡ fb0312ce-dbfc-11eb-1ac7-63393d4e215b
using CSV

# ╔═╡ bda9433e-dbdf-11eb-0d9e-65a14eac316a
using NPZ

# ╔═╡ 269cc064-dbe5-11eb-205c-8bc6f225b0d2
using Plots

# ╔═╡ b1637d94-dbdd-11eb-08f2-8f32db1f8fdf
begin
	docpath = "/home/vc/try/kaggle_dataset/G2/train/"
	respath = "/home/vc/try/kaggle_dataset/G2/training_labels.csv"
end

# ╔═╡ bd3cf062-dbdd-11eb-005b-a535e4f13a86
begin
	docx=0
	docy=0
	docz=0
end

# ╔═╡ c2ada01e-dbdd-11eb-2d1e-fb4f7c94ab9b
filepath = docpath*string(docx)*"/"*string(docy)*"/"*string(docz)*"/"

# ╔═╡ d5c10a70-dbfc-11eb-3415-078227f84ea9
labelDf = DataFrame(CSV.File(respath))

# ╔═╡ 8fc3ed02-dbdf-11eb-327a-7fbb2d6c0e6e
begin
	xx = "000a1f352b"
	fl = filepath*xx*".npy"
	label = labelDf[labelDf[:id] .== xx,:][:target][1]
end

# ╔═╡ dc4dcf6c-dbdf-11eb-0a9c-5b18f601f0c8
x=npzread(fl)

# ╔═╡ 128e2836-dbe0-11eb-1222-352b157f8d67
begin
	a=x[1,:]
	b=x[2,:]
	c=x[3,:]
end

# ╔═╡ 814812f2-dbf9-11eb-14cf-f16f5a1737c5
begin
	l = range(1,length=4096)
	p1 = plot(l,a*(10^16)*(10^4),label="d1")
	p2 = plot(l,b*(10^16)*(10^4),label="d2")
	p3 = plot(l,c*(10^16)*(10^4),label="d3")
	plot(p1,p2,p3)
end

# ╔═╡ da9bec24-dbfa-11eb-25af-1ddc0ddb12ee
label

# ╔═╡ Cell order:
# ╠═b1637d94-dbdd-11eb-08f2-8f32db1f8fdf
# ╠═bd3cf062-dbdd-11eb-005b-a535e4f13a86
# ╠═c2ada01e-dbdd-11eb-2d1e-fb4f7c94ab9b
# ╠═d5c10a70-dbfc-11eb-3415-078227f84ea9
# ╠═8fc3ed02-dbdf-11eb-327a-7fbb2d6c0e6e
# ╠═ee766cf4-dbfc-11eb-0281-9f41bf140214
# ╠═fb0312ce-dbfc-11eb-1ac7-63393d4e215b
# ╠═bda9433e-dbdf-11eb-0d9e-65a14eac316a
# ╠═dc4dcf6c-dbdf-11eb-0a9c-5b18f601f0c8
# ╠═128e2836-dbe0-11eb-1222-352b157f8d67
# ╠═269cc064-dbe5-11eb-205c-8bc6f225b0d2
# ╠═814812f2-dbf9-11eb-14cf-f16f5a1737c5
# ╠═da9bec24-dbfa-11eb-25af-1ddc0ddb12ee
