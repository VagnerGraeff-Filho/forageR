test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})

test_that("velocidade funciona", {
  expect_equal(calcular_velocidade(10, 5), 2)
  expect_error(calcular_velocidade("a", 5))
  expect_error(calcular_velocidade(10, 0))
})
