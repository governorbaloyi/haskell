import DataStructures
import InputOutput
import Process

main = do
  ds <- loadDataSet "DataSet.txt"
  let strDataSet = show ds

  -- Generating nodes using generateNode function defined in Process.hs file

  let a = generateNode (points ds !! 0) (points ds !! 2) (points ds !! 5) (points ds !! 6)
  let b = generateNode (points ds !! 1) (points ds !! 5) (points ds !! 2) (points ds !! 6)
  let c = generateNode (points ds !! 2) (points ds !! 0) (points ds !! 5) (points ds !! 6)
  let d = generateNode (points ds !! 3) (points ds !! 1) (points ds !! 4) (points ds !! 6)
  let c = generateNode (points ds !! 4) (points ds !! 1) (points ds !! 5) (points ds !! 6)
  let d = generateNode (points ds !! 5) (points ds !! 0) (points ds !! 2) (points ds !! 6)
  let e = generateNode (points ds !! 6) (points ds !! 1) (points ds !! 4) (points ds !! 5)

  -- Creating a list of nodes and assigning then to my Graph, is this valid?

  let graph = Graph [a, b, c, d, e] 

  -- If this is valid, how do I use my graph?

  putStrLn $ "Generated Graph " ++ strDataSet
  saveToTextFile "output.txt" strDataSet

