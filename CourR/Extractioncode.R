
lines <- readLines("Module 1_2.qmd")


inside_r_chunk <- FALSE
code_r <- c()

for (line in lines) {
  if (grepl("^```\\{r", line)) {
    inside_r_chunk <- TRUE
  } else if (grepl("^```$", line)) {
    inside_r_chunk <- FALSE
  } else if (inside_r_chunk) {
    code_r <- c(code_r, line)
  }
}


writeLines(code_r, "extrait_code_R2.R")

cat(code_r, sep="\n")