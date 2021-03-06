{-# LANGUAGE OverloadedStrings #-}

module Persistence.Utils where

import qualified Data.Text as T
import System.Random (randomRs, newStdGen)

genKey :: IO T.Text
genKey = do
  stdGen <- newStdGen
  return $ T.pack $ take 30 $ randomRs ('a','z') stdGen

