module Main where

-- The following worked in the sense that it did what was intended, but was prohibitively slow
{-type Coordinate = (Int, Int)-}

{-data Tree a = Nil | Node a [Tree a] deriving (Show)-}


{-dimensions :: (Int, Int)-}
{-dimensions = (10,10)-}

{-finalPosition :: Coordinate-}
{-finalPosition = dimensions-}

{-traverse :: Coordinate -> Tree Coordinate-}
{-traverse coord -}
    {-| done = Node coord []-}
    {-| otherwise = Node coord (map traverse nextValidCoords)-}
    {-where -}
    {-nextValidCoords = filter coordValid [rightCoord, downCoord]-}
    {-rightCoord = (x+1, y)-}
    {-downCoord  = (x, y+1)-}
    {-done = coord == finalPosition-}
    {-x = fst coord-}
    {-y = snd coord-}

{-coordValid :: Coordinate -> Bool-}
{-coordValid coord = xValid (fst coord) && yValid (snd coord)-}

{-xValid :: Int -> Bool-}
{-xValid x = x `elem` [0..fst dimensions]-}

{-yValid :: Int -> Bool-}
{-yValid y = y `elem` [0..snd dimensions]-}


{-main :: IO ()-}
{-main = print $ traverse (1, 1)-}

-- Good explanation of this here : http://betterexplained.com/articles/navigate-a-grid-using-combinations-and-permutations/
main :: IO ()
main = print $ product [1..40] `div` product [1..20] `div` product [1..20]
