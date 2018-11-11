-- Computing the smallest natural number not in a given finite set X of natural numbers
import Data.List
import Data.Array

-- minfree xs = head([0..] \\ xs)

minfree xs = if null ([0..b-1] \\ us)
             then head ([b..] \\ vs)
             else head ([0..b-1] \\ us)
             where (us, vs) = (partition (<b) xs)
                   b        = div (length xs) 2 
