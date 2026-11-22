# Project functions
# Functions used in more than one script go here.
# Load in other files with: source(here::here("R/99_proj_func.R"))
# They assume the tidyverse is already loaded.

# Add a column `target` that labels each mutation as
# "to alanine" or "to other", based on the logical column `to_alanine`.
add_target_label <- function(data) {
  data |>
    mutate(target = if_else(to_alanine, "to alanine", "to other"))
}

# Violin plot of ddG for mutations to alanine vs. other amino acids,
# with a boxplot inside each violin, a dashed line at 0 and the number
# of measurements in each group.
# data:      a tibble with the columns `target`, `ddg` and `facet_var`
# facet_var: name of the column used for the panels, e.g. "method"
# y_label:   text for the y axis
# title:     plot title
# free_y:    TRUE gives each panel its own y axis
plot_ddg_violin <- function(data, facet_var, y_label, title, free_y = FALSE) {
  counts <- data |>
    count(.data[[facet_var]], target)

  data |>
    ggplot(aes(x = target, y = ddg, fill = target)) +
    geom_hline(yintercept = 0, linetype = "dashed") +
    geom_violin(alpha = 0.5) +
    geom_boxplot(width = 0.15, outlier.shape = NA) +
    geom_text(
      data = counts,
      aes(label = str_c("n = ", n), y = Inf),
      vjust = 1.5,
      size = 3
    ) +
    facet_wrap(vars(.data[[facet_var]]),
               scales = if (free_y) "free_y" else "fixed") +
    labs(x = NULL, y = y_label, title = title) +
    theme_minimal() +
    theme(legend.position = "none")
}
