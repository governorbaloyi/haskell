module InputOutput
( loadDataSet
, saveDataSet
, saveToTextFile
) where

import System.IO
import DataStructures

loadDataSet :: String -> IO DataSet
loadDataSet strFileName = do
  hndFile <- openFile strFileName ReadMode
  strDataSet <- hGetContents hndFile
  let recDataSet = read strDataSet :: DataSet
  putStrLn $ "Loaded Contents: " ++ show recDataSet
  hClose hndFile
  return recDataSet

saveDataSet:: String -> DataSet -> IO ()
saveDataSet strFileName recDataSet = saveToTextFile strFileName strContents
  where strContents = show recDataSet

saveToTextFile :: String -> String -> IO ()
saveToTextFile strFileName strContents = do
  hndFile <- openFile strFileName WriteMode
  hPutStrLn hndFile strContents
  hClose hndFile
