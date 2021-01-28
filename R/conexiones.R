#' Conexion a EOD2017 SQLITE
#'
#' Conexion a EOD2017 SQLITE ....
#'
#' completar con detalles
#'
#' @export
con_eod2017 <- function() {
  RSQLite::dbConnect(RSQLite::SQLite(),
    paste0(system.file("extdata",package = 'eodr'),'/eod2017.sqlite'))
}
