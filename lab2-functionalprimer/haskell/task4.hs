ask :: String -> IO ()
ask prompt =
  do
  putStrLn prompt
  line <- getLine
  if line == ""
    then ask prompt
    else if(line == "quit") then putStrLn("quitting") --condition added for quitting
    else do
      else putStrLn ("you said: " ++ reverse line)
      ask prompt --needed to stop program stopping after printing reverse line

main :: IO ()
main =
  do
  let prompt = "please say something"
  ask prompt