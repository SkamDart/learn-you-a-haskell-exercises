import System.Directory
import System.Environment
import System.IO

main :: IO ()
main = do
    (command:args) <- getArgs
    putStr command

-- lottery :: StdGen -> [int]
-- lottery = undefined
