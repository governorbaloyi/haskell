type Point = (Double, Double)

data DataSet = DataSet {
  degree :: Int,
  points :: [Point]
} deriving (Read, Show)
