output <- c(4230, 4241, 4327, 4197, 3972, 3868, 3744, 3507, 3882, 3767, 3702)

names(output) <- paste(13:23, '년', sep="")
output

max.year <- sort(output, decreasing = T)
max.year[1]

min.year <- sort(output, decreasing = F)
min.year[1]

mean(output[1:11])

sum(output[1:11])
