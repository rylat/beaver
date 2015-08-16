import System.Environment
import System.Exit
import System.IO
import Data.List

main = do
        args <- getArgs
        if (length args) == 0
        then usage        >> exit
        else parse (args !! 0)

parse "help"    = usage   >> exit
parse "version" = version >> exit
parse ""        = usage   >> exit

usage      = do
              putStrLn "Usage: beaver <operation> [...]"
              putStrLn "\thelp\t\t\tdisplays this message"
              putStrLn "\tversion\t\t\tdisplays version"
              putStrLn "\tsync\t\t\tsynchronizes databases"
              putStrLn "\tinstall\t\t\tinstalls package"
              putStrLn "\tlist\t\t\tlists packages from all repositories"
version    = putStrLn "beaver 0.1"

exit = exitWith ExitSuccess