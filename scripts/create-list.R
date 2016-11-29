# Lists

# Make a list

## You may first of all create components

# 10,000 random numbers ranging from -10 through 20 inclusive
num_vec <- runif(10000, -10, 20)

# identify negative values of num_vec (TRUE)
num_vec_neg <- ifelse(num_vec < 0, TRUE, FALSE)

# matrix of 4 colour names
coloured <- matrix(rep(c("yellow", "red", "fuchsia", "orange"), 60),
                   nrow = 10, byrow = TRUE)

# a row with elements called 'blank'
(char_mat <- rbind(coloured, rep("blank", ncol(coloured))))

# collect names of files in this and immediate 2 parent folders
treee <- list(list.files(), list.files(".."), list.files("../../"))

# create a function that diplays area of a circle for given radius
Circle <- function(r) {
  if (r < 0)
    stop("undefined radius")
  Area <- pi * r * r
  print(Area)
}

# collect the definition of the function 'table()'
table_def <- table

# Download a CSV file from the web and use to create a data frame in R
download.file("https://download.microsoft.com/download/4/C/8/4C830C0C-101F-4BF2-8FCB-32D9A8BA906A/Import_User_Sample_en.csv",
              destfile = "microsoft_sample.csv",
              mode = "w")
DF <- read.csv("microsoft_sample.csv", stringsAsFactors = F, na.strings = " ")

# Now compile all these into a list
mumbo_jumbo <- list(num_vec,
                    num_vec_neg,
                    coloured,
                    char_mat,
                    treee,
                    Circle,
                    table_def,
                    DF)

# is this actually a list?
typeof(mumbo_jumbo)


# Empasize the existence of lists of lists i.e. nested lists
lister <- list(list(list(list(1))))
lister
str(lister)
typeof(lister)
#END