#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function(input, output, session) {
  # Your application server logic
  output$data <- renderTable({
    Sys.sleep(4)
    mtcars[, c("mpg", input$variable), drop = FALSE]
  }, rownames = TRUE)
}
