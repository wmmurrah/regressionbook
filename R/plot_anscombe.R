plot_anscombe <- function(data, x, y){
  # Plots Anscombe 1973 Quartet data.
  source("R/stat_smooth_func.R")
  ggplot(data, aes_string(x = x, y = y)) +
    geom_point() + ylim(0, 15) + xlim(0, 20) +
    geom_smooth(method = lm, se = FALSE, fullrange = TRUE) +
    stat_smooth_func(geom="text",method="lm",hjust=0,parse=TRUE,
                     xpos = 5, ypos = 2.5)
}