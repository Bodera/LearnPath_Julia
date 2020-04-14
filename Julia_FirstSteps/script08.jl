#Plotting
#=
Here's a secret: Plots.jl isn't actually a plotting package! Plots.jl is a
 plotting metapackage: it's an interface over many different plotting libraries.
Thus what Plots.jl is actually doing is interpreting your commands and then
generating the plots using another plotting library.

Some common backends for this are PyPlot and GR. To install these backends,
 simply use the standard Julia installation (Pkg.add("BackendPackage")).
=#

#Pkg.add("Plots")
using Plots

globaltemperatures = [14.4, 14.5, 14.8, 15.2, 15.5, 15.8]
numpirates = [45000, 20000, 15000, 5000, 400, 17]

#gr()

plot(numpirates, globaltemperatures, label="line")
scatter!(numpirates, globaltemperatures, label="points")
xlabel!("Number of Pirates (Approximate)")
ylabel!("Global Temperature (Cº)")
title!("Influence of pirate population on global warming")

xflip!() # The number of pirates has decreased since 1860, so reading the plot from left to right is like looking backwards in time rather than forwards. Let's flip the x axis to better see how pirate populations have caused global temperatures to change over time!

savefig("/home/bode/Documentos/git-myRepos/learnPath_Julia/Julia_FirstSteps/wwf_pirates.pdf")

#This is a joke about how people often conflate correlation and causation
