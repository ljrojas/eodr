test_that("con_eod2017 funciona", {
  con <- con_eod2017()
  expect_s4_class(con, "SQLiteConnection")

  d <- RSQLite::dbReadTable(con, 'autopista')
  expect_equal(c(nrow(d), ncol(d)), c(2,2))
  RSQLite::dbDisconnect(con)
})
