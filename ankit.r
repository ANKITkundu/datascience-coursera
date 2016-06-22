file.create("output.txt")
sink("ouput.txt")
cat("Hello")
cat("\n")
cat("World!")
sink()
file.show("output.txt")

