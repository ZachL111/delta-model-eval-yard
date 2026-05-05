import PortfolioCore

expect :: Bool -> IO ()
expect True = pure ()
expect False = error "fixture mismatch"

main :: IO ()
main = do
  let signalcase_1 = Signal 92 88 14 21 9
  expect (score signalcase_1 == 128)
  expect (classify signalcase_1 == "review")
  let signalcase_2 = Signal 85 70 11 8 7
  expect (score signalcase_2 == 186)
  expect (classify signalcase_2 == "accept")
  let signalcase_3 = Signal 102 97 25 6 11
  expect (score signalcase_3 == 239)
  expect (classify signalcase_3 == "accept")
