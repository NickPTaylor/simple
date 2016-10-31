context("reverse string")

test_that("correct reversal of string", {
    expect_match(reverse_string("hello"), "olleh")
})
