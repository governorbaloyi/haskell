module Process
( distance
, calcDistances
, generateNode
) where

import DataStructures
import Data.List

distance :: Point -> Point -> Double
distance (x1, y1) (x2, y2) =
  let deltaXs = (x1 - x2) ^ 2
      deltaYs = (y1 - y2) ^ 2
      sumOfSquares = deltaXs + deltaYs
  in sqrt sumOfSquares

calcDistances :: Point -> [Point] -> [(Double, Point)]
calcDistances (_, _) [] = []
calcDistances pt points = zip ds points
  where ds = map calcDist points
        calcDist = distance pt

generateNode :: Point -> Point -> Point -> Point -> Node
generateNode a b c d =
  (a, calcDistances a [b, c, d]) :: Node
