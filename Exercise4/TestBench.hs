{-# LANGUAGE Unsafe #-}
{-# LANGUAGE CPP #-}
module TestBench where

import Prelude hiding (catch)
import Control.Exception
import Control.Monad
import System.Timeout
import Test.QuickCheck
import Test.QuickCheck.Test (isSuccess, output)
import Data.IORef

-- Data follows.

import safe GameExercise (
    Player(..), Board, Move, Tree(..), LRand(..), play, allowedMoves, treeOf, computerFirst, computerSecond, randomFirst, randomSecond, computerFirstHeuristic, computerSecondHeuristic, toBoard, fromBoard, toMove, fromMove
    )
import TestHelpers


-- This file was automatically generated
-- by GenerateTests.hs
-- on 2015-12-02 13:14:06.333584 UTC

main :: IO ()
main = do
    points <- newIORef 0

    putStrLn "Test 1: fromBoard . toBoard (1 points)"
    res_1_1 <- unitTests "(sortMoveList . fromBoard . toBoard)" (sortMoveList . fromBoard . toBoard) sortmovelistfromboardtoboard_1_1_in sortmovelistfromboardtoboard_1_1_out
    res_1_2 <- unitTests "(bTb2 . toBoard . fromBoard . b2Tb)" (bTb2 . toBoard . fromBoard . b2Tb) btb2toboardfromboardb2tb_1_2_in btb2toboardfromboardb2tb_1_2_out
    addPoints points $ defaultMarker "fromBoard . toBoard" 1 [res_1_1, res_1_2]
    putStrLn ""

    putStrLn "Test 2: fromMove . toMove (1 points)"
    res_2_1 <- unitTests "testMove" testMove testmove_2_1_in testmove_2_1_out
    res_2_2 <- unitTests "testMove'" testMove' testmove'_2_2_in testmove'_2_2_out
    addPoints points $ defaultMarker "fromMove . toMove" 1 [res_2_1, res_2_2]
    putStrLn ""

    putStrLn "Test 3: play (1 points)"
    res_3_1 <- unitTests "testPlay" testPlay testplay_3_1_in testplay_3_1_out
    addPoints points $ defaultMarker "play" 1 [res_3_1]
    putStrLn ""

    putStrLn "Test 4: allowedMoves (1 points)"
    res_4_1 <- unitTests "testAllowedMoves" testAllowedMoves testallowedmoves_4_1_in testallowedmoves_4_1_out
    addPoints points $ defaultMarker "allowedMoves" 1 [res_4_1]
    putStrLn ""

    putStrLn "Test 5: treeOf (1 points)"
    res_5_1 <- unitTests "randomTraceFromBoard" randomTraceFromBoard randomtracefromboard_5_1_in randomtracefromboard_5_1_out
    addPoints points $ defaultMarker "treeOf" 1 [res_5_1]
    putStrLn ""

    putStrLn "Test 6: computerFirst, computerSecond (1 points)"
    res_6_1 <- quickTest "notImplementedYet" notImplementedYet
    addPoints points $ defaultMarker "computerFirst, computerSecond" 1 [res_6_1]
    putStrLn ""

    putStrLn "Test 7: randomFirst, randomSecond  (1 points)"
    res_7_1 <- unitTests "enoughRandomMoves" enoughRandomMoves enoughrandommoves_7_1_in enoughrandommoves_7_1_out
    addPoints points $ defaultMarker "randomFirst, randomSecond " 1 [res_7_1]
    putStrLn ""

    putStrLn "Test 8: computerFirstEuristic, computerSecondEuristic (100 points)"
    res_8_1 <- quickTest "notImplementedYet" notImplementedYet
    addPoints points $ defaultMarker "computerFirstEuristic, computerSecondEuristic" 100 [res_8_1]
    putStrLn ""
    putStrLn "Total possible points for this set: 107"
    putStrLn "Expected number of points for your solution: "
    print =<< readIORef points
    putStrLn "Your expected mark is: "
    print . (/ 1.07) . fromIntegral =<< readIORef points

-- START automatically generated inputs/outputs --


-- Inputs and correct outputs for (sortMoveList . fromBoard . toBoard)
sortmovelistfromboardtoboard_1_1_in = [
    -- sortmovelistfromboardtoboard_1_1_in !! 0
    (1,1,[],PH)
  , -- sortmovelistfromboardtoboard_1_1_in !! 1
    (1,1,[],PH)
  , -- sortmovelistfromboardtoboard_1_1_in !! 2
    (2,2,[(0,1),(1,1)],PV)
  , -- sortmovelistfromboardtoboard_1_1_in !! 3
    (3,3,[(0,1),(0,2),(1,1),(1,2),(2,1),(2,2)],PV)
  , -- sortmovelistfromboardtoboard_1_1_in !! 4
    (4,4,[(0,0),(0,1),(0,3),(1,1),(1,3),(2,1)],PV)
  , -- sortmovelistfromboardtoboard_1_1_in !! 5
    (5,5,[(2,4),(3,4)],PV)
  , -- sortmovelistfromboardtoboard_1_1_in !! 6
    (6,6,[(0,2),(0,3),(1,0),(1,1),(2,2),(2,3),(2,4),(3,1),(3,2),(3,3),(3,4),(4,1),(4,3),(4,4),(5,1),(5,2)],PH)
  , -- sortmovelistfromboardtoboard_1_1_in !! 7
    (7,7,[(0,3),(0,4),(0,6),(1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(2,0),(2,1),(2,3),(2,4),(2,5),(3,0),(3,3),(3,4),(3,5),(4,0),(4,1),(4,2),(4,3),(4,4),(4,5),(4,6),(5,0),(5,1),(5,2),(5,3),(5,6),(6,0),(6,1),(6,3),(6,4),(6,5),(6,6)],PH)
  , -- sortmovelistfromboardtoboard_1_1_in !! 8
    (6,6,[(1,4),(1,5),(2,0),(2,1),(2,3),(2,4),(3,1),(3,2),(4,1),(4,2),(4,3),(5,3)],PH)
  , -- sortmovelistfromboardtoboard_1_1_in !! 9
    (8,8,[(0,0),(0,1),(0,2),(0,4),(0,5),(1,0),(1,1),(1,2),(1,6),(1,7),(2,0),(2,1),(2,3),(2,4),(2,7),(3,0),(3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,7),(4,0),(4,1),(4,2),(4,3),(4,4),(4,5),(4,6),(4,7),(5,0),(5,1),(5,3),(5,4),(5,7),(6,0),(6,1),(6,2),(6,3),(6,5),(6,6),(6,7),(7,0),(7,1),(7,3),(7,4),(7,5),(7,6),(7,7)],PV)
  , -- sortmovelistfromboardtoboard_1_1_in !! 10
    (3,3,[(0,1),(0,2),(1,1),(1,2),(2,1),(2,2)],PV)
  ]
sortmovelistfromboardtoboard_1_1_out = [
    -- sortmovelistfromboardtoboard_1_1_out !! 0
    (1,1,[],PH)
  , -- sortmovelistfromboardtoboard_1_1_out !! 1
    (1,1,[],PH)
  , -- sortmovelistfromboardtoboard_1_1_out !! 2
    (2,2,[(0,1),(1,1)],PV)
  , -- sortmovelistfromboardtoboard_1_1_out !! 3
    (3,3,[(0,1),(0,2),(1,1),(1,2),(2,1),(2,2)],PV)
  , -- sortmovelistfromboardtoboard_1_1_out !! 4
    (4,4,[(0,0),(0,1),(0,3),(1,1),(1,3),(2,1)],PV)
  , -- sortmovelistfromboardtoboard_1_1_out !! 5
    (5,5,[(2,4),(3,4)],PV)
  , -- sortmovelistfromboardtoboard_1_1_out !! 6
    (6,6,[(0,2),(0,3),(1,0),(1,1),(2,2),(2,3),(2,4),(3,1),(3,2),(3,3),(3,4),(4,1),(4,3),(4,4),(5,1),(5,2)],PH)
  , -- sortmovelistfromboardtoboard_1_1_out !! 7
    (7,7,[(0,3),(0,4),(0,6),(1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(2,0),(2,1),(2,3),(2,4),(2,5),(3,0),(3,3),(3,4),(3,5),(4,0),(4,1),(4,2),(4,3),(4,4),(4,5),(4,6),(5,0),(5,1),(5,2),(5,3),(5,6),(6,0),(6,1),(6,3),(6,4),(6,5),(6,6)],PH)
  , -- sortmovelistfromboardtoboard_1_1_out !! 8
    (6,6,[(1,4),(1,5),(2,0),(2,1),(2,3),(2,4),(3,1),(3,2),(4,1),(4,2),(4,3),(5,3)],PH)
  , -- sortmovelistfromboardtoboard_1_1_out !! 9
    (8,8,[(0,0),(0,1),(0,2),(0,4),(0,5),(1,0),(1,1),(1,2),(1,6),(1,7),(2,0),(2,1),(2,3),(2,4),(2,7),(3,0),(3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,7),(4,0),(4,1),(4,2),(4,3),(4,4),(4,5),(4,6),(4,7),(5,0),(5,1),(5,3),(5,4),(5,7),(6,0),(6,1),(6,2),(6,3),(6,5),(6,6),(6,7),(7,0),(7,1),(7,3),(7,4),(7,5),(7,6),(7,7)],PV)
  , -- sortmovelistfromboardtoboard_1_1_out !! 10
    (3,3,[(0,1),(0,2),(1,1),(1,2),(2,1),(2,2)],PV)
  ]

-- Inputs and correct outputs for (bTb2 . toBoard . fromBoard . b2Tb)
btb2toboardfromboardb2tb_1_2_in = [
    -- btb2toboardfromboardb2tb_1_2_in !! 0
    B2 (1,1) [] PH
  , -- btb2toboardfromboardb2tb_1_2_in !! 1
    B2 (1,1) [] PH
  , -- btb2toboardfromboardb2tb_1_2_in !! 2
    B2 (2,2) [(0,1),(1,1)] PV
  , -- btb2toboardfromboardb2tb_1_2_in !! 3
    B2 (3,3) [(0,2),(1,2),(2,0),(2,1),(0,0),(1,0)] PV
  , -- btb2toboardfromboardb2tb_1_2_in !! 4
    B2 (4,4) [(0,2),(1,2),(3,1),(3,2),(2,3),(3,3)] PV
  , -- btb2toboardfromboardb2tb_1_2_in !! 5
    B2 (1,5) [] PH
  , -- btb2toboardfromboardb2tb_1_2_in !! 6
    B2 (6,6) [(1,5),(2,5),(3,0),(3,1)] PH
  , -- btb2toboardfromboardb2tb_1_2_in !! 7
    B2 (7,7) [(5,1),(6,1),(3,4),(3,5),(4,3),(5,3),(0,0),(0,1),(2,6),(3,6),(2,2),(2,3),(4,2),(5,2),(1,0),(1,1),(3,1),(4,1),(5,4),(5,5),(5,6),(6,6),(0,4),(0,5),(3,0),(4,0),(1,2),(1,3),(0,6),(1,6)] PV
  , -- btb2toboardfromboardb2tb_1_2_in !! 8
    B2 (8,8) [(2,5),(3,5),(5,6),(5,7),(3,4),(4,4),(4,6),(4,7),(4,1),(5,1),(1,4),(1,5),(0,0),(1,0),(3,6),(3,7),(6,1),(7,1),(2,6),(2,7),(4,5),(5,5),(2,3),(2,4),(6,6),(7,6),(5,2),(5,3)] PH
  , -- btb2toboardfromboardb2tb_1_2_in !! 9
    B2 (2,2) [(0,0),(1,0)] PV
  , -- btb2toboardfromboardb2tb_1_2_in !! 10
    B2 (2,2) [] PH
  ]
btb2toboardfromboardb2tb_1_2_out = [
    -- btb2toboardfromboardb2tb_1_2_out !! 0
    B2 (1,1) [] PH
  , -- btb2toboardfromboardb2tb_1_2_out !! 1
    B2 (1,1) [] PH
  , -- btb2toboardfromboardb2tb_1_2_out !! 2
    B2 (2,2) [(1,1),(0,1)] PV
  , -- btb2toboardfromboardb2tb_1_2_out !! 3
    B2 (3,3) [(2,1),(2,0),(1,2),(1,0),(0,2),(0,0)] PV
  , -- btb2toboardfromboardb2tb_1_2_out !! 4
    B2 (4,4) [(3,3),(3,2),(3,1),(2,3),(1,2),(0,2)] PV
  , -- btb2toboardfromboardb2tb_1_2_out !! 5
    B2 (1,5) [] PH
  , -- btb2toboardfromboardb2tb_1_2_out !! 6
    B2 (6,6) [(3,1),(3,0),(2,5),(1,5)] PH
  , -- btb2toboardfromboardb2tb_1_2_out !! 7
    B2 (7,7) [(6,6),(6,1),(5,6),(5,5),(5,4),(5,3),(5,2),(5,1),(4,3),(4,2),(4,1),(4,0),(3,6),(3,5),(3,4),(3,1),(3,0),(2,6),(2,3),(2,2),(1,6),(1,3),(1,2),(1,1),(1,0),(0,6),(0,5),(0,4),(0,1),(0,0)] PV
  , -- btb2toboardfromboardb2tb_1_2_out !! 8
    B2 (8,8) [(7,6),(7,1),(6,6),(6,1),(5,7),(5,6),(5,5),(5,3),(5,2),(5,1),(4,7),(4,6),(4,5),(4,4),(4,1),(3,7),(3,6),(3,5),(3,4),(2,7),(2,6),(2,5),(2,4),(2,3),(1,5),(1,4),(1,0),(0,0)] PH
  , -- btb2toboardfromboardb2tb_1_2_out !! 9
    B2 (2,2) [(1,0),(0,0)] PV
  , -- btb2toboardfromboardb2tb_1_2_out !! 10
    B2 (2,2) [] PH
  ]

-- Inputs and correct outputs for testMove
testmove_2_1_in = [
    -- testmove_2_1_in !! 0
    (M2 PH (0,2),B2 (4,4) [(1,1),(2,1),(3,0),(3,1)] PH)
  , -- testmove_2_1_in !! 1
    (M2 PV (1,0),B2 (3,3) [(0,2),(1,2)] PV)
  , -- testmove_2_1_in !! 2
    (M2 PV (2,1),B2 (3,3) [(0,2),(1,2)] PV)
  , -- testmove_2_1_in !! 3
    (M2 PH (1,2),B2 (3,3) [] PH)
  , -- testmove_2_1_in !! 4
    (M2 PH (2,0),B2 (5,3) [(3,2),(4,2),(1,0),(1,1)] PH)
  , -- testmove_2_1_in !! 5
    (M2 PV (0,0),B2 (5,5) [(1,1),(2,1),(4,0),(4,1),(3,3),(4,3),(1,3),(1,4),(2,4),(3,4),(0,2),(0,3),(2,2),(3,2)] PV)
  , -- testmove_2_1_in !! 6
    (M2 PH (0,1),B2 (3,3) [(1,0),(2,0),(2,1),(2,2)] PH)
  , -- testmove_2_1_in !! 7
    (M2 PV (1,2),B2 (6,6) [(4,5),(5,5),(4,3),(4,4),(2,4),(3,4),(3,0),(3,1),(0,4),(1,4),(0,2),(0,3),(1,1),(2,1)] PV)
  , -- testmove_2_1_in !! 8
    (M2 PV (1,0),B2 (6,6) [(3,1),(4,1),(0,0),(0,1),(4,0),(5,0),(1,4),(1,5),(4,5),(5,5),(3,4),(3,5),(2,0),(3,0),(5,1),(5,2),(0,2),(1,2),(0,4),(0,5),(2,2),(3,2),(2,4),(2,5),(4,3),(5,3)] PV)
  , -- testmove_2_1_in !! 9
    (M2 PV (3,5),B2 (9,9) [(2,7),(3,7),(0,5),(0,6),(3,1),(4,1),(3,3),(3,4),(5,8),(6,8),(7,6),(7,7),(1,5),(2,5),(0,1),(0,2),(2,0),(3,0),(8,5),(8,6),(1,3),(2,3),(4,5),(4,6),(1,4),(2,4),(5,0),(5,1),(6,5),(7,5),(4,2),(4,3),(5,7),(6,7),(6,0),(6,1),(1,1),(2,1),(7,2),(7,3),(1,8),(2,8),(1,6),(1,7),(7,1),(8,1),(5,2),(5,3),(0,0),(1,0)] PV)
  , -- testmove_2_1_in !! 10
    (M2 PH (4,2),B2 (6,7) [(1,2),(2,2),(5,5),(5,6),(1,1),(2,1),(4,4),(4,5)] PH)
  ]
testmove_2_1_out = [
    -- testmove_2_1_out !! 0
    M2 PH (0,2)
  , -- testmove_2_1_out !! 1
    M2 PV (1,0)
  , -- testmove_2_1_out !! 2
    M2 PV (2,1)
  , -- testmove_2_1_out !! 3
    M2 PH (1,2)
  , -- testmove_2_1_out !! 4
    M2 PH (2,0)
  , -- testmove_2_1_out !! 5
    M2 PV (0,0)
  , -- testmove_2_1_out !! 6
    M2 PH (0,1)
  , -- testmove_2_1_out !! 7
    M2 PV (1,2)
  , -- testmove_2_1_out !! 8
    M2 PV (1,0)
  , -- testmove_2_1_out !! 9
    M2 PV (3,5)
  , -- testmove_2_1_out !! 10
    M2 PH (4,2)
  ]

-- Inputs and correct outputs for testMove'
testmove'_2_2_in = [
    -- testmove'_2_2_in !! 0
    ((0,1,PH),B2 (2,2) [] PH)
  , -- testmove'_2_2_in !! 1
    ((0,2,PH),B2 (3,3) [(0,1),(1,1),(2,0),(2,1)] PH)
  , -- testmove'_2_2_in !! 2
    ((2,1,PV),B2 (3,3) [(0,1),(1,1)] PV)
  , -- testmove'_2_2_in !! 3
    ((1,0,PH),B2 (4,3) [] PH)
  , -- testmove'_2_2_in !! 4
    ((2,2,PV),B2 (4,4) [(0,3),(1,3),(3,1),(3,2),(0,0),(1,0),(2,0),(2,1),(0,2),(1,2)] PV)
  , -- testmove'_2_2_in !! 5
    ((0,2,PV),B2 (6,4) [(2,2),(3,2),(4,2),(4,3),(2,3),(3,3),(2,0),(2,1),(0,1),(1,1),(5,2),(5,3),(4,1),(5,1),(3,0),(3,1),(0,0),(1,0),(1,2),(1,3),(4,0),(5,0)] PV)
  , -- testmove'_2_2_in !! 6
    ((2,3,PV),B2 (6,6) [(0,0),(1,0),(5,3),(5,4),(1,5),(2,5),(1,3),(1,4),(3,4),(4,4),(5,0),(5,1),(3,5),(4,5),(3,1),(3,2),(1,2),(2,2),(0,3),(0,4),(2,0),(3,0),(4,0),(4,1),(3,3),(4,3)] PV)
  , -- testmove'_2_2_in !! 7
    ((2,1,PV),B2 (6,4) [(3,0),(4,0)] PV)
  , -- testmove'_2_2_in !! 8
    ((4,0,PH),B2 (6,6) [(4,2),(5,2),(1,4),(1,5),(3,4),(4,4),(2,2),(2,3),(0,1),(1,1),(5,4),(5,5),(3,1),(4,1),(1,2),(1,3)] PH)
  , -- testmove'_2_2_in !! 9
    ((2,2,PV),B2 (6,6) [(0,0),(1,0)] PV)
  , -- testmove'_2_2_in !! 10
    ((4,5,PV),B2 (6,10) [(0,0),(1,0),(4,8),(4,9),(1,4),(2,4),(0,2),(0,3),(2,1),(3,1),(3,5),(3,6),(2,7),(3,7),(0,7),(0,8),(1,3),(2,3),(5,5),(5,6),(3,2),(4,2),(2,8),(2,9),(1,2),(2,2),(4,0),(4,1),(4,7),(5,7),(5,8),(5,9),(4,3),(5,3),(1,8),(1,9),(0,5),(1,5),(2,5),(2,6),(0,6),(1,6),(5,0),(5,1),(0,1),(1,1),(3,3),(3,4),(4,4),(5,4)] PV)
  ]
testmove'_2_2_out = [
    -- testmove'_2_2_out !! 0
    (0,1,PH)
  , -- testmove'_2_2_out !! 1
    (0,2,PH)
  , -- testmove'_2_2_out !! 2
    (2,1,PV)
  , -- testmove'_2_2_out !! 3
    (1,0,PH)
  , -- testmove'_2_2_out !! 4
    (2,2,PV)
  , -- testmove'_2_2_out !! 5
    (0,2,PV)
  , -- testmove'_2_2_out !! 6
    (2,3,PV)
  , -- testmove'_2_2_out !! 7
    (2,1,PV)
  , -- testmove'_2_2_out !! 8
    (4,0,PH)
  , -- testmove'_2_2_out !! 9
    (2,2,PV)
  , -- testmove'_2_2_out !! 10
    (4,5,PV)
  ]

-- Inputs and correct outputs for testPlay
testplay_3_1_in = [
    -- testplay_3_1_in !! 0
    (M2 PV (1,0),B2 (3,3) [(1,2),(2,2)] PV)
  , -- testplay_3_1_in !! 1
    (M2 PH (0,1),B2 (2,2) [] PH)
  , -- testplay_3_1_in !! 2
    (M2 PH (1,0),B2 (4,4) [(1,3),(2,3),(3,0),(3,1),(1,1),(2,1),(3,2),(3,3)] PH)
  , -- testplay_3_1_in !! 3
    (M2 PH (0,0),B2 (2,4) [(0,3),(1,3),(0,1),(0,2)] PH)
  , -- testplay_3_1_in !! 4
    (M2 PV (1,2),B2 (4,4) [(0,0),(1,0)] PV)
  , -- testplay_3_1_in !! 5
    (M2 PV (4,3),B2 (5,5) [(2,1),(3,1),(3,2),(3,3),(0,4),(1,4),(1,1),(1,2),(2,4),(3,4)] PV)
  , -- testplay_3_1_in !! 6
    (M2 PV (3,3),B2 (6,6) [(4,4),(5,4),(3,0),(3,1),(4,3),(5,3)] PV)
  , -- testplay_3_1_in !! 7
    (M2 PH (3,5),B2 (8,8) [(2,0),(3,0),(7,4),(7,5),(0,5),(1,5),(2,2),(2,3),(1,1),(2,1),(3,3),(3,4),(6,2),(7,2),(2,6),(2,7)] PH)
  , -- testplay_3_1_in !! 8
    (M2 PH (3,4),B2 (6,6) [(2,5),(3,5),(4,1),(4,2),(0,0),(1,0),(2,1),(2,2),(3,3),(4,3),(0,1),(0,2),(3,0),(4,0),(1,1),(1,2),(1,4),(2,4),(5,1),(5,2),(1,3),(2,3),(3,1),(3,2),(0,5),(1,5),(5,3),(5,4)] PH)
  , -- testplay_3_1_in !! 9
    (M2 PV (8,3),B2 (9,9) [(6,4),(7,4),(5,6),(5,7),(7,2),(8,2),(2,7),(2,8),(7,8),(8,8),(4,0),(4,1),(5,1),(6,1),(8,5),(8,6),(3,2),(4,2),(7,5),(7,6),(3,4),(4,4)] PV)
  , -- testplay_3_1_in !! 10
    (M2 PV (4,1),B2 (7,3) [(5,1),(6,1),(2,1),(2,2),(5,2),(6,2),(1,0),(1,1),(2,0),(3,0)] PV)
  ]
testplay_3_1_out = [
    -- testplay_3_1_out !! 0
    B2 (3,3) [(2,2),(1,2),(1,1),(1,0)] PH
  , -- testplay_3_1_out !! 1
    B2 (2,2) [(1,1),(0,1)] PV
  , -- testplay_3_1_out !! 2
    B2 (4,4) [(3,3),(3,2),(3,1),(3,0),(2,3),(2,1),(2,0),(1,3),(1,1),(1,0)] PV
  , -- testplay_3_1_out !! 3
    B2 (2,4) [(1,3),(1,0),(0,3),(0,2),(0,1),(0,0)] PV
  , -- testplay_3_1_out !! 4
    B2 (4,4) [(1,3),(1,2),(1,0),(0,0)] PH
  , -- testplay_3_1_out !! 5
    B2 (5,5) [(4,4),(4,3),(3,4),(3,3),(3,2),(3,1),(2,4),(2,1),(1,4),(1,2),(1,1),(0,4)] PH
  , -- testplay_3_1_out !! 6
    B2 (6,6) [(5,4),(5,3),(4,4),(4,3),(3,4),(3,3),(3,1),(3,0)] PH
  , -- testplay_3_1_out !! 7
    B2 (8,8) [(7,5),(7,4),(7,2),(6,2),(4,5),(3,5),(3,4),(3,3),(3,0),(2,7),(2,6),(2,3),(2,2),(2,1),(2,0),(1,5),(1,1),(0,5)] PV
  , -- testplay_3_1_out !! 8
    B2 (6,6) [(5,4),(5,3),(5,2),(5,1),(4,4),(4,3),(4,2),(4,1),(4,0),(3,5),(3,4),(3,3),(3,2),(3,1),(3,0),(2,5),(2,4),(2,3),(2,2),(2,1),(1,5),(1,4),(1,3),(1,2),(1,1),(1,0),(0,5),(0,2),(0,1),(0,0)] PV
  , -- testplay_3_1_out !! 9
    B2 (9,9) [(8,8),(8,6),(8,5),(8,4),(8,3),(8,2),(7,8),(7,6),(7,5),(7,4),(7,2),(6,4),(6,1),(5,7),(5,6),(5,1),(4,4),(4,2),(4,1),(4,0),(3,4),(3,2),(2,8),(2,7)] PH
  , -- testplay_3_1_out !! 10
    B2 (7,3) [(6,2),(6,1),(5,2),(5,1),(4,2),(4,1),(3,0),(2,2),(2,1),(2,0),(1,1),(1,0)] PH
  ]

-- Inputs and correct outputs for testAllowedMoves
testallowedmoves_4_1_in = [
    -- testallowedmoves_4_1_in !! 0
    B2 (1,1) [] PH
  , -- testallowedmoves_4_1_in !! 1
    B2 (1,1) [] PH
  , -- testallowedmoves_4_1_in !! 2
    B2 (2,2) [(0,0),(1,0)] PV
  , -- testallowedmoves_4_1_in !! 3
    B2 (3,3) [(1,2),(2,2),(1,0),(1,1)] PH
  , -- testallowedmoves_4_1_in !! 4
    B2 (2,2) [(0,0),(1,0)] PV
  , -- testallowedmoves_4_1_in !! 5
    B2 (5,5) [(1,3),(2,3),(3,1),(3,2),(1,0),(2,0),(2,1),(2,2),(2,4),(3,4),(0,3),(0,4),(3,3),(4,3),(4,1),(4,2),(0,2),(1,2),(0,0),(0,1)] PH
  , -- testallowedmoves_4_1_in !! 6
    B2 (6,6) [(1,2),(2,2),(4,1),(4,2),(0,4),(1,4),(5,0),(5,1),(3,5),(4,5),(3,2),(3,3),(2,4),(3,4)] PV
  , -- testallowedmoves_4_1_in !! 7
    B2 (3,7) [(0,0),(1,0),(1,2),(1,3),(1,4),(2,4),(1,5),(1,6),(0,1),(1,1),(2,2),(2,3)] PH
  , -- testallowedmoves_4_1_in !! 8
    B2 (8,8) [(6,7),(7,7),(2,3),(2,4),(1,7),(2,7),(3,4),(3,5),(6,0),(7,0),(4,6),(4,7),(0,1),(1,1),(5,5),(5,6),(4,3),(5,3),(0,6),(0,7),(6,1),(7,1),(5,1),(5,2),(2,1),(3,1),(4,0),(4,1),(6,6),(7,6),(6,2),(6,3),(0,3),(1,3),(1,4),(1,5),(2,0),(3,0),(7,2),(7,3),(5,4),(6,4),(0,4),(0,5),(2,6),(3,6),(7,4),(7,5)] PH
  , -- testallowedmoves_4_1_in !! 9
    B2 (5,5) [(1,0),(2,0),(0,2),(0,3),(3,1),(4,1),(0,0),(0,1),(0,4),(1,4),(1,1),(1,2)] PH
  , -- testallowedmoves_4_1_in !! 10
    B2 (6,4) [(3,3),(4,3),(0,2),(0,3),(1,0),(2,0),(0,0),(0,1),(3,1),(4,1),(1,1),(1,2)] PH
  ]
testallowedmoves_4_1_out = [
    -- testallowedmoves_4_1_out !! 0
    []
  , -- testallowedmoves_4_1_out !! 1
    []
  , -- testallowedmoves_4_1_out !! 2
    []
  , -- testallowedmoves_4_1_out !! 3
    []
  , -- testallowedmoves_4_1_out !! 4
    []
  , -- testallowedmoves_4_1_out !! 5
    [M2 PH (3,0)]
  , -- testallowedmoves_4_1_out !! 6
    [M2 PV (0,0),M2 PV (0,1),M2 PV (0,2),M2 PV (1,0),M2 PV (2,0),M2 PV (3,0),M2 PV (4,3),M2 PV (5,2),M2 PV (5,3),M2 PV (5,4)]
  , -- testallowedmoves_4_1_out !! 7
    []
  , -- testallowedmoves_4_1_out !! 8
    [M2 PH (0,0),M2 PH (0,2),M2 PH (1,2),M2 PH (2,2),M2 PH (3,2)]
  , -- testallowedmoves_4_1_out !! 9
    [M2 PH (1,3),M2 PH (2,2),M2 PH (2,3),M2 PH (2,4),M2 PH (3,0),M2 PH (3,2),M2 PH (3,3),M2 PH (3,4)]
  , -- testallowedmoves_4_1_out !! 10
    [M2 PH (1,3),M2 PH (2,2),M2 PH (3,0),M2 PH (3,2),M2 PH (4,0),M2 PH (4,2)]
  ]

-- Inputs and correct outputs for randomTraceFromBoard
randomtracefromboard_5_1_in = [
    -- randomtracefromboard_5_1_in !! 0
    (Seed2 3527767889,B2 (1,1) [] PH)
  , -- randomtracefromboard_5_1_in !! 1
    (Seed2 3820418560,B2 (1,1) [] PH)
  , -- randomtracefromboard_5_1_in !! 2
    (Seed2 2237845691,B2 (2,2) [] PH)
  , -- randomtracefromboard_5_1_in !! 3
    (Seed2 1940065731,B2 (3,3) [(0,0),(1,0)] PV)
  , -- randomtracefromboard_5_1_in !! 4
    (Seed2 3197110944,B2 (4,4) [(0,1),(1,1),(3,2),(3,3),(0,3),(1,3),(2,0),(2,1),(0,0),(1,0),(2,2),(2,3),(0,2),(1,2)] PV)
  , -- randomtracefromboard_5_1_in !! 5
    (Seed2 861603445,B2 (5,5) [(1,4),(2,4),(2,0),(2,1),(2,2),(3,2),(1,2),(1,3),(3,4),(4,4),(0,2),(0,3),(0,0),(1,0),(3,0),(3,1),(0,1),(1,1),(4,0),(4,1),(3,3),(4,3)] PV)
  , -- randomtracefromboard_5_1_in !! 6
    (Seed2 915915300,B2 (6,6) [(1,0),(2,0)] PV)
  , -- randomtracefromboard_5_1_in !! 7
    (Seed2 825015835,B2 (7,7) [(0,6),(1,6),(1,2),(1,3)] PH)
  , -- randomtracefromboard_5_1_in !! 8
    (Seed2 2195317343,B2 (5,6) [(0,3),(1,3),(4,3),(4,4),(0,5),(1,5),(3,2),(3,3),(2,0),(3,0),(4,1),(4,2),(2,5),(3,5),(0,1),(0,2),(1,2),(2,2),(1,0),(1,1)] PH)
  , -- randomtracefromboard_5_1_in !! 9
    (Seed2 4003235480,B2 (4,8) [(0,5),(1,5)] PV)
  , -- randomtracefromboard_5_1_in !! 10
    (Seed2 295627474,B2 (9,4) [(5,2),(6,2),(3,2),(3,3),(0,0),(1,0),(5,0),(5,1),(0,2),(1,2),(4,0),(4,1),(4,3),(5,3),(2,2),(2,3),(1,1),(2,1),(7,0),(7,1),(2,0),(3,0),(6,0),(6,1),(6,3),(7,3),(8,0),(8,1)] PH)
  ]
randomtracefromboard_5_1_out = [
    -- randomtracefromboard_5_1_out !! 0
    (B2 (1,1) [] PH,[])
  , -- randomtracefromboard_5_1_out !! 1
    (B2 (1,1) [] PH,[])
  , -- randomtracefromboard_5_1_out !! 2
    (B2 (2,2) [] PH,[([M2 PH (0,0),M2 PH (0,1)],M2 PH (0,0),B2 (2,2) [(0,0),(1,0)] PV)])
  , -- randomtracefromboard_5_1_out !! 3
    (B2 (3,3) [(0,0),(1,0)] PV,[([M2 PV (0,1),M2 PV (1,1),M2 PV (2,0),M2 PV (2,1)],M2 PV (0,1),B2 (3,3) [(0,0),(1,0),(0,1),(0,2)] PH),([M2 PH (1,1),M2 PH (1,2)],M2 PH (1,1),B2 (3,3) [(0,0),(1,0),(0,1),(0,2),(1,1),(2,1)] PV)])
  , -- randomtracefromboard_5_1_out !! 4
    (B2 (4,4) [(0,1),(1,1),(3,2),(3,3),(0,3),(1,3),(2,0),(2,1),(0,0),(1,0),(2,2),(2,3),(0,2),(1,2)] PV,[([M2 PV (3,0)],M2 PV (3,0),B2 (4,4) [(0,1),(1,1),(3,2),(3,3),(0,3),(1,3),(2,0),(2,1),(0,0),(1,0),(2,2),(2,3),(0,2),(1,2),(3,0),(3,1)] PH)])
  , -- randomtracefromboard_5_1_out !! 5
    (B2 (5,5) [(1,4),(2,4),(2,0),(2,1),(2,2),(3,2),(1,2),(1,3),(3,4),(4,4),(0,2),(0,3),(0,0),(1,0),(3,0),(3,1),(0,1),(1,1),(4,0),(4,1),(3,3),(4,3)] PV,[])
  , -- randomtracefromboard_5_1_out !! 6
    (B2 (6,6) [(1,0),(2,0)] PV,[([M2 PV (0,0),M2 PV (0,1),M2 PV (0,2),M2 PV (0,3),M2 PV (0,4),M2 PV (1,1),M2 PV (1,2),M2 PV (1,3),M2 PV (1,4),M2 PV (2,1),M2 PV (2,2),M2 PV (2,3),M2 PV (2,4),M2 PV (3,0),M2 PV (3,1),M2 PV (3,2),M2 PV (3,3),M2 PV (3,4),M2 PV (4,0),M2 PV (4,1),M2 PV (4,2),M2 PV (4,3),M2 PV (4,4),M2 PV (5,0),M2 PV (5,1),M2 PV (5,2),M2 PV (5,3),M2 PV (5,4)],M2 PV (4,1),B2 (6,6) [(1,0),(2,0),(4,1),(4,2)] PH),([M2 PH (0,1),M2 PH (0,2),M2 PH (0,3),M2 PH (0,4),M2 PH (0,5),M2 PH (1,1),M2 PH (1,2),M2 PH (1,3),M2 PH (1,4),M2 PH (1,5),M2 PH (2,1),M2 PH (2,2),M2 PH (2,3),M2 PH (2,4),M2 PH (2,5),M2 PH (3,0),M2 PH (3,3),M2 PH (3,4),M2 PH (3,5),M2 PH (4,0),M2 PH (4,3),M2 PH (4,4),M2 PH (4,5)],M2 PH (3,5),B2 (6,6) [(1,0),(2,0),(4,1),(4,2),(3,5),(4,5)] PV),([M2 PV (0,0),M2 PV (0,1),M2 PV (0,2),M2 PV (0,3),M2 PV (0,4),M2 PV (1,1),M2 PV (1,2),M2 PV (1,3),M2 PV (1,4),M2 PV (2,1),M2 PV (2,2),M2 PV (2,3),M2 PV (2,4),M2 PV (3,0),M2 PV (3,1),M2 PV (3,2),M2 PV (3,3),M2 PV (4,3),M2 PV (5,0),M2 PV (5,1),M2 PV (5,2),M2 PV (5,3),M2 PV (5,4)],M2 PV (5,0),B2 (6,6) [(1,0),(2,0),(4,1),(4,2),(3,5),(4,5),(5,0),(5,1)] PH),([M2 PH (0,1),M2 PH (0,2),M2 PH (0,3),M2 PH (0,4),M2 PH (0,5),M2 PH (1,1),M2 PH (1,2),M2 PH (1,3),M2 PH (1,4),M2 PH (1,5),M2 PH (2,1),M2 PH (2,2),M2 PH (2,3),M2 PH (2,4),M2 PH (3,0),M2 PH (3,3),M2 PH (3,4),M2 PH (4,3),M2 PH (4,4)],M2 PH (4,4),B2 (6,6) [(1,0),(2,0),(4,1),(4,2),(3,5),(4,5),(5,0),(5,1),(4,4),(5,4)] PV),([M2 PV (0,0),M2 PV (0,1),M2 PV (0,2),M2 PV (0,3),M2 PV (0,4),M2 PV (1,1),M2 PV (1,2),M2 PV (1,3),M2 PV (1,4),M2 PV (2,1),M2 PV (2,2),M2 PV (2,3),M2 PV (2,4),M2 PV (3,0),M2 PV (3,1),M2 PV (3,2),M2 PV (3,3),M2 PV (5,2)],M2 PV (1,4),B2 (6,6) [(1,0),(2,0),(4,1),(4,2),(3,5),(4,5),(5,0),(5,1),(4,4),(5,4),(1,4),(1,5)] PH),([M2 PH (0,1),M2 PH (0,2),M2 PH (0,3),M2 PH (1,1),M2 PH (1,2),M2 PH (1,3),M2 PH (2,1),M2 PH (2,2),M2 PH (2,3),M2 PH (2,4),M2 PH (3,0),M2 PH (3,3),M2 PH (4,3)],M2 PH (2,3),B2 (6,6) [(1,0),(2,0),(4,1),(4,2),(3,5),(4,5),(5,0),(5,1),(4,4),(5,4),(1,4),(1,5),(2,3),(3,3)] PV),([M2 PV (0,0),M2 PV (0,1),M2 PV (0,2),M2 PV (0,3),M2 PV (0,4),M2 PV (1,1),M2 PV (1,2),M2 PV (2,1),M2 PV (2,4),M2 PV (3,0),M2 PV (3,1),M2 PV (5,2)],M2 PV (0,0),B2 (6,6) [(1,0),(2,0),(4,1),(4,2),(3,5),(4,5),(5,0),(5,1),(4,4),(5,4),(1,4),(1,5),(2,3),(3,3),(0,0),(0,1)] PH),([M2 PH (0,2),M2 PH (0,3),M2 PH (1,1),M2 PH (1,2),M2 PH (2,1),M2 PH (2,2),M2 PH (2,4),M2 PH (3,0),M2 PH (4,3)],M2 PH (4,3),B2 (6,6) [(1,0),(2,0),(4,1),(4,2),(3,5),(4,5),(5,0),(5,1),(4,4),(5,4),(1,4),(1,5),(2,3),(3,3),(0,0),(0,1),(4,3),(5,3)] PV),([M2 PV (0,2),M2 PV (0,3),M2 PV (0,4),M2 PV (1,1),M2 PV (1,2),M2 PV (2,1),M2 PV (2,4),M2 PV (3,0),M2 PV (3,1)],M2 PV (2,1),B2 (6,6) [(1,0),(2,0),(4,1),(4,2),(3,5),(4,5),(5,0),(5,1),(4,4),(5,4),(1,4),(1,5),(2,3),(3,3),(0,0),(0,1),(4,3),(5,3),(2,1),(2,2)] PH),([M2 PH (0,2),M2 PH (0,3),M2 PH (2,4),M2 PH (3,0)],M2 PH (0,3),B2 (6,6) [(1,0),(2,0),(4,1),(4,2),(3,5),(4,5),(5,0),(5,1),(4,4),(5,4),(1,4),(1,5),(2,3),(3,3),(0,0),(0,1),(4,3),(5,3),(2,1),(2,2),(0,3),(1,3)] PV),([M2 PV (0,4),M2 PV (1,1),M2 PV (2,4),M2 PV (3,0),M2 PV (3,1)],M2 PV (3,1),B2 (6,6) [(1,0),(2,0),(4,1),(4,2),(3,5),(4,5),(5,0),(5,1),(4,4),(5,4),(1,4),(1,5),(2,3),(3,3),(0,0),(0,1),(4,3),(5,3),(2,1),(2,2),(0,3),(1,3),(3,1),(3,2)] PH),([M2 PH (0,2),M2 PH (2,4),M2 PH (3,0)],M2 PH (3,0),B2 (6,6) [(1,0),(2,0),(4,1),(4,2),(3,5),(4,5),(5,0),(5,1),(4,4),(5,4),(1,4),(1,5),(2,3),(3,3),(0,0),(0,1),(4,3),(5,3),(2,1),(2,2),(0,3),(1,3),(3,1),(3,2),(3,0),(4,0)] PV),([M2 PV (0,4),M2 PV (1,1),M2 PV (2,4)],M2 PV (0,4),B2 (6,6) [(1,0),(2,0),(4,1),(4,2),(3,5),(4,5),(5,0),(5,1),(4,4),(5,4),(1,4),(1,5),(2,3),(3,3),(0,0),(0,1),(4,3),(5,3),(2,1),(2,2),(0,3),(1,3),(3,1),(3,2),(3,0),(4,0),(0,4),(0,5)] PH),([M2 PH (0,2),M2 PH (2,4)],M2 PH (2,4),B2 (6,6) [(1,0),(2,0),(4,1),(4,2),(3,5),(4,5),(5,0),(5,1),(4,4),(5,4),(1,4),(1,5),(2,3),(3,3),(0,0),(0,1),(4,3),(5,3),(2,1),(2,2),(0,3),(1,3),(3,1),(3,2),(3,0),(4,0),(0,4),(0,5),(2,4),(3,4)] PV),([M2 PV (1,1)],M2 PV (1,1),B2 (6,6) [(1,0),(2,0),(4,1),(4,2),(3,5),(4,5),(5,0),(5,1),(4,4),(5,4),(1,4),(1,5),(2,3),(3,3),(0,0),(0,1),(4,3),(5,3),(2,1),(2,2),(0,3),(1,3),(3,1),(3,2),(3,0),(4,0),(0,4),(0,5),(2,4),(3,4),(1,1),(1,2)] PH)])
  , -- randomtracefromboard_5_1_out !! 7
    (B2 (7,7) [(0,6),(1,6),(1,2),(1,3)] PH,[([M2 PH (0,0),M2 PH (0,1),M2 PH (0,4),M2 PH (0,5),M2 PH (1,0),M2 PH (1,1),M2 PH (1,4),M2 PH (1,5),M2 PH (2,0),M2 PH (2,1),M2 PH (2,2),M2 PH (2,3),M2 PH (2,4),M2 PH (2,5),M2 PH (2,6),M2 PH (3,0),M2 PH (3,1),M2 PH (3,2),M2 PH (3,3),M2 PH (3,4),M2 PH (3,5),M2 PH (3,6),M2 PH (4,0),M2 PH (4,1),M2 PH (4,2),M2 PH (4,3),M2 PH (4,4),M2 PH (4,5),M2 PH (4,6),M2 PH (5,0),M2 PH (5,1),M2 PH (5,2),M2 PH (5,3),M2 PH (5,4),M2 PH (5,5),M2 PH (5,6)],M2 PH (4,1),B2 (7,7) [(0,6),(1,6),(1,2),(1,3),(4,1),(5,1)] PV),([M2 PV (0,0),M2 PV (0,1),M2 PV (0,2),M2 PV (0,3),M2 PV (0,4),M2 PV (1,0),M2 PV (1,4),M2 PV (2,0),M2 PV (2,1),M2 PV (2,2),M2 PV (2,3),M2 PV (2,4),M2 PV (2,5),M2 PV (3,0),M2 PV (3,1),M2 PV (3,2),M2 PV (3,3),M2 PV (3,4),M2 PV (3,5),M2 PV (4,2),M2 PV (4,3),M2 PV (4,4),M2 PV (4,5),M2 PV (5,2),M2 PV (5,3),M2 PV (5,4),M2 PV (5,5),M2 PV (6,0),M2 PV (6,1),M2 PV (6,2),M2 PV (6,3),M2 PV (6,4),M2 PV (6,5)],M2 PV (6,0),B2 (7,7) [(0,6),(1,6),(1,2),(1,3),(4,1),(5,1),(6,0),(6,1)] PH),([M2 PH (0,0),M2 PH (0,1),M2 PH (0,4),M2 PH (0,5),M2 PH (1,0),M2 PH (1,1),M2 PH (1,4),M2 PH (1,5),M2 PH (2,0),M2 PH (2,1),M2 PH (2,2),M2 PH (2,3),M2 PH (2,4),M2 PH (2,5),M2 PH (2,6),M2 PH (3,0),M2 PH (3,2),M2 PH (3,3),M2 PH (3,4),M2 PH (3,5),M2 PH (3,6),M2 PH (4,0),M2 PH (4,2),M2 PH (4,3),M2 PH (4,4),M2 PH (4,5),M2 PH (4,6),M2 PH (5,2),M2 PH (5,3),M2 PH (5,4),M2 PH (5,5),M2 PH (5,6)],M2 PH (3,0),B2 (7,7) [(0,6),(1,6),(1,2),(1,3),(4,1),(5,1),(6,0),(6,1),(3,0),(4,0)] PV),([M2 PV (0,0),M2 PV (0,1),M2 PV (0,2),M2 PV (0,3),M2 PV (0,4),M2 PV (1,0),M2 PV (1,4),M2 PV (2,0),M2 PV (2,1),M2 PV (2,2),M2 PV (2,3),M2 PV (2,4),M2 PV (2,5),M2 PV (3,1),M2 PV (3,2),M2 PV (3,3),M2 PV (3,4),M2 PV (3,5),M2 PV (4,2),M2 PV (4,3),M2 PV (4,4),M2 PV (4,5),M2 PV (5,2),M2 PV (5,3),M2 PV (5,4),M2 PV (5,5),M2 PV (6,2),M2 PV (6,3),M2 PV (6,4),M2 PV (6,5)],M2 PV (5,4),B2 (7,7) [(0,6),(1,6),(1,2),(1,3),(4,1),(5,1),(6,0),(6,1),(3,0),(4,0),(5,4),(5,5)] PH),([M2 PH (0,0),M2 PH (0,1),M2 PH (0,4),M2 PH (0,5),M2 PH (1,0),M2 PH (1,1),M2 PH (1,4),M2 PH (1,5),M2 PH (2,1),M2 PH (2,2),M2 PH (2,3),M2 PH (2,4),M2 PH (2,5),M2 PH (2,6),M2 PH (3,2),M2 PH (3,3),M2 PH (3,4),M2 PH (3,5),M2 PH (3,6),M2 PH (4,2),M2 PH (4,3),M2 PH (4,6),M2 PH (5,2),M2 PH (5,3),M2 PH (5,6)],M2 PH (1,1),B2 (7,7) [(0,6),(1,6),(1,2),(1,3),(4,1),(5,1),(6,0),(6,1),(3,0),(4,0),(5,4),(5,5),(1,1),(2,1)] PV),([M2 PV (0,0),M2 PV (0,1),M2 PV (0,2),M2 PV (0,3),M2 PV (0,4),M2 PV (1,4),M2 PV (2,2),M2 PV (2,3),M2 PV (2,4),M2 PV (2,5),M2 PV (3,1),M2 PV (3,2),M2 PV (3,3),M2 PV (3,4),M2 PV (3,5),M2 PV (4,2),M2 PV (4,3),M2 PV (4,4),M2 PV (4,5),M2 PV (5,2),M2 PV (6,2),M2 PV (6,3),M2 PV (6,4),M2 PV (6,5)],M2 PV (4,3),B2 (7,7) [(0,6),(1,6),(1,2),(1,3),(4,1),(5,1),(6,0),(6,1),(3,0),(4,0),(5,4),(5,5),(1,1),(2,1),(4,3),(4,4)] PH),([M2 PH (0,0),M2 PH (0,4),M2 PH (0,5),M2 PH (1,0),M2 PH (1,4),M2 PH (1,5),M2 PH (2,2),M2 PH (2,3),M2 PH (2,4),M2 PH (2,5),M2 PH (2,6),M2 PH (3,2),M2 PH (3,5),M2 PH (3,6),M2 PH (4,2),M2 PH (4,6),M2 PH (5,2),M2 PH (5,3),M2 PH (5,6)],M2 PH (4,2),B2 (7,7) [(0,6),(1,6),(1,2),(1,3),(4,1),(5,1),(6,0),(6,1),(3,0),(4,0),(5,4),(5,5),(1,1),(2,1),(4,3),(4,4),(4,2),(5,2)] PV),([M2 PV (0,0),M2 PV (0,1),M2 PV (0,2),M2 PV (0,3),M2 PV (0,4),M2 PV (1,4),M2 PV (2,2),M2 PV (2,3),M2 PV (2,4),M2 PV (2,5),M2 PV (3,1),M2 PV (3,2),M2 PV (3,3),M2 PV (3,4),M2 PV (3,5),M2 PV (4,5),M2 PV (6,2),M2 PV (6,3),M2 PV (6,4),M2 PV (6,5)],M2 PV (0,0),B2 (7,7) [(0,6),(1,6),(1,2),(1,3),(4,1),(5,1),(6,0),(6,1),(3,0),(4,0),(5,4),(5,5),(1,1),(2,1),(4,3),(4,4),(4,2),(5,2),(0,0),(0,1)] PH),([M2 PH (0,4),M2 PH (0,5),M2 PH (1,0),M2 PH (1,4),M2 PH (1,5),M2 PH (2,2),M2 PH (2,3),M2 PH (2,4),M2 PH (2,5),M2 PH (2,6),M2 PH (3,5),M2 PH (3,6),M2 PH (4,6),M2 PH (5,3),M2 PH (5,6)],M2 PH (1,0),B2 (7,7) [(0,6),(1,6),(1,2),(1,3),(4,1),(5,1),(6,0),(6,1),(3,0),(4,0),(5,4),(5,5),(1,1),(2,1),(4,3),(4,4),(4,2),(5,2),(0,0),(0,1),(1,0),(2,0)] PV),([M2 PV (0,2),M2 PV (0,3),M2 PV (0,4),M2 PV (1,4),M2 PV (2,2),M2 PV (2,3),M2 PV (2,4),M2 PV (2,5),M2 PV (3,1),M2 PV (3,2),M2 PV (3,3),M2 PV (3,4),M2 PV (3,5),M2 PV (4,5),M2 PV (6,2),M2 PV (6,3),M2 PV (6,4),M2 PV (6,5)],M2 PV (2,4),B2 (7,7) [(0,6),(1,6),(1,2),(1,3),(4,1),(5,1),(6,0),(6,1),(3,0),(4,0),(5,4),(5,5),(1,1),(2,1),(4,3),(4,4),(4,2),(5,2),(0,0),(0,1),(1,0),(2,0),(2,4),(2,5)] PH),([M2 PH (0,4),M2 PH (0,5),M2 PH (2,2),M2 PH (2,3),M2 PH (2,6),M2 PH (3,5),M2 PH (3,6),M2 PH (4,6),M2 PH (5,3),M2 PH (5,6)],M2 PH (0,5),B2 (7,7) [(0,6),(1,6),(1,2),(1,3),(4,1),(5,1),(6,0),(6,1),(3,0),(4,0),(5,4),(5,5),(1,1),(2,1),(4,3),(4,4),(4,2),(5,2),(0,0),(0,1),(1,0),(2,0),(2,4),(2,5),(0,5),(1,5)] PV),([M2 PV (0,2),M2 PV (0,3),M2 PV (2,2),M2 PV (3,1),M2 PV (3,2),M2 PV (3,3),M2 PV (3,4),M2 PV (3,5),M2 PV (4,5),M2 PV (6,2),M2 PV (6,3),M2 PV (6,4),M2 PV (6,5)],M2 PV (6,5),B2 (7,7) [(0,6),(1,6),(1,2),(1,3),(4,1),(5,1),(6,0),(6,1),(3,0),(4,0),(5,4),(5,5),(1,1),(2,1),(4,3),(4,4),(4,2),(5,2),(0,0),(0,1),(1,0),(2,0),(2,4),(2,5),(0,5),(1,5),(6,5),(6,6)] PH),([M2 PH (0,4),M2 PH (2,2),M2 PH (2,3),M2 PH (2,6),M2 PH (3,5),M2 PH (3,6),M2 PH (4,6),M2 PH (5,3)],M2 PH (2,2),B2 (7,7) [(0,6),(1,6),(1,2),(1,3),(4,1),(5,1),(6,0),(6,1),(3,0),(4,0),(5,4),(5,5),(1,1),(2,1),(4,3),(4,4),(4,2),(5,2),(0,0),(0,1),(1,0),(2,0),(2,4),(2,5),(0,5),(1,5),(6,5),(6,6),(2,2),(3,2)] PV),([M2 PV (0,2),M2 PV (0,3),M2 PV (3,3),M2 PV (3,4),M2 PV (3,5),M2 PV (4,5),M2 PV (6,2),M2 PV (6,3)],M2 PV (6,3),B2 (7,7) [(0,6),(1,6),(1,2),(1,3),(4,1),(5,1),(6,0),(6,1),(3,0),(4,0),(5,4),(5,5),(1,1),(2,1),(4,3),(4,4),(4,2),(5,2),(0,0),(0,1),(1,0),(2,0),(2,4),(2,5),(0,5),(1,5),(6,5),(6,6),(2,2),(3,2),(6,3),(6,4)] PH),([M2 PH (0,4),M2 PH (2,3),M2 PH (2,6),M2 PH (3,5),M2 PH (3,6),M2 PH (4,6)],M2 PH (2,6),B2 (7,7) [(0,6),(1,6),(1,2),(1,3),(4,1),(5,1),(6,0),(6,1),(3,0),(4,0),(5,4),(5,5),(1,1),(2,1),(4,3),(4,4),(4,2),(5,2),(0,0),(0,1),(1,0),(2,0),(2,4),(2,5),(0,5),(1,5),(6,5),(6,6),(2,2),(3,2),(6,3),(6,4),(2,6),(3,6)] PV),([M2 PV (0,2),M2 PV (0,3),M2 PV (3,3),M2 PV (3,4),M2 PV (4,5)],M2 PV (4,5),B2 (7,7) [(0,6),(1,6),(1,2),(1,3),(4,1),(5,1),(6,0),(6,1),(3,0),(4,0),(5,4),(5,5),(1,1),(2,1),(4,3),(4,4),(4,2),(5,2),(0,0),(0,1),(1,0),(2,0),(2,4),(2,5),(0,5),(1,5),(6,5),(6,6),(2,2),(3,2),(6,3),(6,4),(2,6),(3,6),(4,5),(4,6)] PH),([M2 PH (0,4),M2 PH (2,3)],M2 PH (2,3),B2 (7,7) [(0,6),(1,6),(1,2),(1,3),(4,1),(5,1),(6,0),(6,1),(3,0),(4,0),(5,4),(5,5),(1,1),(2,1),(4,3),(4,4),(4,2),(5,2),(0,0),(0,1),(1,0),(2,0),(2,4),(2,5),(0,5),(1,5),(6,5),(6,6),(2,2),(3,2),(6,3),(6,4),(2,6),(3,6),(4,5),(4,6),(2,3),(3,3)] PV),([M2 PV (0,2),M2 PV (0,3),M2 PV (3,4)],M2 PV (0,3),B2 (7,7) [(0,6),(1,6),(1,2),(1,3),(4,1),(5,1),(6,0),(6,1),(3,0),(4,0),(5,4),(5,5),(1,1),(2,1),(4,3),(4,4),(4,2),(5,2),(0,0),(0,1),(1,0),(2,0),(2,4),(2,5),(0,5),(1,5),(6,5),(6,6),(2,2),(3,2),(6,3),(6,4),(2,6),(3,6),(4,5),(4,6),(2,3),(3,3),(0,3),(0,4)] PH)])
  , -- randomtracefromboard_5_1_out !! 8
    (B2 (5,6) [(0,3),(1,3),(4,3),(4,4),(0,5),(1,5),(3,2),(3,3),(2,0),(3,0),(4,1),(4,2),(2,5),(3,5),(0,1),(0,2),(1,2),(2,2),(1,0),(1,1)] PH,[([M2 PH (0,4),M2 PH (1,4),M2 PH (2,1),M2 PH (2,4)],M2 PH (2,1),B2 (5,6) [(0,3),(1,3),(4,3),(4,4),(0,5),(1,5),(3,2),(3,3),(2,0),(3,0),(4,1),(4,2),(2,5),(3,5),(0,1),(0,2),(1,2),(2,2),(1,0),(1,1),(2,1),(3,1)] PV),([M2 PV (2,3)],M2 PV (2,3),B2 (5,6) [(0,3),(1,3),(4,3),(4,4),(0,5),(1,5),(3,2),(3,3),(2,0),(3,0),(4,1),(4,2),(2,5),(3,5),(0,1),(0,2),(1,2),(2,2),(1,0),(1,1),(2,1),(3,1),(2,3),(2,4)] PH),([M2 PH (0,4)],M2 PH (0,4),B2 (5,6) [(0,3),(1,3),(4,3),(4,4),(0,5),(1,5),(3,2),(3,3),(2,0),(3,0),(4,1),(4,2),(2,5),(3,5),(0,1),(0,2),(1,2),(2,2),(1,0),(1,1),(2,1),(3,1),(2,3),(2,4),(0,4),(1,4)] PV)])
  , -- randomtracefromboard_5_1_out !! 9
    (B2 (4,8) [(0,5),(1,5)] PV,[([M2 PV (0,0),M2 PV (0,1),M2 PV (0,2),M2 PV (0,3),M2 PV (0,6),M2 PV (1,0),M2 PV (1,1),M2 PV (1,2),M2 PV (1,3),M2 PV (1,6),M2 PV (2,0),M2 PV (2,1),M2 PV (2,2),M2 PV (2,3),M2 PV (2,4),M2 PV (2,5),M2 PV (2,6),M2 PV (3,0),M2 PV (3,1),M2 PV (3,2),M2 PV (3,3),M2 PV (3,4),M2 PV (3,5),M2 PV (3,6)],M2 PV (2,1),B2 (4,8) [(0,5),(1,5),(2,1),(2,2)] PH),([M2 PH (0,0),M2 PH (0,1),M2 PH (0,2),M2 PH (0,3),M2 PH (0,4),M2 PH (0,6),M2 PH (0,7),M2 PH (1,0),M2 PH (1,3),M2 PH (1,4),M2 PH (1,6),M2 PH (1,7),M2 PH (2,0),M2 PH (2,3),M2 PH (2,4),M2 PH (2,5),M2 PH (2,6),M2 PH (2,7)],M2 PH (1,4),B2 (4,8) [(0,5),(1,5),(2,1),(2,2),(1,4),(2,4)] PV),([M2 PV (0,0),M2 PV (0,1),M2 PV (0,2),M2 PV (0,3),M2 PV (0,6),M2 PV (1,0),M2 PV (1,1),M2 PV (1,2),M2 PV (1,6),M2 PV (2,5),M2 PV (2,6),M2 PV (3,0),M2 PV (3,1),M2 PV (3,2),M2 PV (3,3),M2 PV (3,4),M2 PV (3,5),M2 PV (3,6)],M2 PV (0,0),B2 (4,8) [(0,5),(1,5),(2,1),(2,2),(1,4),(2,4),(0,0),(0,1)] PH),([M2 PH (0,2),M2 PH (0,3),M2 PH (0,6),M2 PH (0,7),M2 PH (1,0),M2 PH (1,3),M2 PH (1,6),M2 PH (1,7),M2 PH (2,0),M2 PH (2,3),M2 PH (2,5),M2 PH (2,6),M2 PH (2,7)],M2 PH (2,3),B2 (4,8) [(0,5),(1,5),(2,1),(2,2),(1,4),(2,4),(0,0),(0,1),(2,3),(3,3)] PV),([M2 PV (0,2),M2 PV (0,3),M2 PV (0,6),M2 PV (1,0),M2 PV (1,1),M2 PV (1,2),M2 PV (1,6),M2 PV (2,5),M2 PV (2,6),M2 PV (3,0),M2 PV (3,1),M2 PV (3,4),M2 PV (3,5),M2 PV (3,6)],M2 PV (0,6),B2 (4,8) [(0,5),(1,5),(2,1),(2,2),(1,4),(2,4),(0,0),(0,1),(2,3),(3,3),(0,6),(0,7)] PH),([M2 PH (0,2),M2 PH (0,3),M2 PH (1,0),M2 PH (1,6),M2 PH (1,7),M2 PH (2,0),M2 PH (2,5),M2 PH (2,6),M2 PH (2,7)],M2 PH (1,7),B2 (4,8) [(0,5),(1,5),(2,1),(2,2),(1,4),(2,4),(0,0),(0,1),(2,3),(3,3),(0,6),(0,7),(1,7),(2,7)] PV),([M2 PV (0,2),M2 PV (0,3),M2 PV (1,0),M2 PV (1,1),M2 PV (1,2),M2 PV (2,5),M2 PV (3,0),M2 PV (3,1),M2 PV (3,4),M2 PV (3,5),M2 PV (3,6)],M2 PV (1,1),B2 (4,8) [(0,5),(1,5),(2,1),(2,2),(1,4),(2,4),(0,0),(0,1),(2,3),(3,3),(0,6),(0,7),(1,7),(2,7),(1,1),(1,2)] PH),([M2 PH (0,3),M2 PH (1,0),M2 PH (1,6),M2 PH (2,0),M2 PH (2,5),M2 PH (2,6)],M2 PH (2,6),B2 (4,8) [(0,5),(1,5),(2,1),(2,2),(1,4),(2,4),(0,0),(0,1),(2,3),(3,3),(0,6),(0,7),(1,7),(2,7),(1,1),(1,2),(2,6),(3,6)] PV),([M2 PV (0,2),M2 PV (0,3),M2 PV (3,0),M2 PV (3,1),M2 PV (3,4)],M2 PV (3,1),B2 (4,8) [(0,5),(1,5),(2,1),(2,2),(1,4),(2,4),(0,0),(0,1),(2,3),(3,3),(0,6),(0,7),(1,7),(2,7),(1,1),(1,2),(2,6),(3,6),(3,1),(3,2)] PH),([M2 PH (0,3),M2 PH (1,0),M2 PH (2,0),M2 PH (2,5)],M2 PH (1,0),B2 (4,8) [(0,5),(1,5),(2,1),(2,2),(1,4),(2,4),(0,0),(0,1),(2,3),(3,3),(0,6),(0,7),(1,7),(2,7),(1,1),(1,2),(2,6),(3,6),(3,1),(3,2),(1,0),(2,0)] PV),([M2 PV (0,2),M2 PV (0,3),M2 PV (3,4)],M2 PV (0,3),B2 (4,8) [(0,5),(1,5),(2,1),(2,2),(1,4),(2,4),(0,0),(0,1),(2,3),(3,3),(0,6),(0,7),(1,7),(2,7),(1,1),(1,2),(2,6),(3,6),(3,1),(3,2),(1,0),(2,0),(0,3),(0,4)] PH),([M2 PH (2,5)],M2 PH (2,5),B2 (4,8) [(0,5),(1,5),(2,1),(2,2),(1,4),(2,4),(0,0),(0,1),(2,3),(3,3),(0,6),(0,7),(1,7),(2,7),(1,1),(1,2),(2,6),(3,6),(3,1),(3,2),(1,0),(2,0),(0,3),(0,4),(2,5),(3,5)] PV)])
  , -- randomtracefromboard_5_1_out !! 10
    (B2 (9,4) [(5,2),(6,2),(3,2),(3,3),(0,0),(1,0),(5,0),(5,1),(0,2),(1,2),(4,0),(4,1),(4,3),(5,3),(2,2),(2,3),(1,1),(2,1),(7,0),(7,1),(2,0),(3,0),(6,0),(6,1),(6,3),(7,3),(8,0),(8,1)] PH,[([M2 PH (0,3),M2 PH (7,2)],M2 PH (7,2),B2 (9,4) [(5,2),(6,2),(3,2),(3,3),(0,0),(1,0),(5,0),(5,1),(0,2),(1,2),(4,0),(4,1),(4,3),(5,3),(2,2),(2,3),(1,1),(2,1),(7,0),(7,1),(2,0),(3,0),(6,0),(6,1),(6,3),(7,3),(8,0),(8,1),(7,2),(8,2)] PV)])
  ]

-- Inputs and correct outputs for enoughRandomMoves
enoughrandommoves_7_1_in = [
    -- enoughrandommoves_7_1_in !! 0
    (B2 (3,3) [] PH,0)
  , -- enoughrandommoves_7_1_in !! 1
    (B2 (3,3) [] PH,-1)
  , -- enoughrandommoves_7_1_in !! 2
    (B2 (3,3) [] PH,0)
  , -- enoughrandommoves_7_1_in !! 3
    (B2 (4,4) [] PH,1)
  , -- enoughrandommoves_7_1_in !! 4
    (B2 (3,4) [] PH,-2)
  , -- enoughrandommoves_7_1_in !! 5
    (B2 (6,6) [] PH,-3)
  , -- enoughrandommoves_7_1_in !! 6
    (B2 (6,6) [] PH,-2)
  , -- enoughrandommoves_7_1_in !! 7
    (B2 (6,6) [] PH,-1)
  , -- enoughrandommoves_7_1_in !! 8
    (B2 (6,6) [] PH,6)
  , -- enoughrandommoves_7_1_in !! 9
    (B2 (3,3) [] PH,-2)
  , -- enoughrandommoves_7_1_in !! 10
    (B2 (4,10) [] PH,-7)
  ]
enoughrandommoves_7_1_out = [
    -- enoughrandommoves_7_1_out !! 0
    True
  , -- enoughrandommoves_7_1_out !! 1
    True
  , -- enoughrandommoves_7_1_out !! 2
    True
  , -- enoughrandommoves_7_1_out !! 3
    True
  , -- enoughrandommoves_7_1_out !! 4
    True
  , -- enoughrandommoves_7_1_out !! 5
    True
  , -- enoughrandommoves_7_1_out !! 6
    True
  , -- enoughrandommoves_7_1_out !! 7
    True
  , -- enoughrandommoves_7_1_out !! 8
    True
  , -- enoughrandommoves_7_1_out !! 9
    True
  , -- enoughrandommoves_7_1_out !! 10
    True
  ]


-- Common part follows.

timeOutTime :: Num a => a
timeOutTime = 10^6 * 60 -- One minute

unitTest :: (Eq b, Show a, Show b) => String -> (a -> b) -> a -> b -> IO Bool
unitTest name f x spec = do
  -- Using QuickCheck here for convenience (since it catches exceptions and
  -- timeouts for us)
  result <- quickCheckWithResult stdArgs {chatty = False}
          $ timeoutProp (f x == spec)

  case result of
    Failure {} -> do
      putStrLn "*** Failed!"
      putStrLn $ "Input: " ++ show x
      catch (timeoutOutput $ putStrLn $ "Output: " ++ show (f x))
            (\msg -> putStrLn $ "Exception: " ++ show (msg :: SomeException))
      putStrLn $ "Expected output: " ++ show spec
      return False

    GaveUp {} -> do
      putStrLn "Gave up."
      return False
    _ -> return True

  where
    timeoutOutput :: IO a -> IO a
    timeoutOutput action = do
        res <- timeout timeOutTime action

        case res of
            Just result -> return result
            Nothing     -> error "<<timeout>>"

unitTests :: (Eq b, Show a, Show b) => String -> (a -> b) -> [a] -> [b] -> IO Bool
unitTests name f inputs spec = do
  putStr $ "  [testing] " ++ name ++ "... "
  res <- run $ zipWith (unitTest name f) inputs spec

  when res $ putStrLn "ok."

  return res

  where
    run [] = return True
    run (x:xs) = do
      r <- x
      if r then run xs
      else return False

quickTest :: Testable prop => String -> prop -> IO Bool
quickTest name = quickTestWith name stdArgs

quickTestWith :: Testable prop => String -> Args -> prop -> IO Bool
quickTestWith name args0 prop = do
  putStr $ "  [checking] " ++ name ++ "... "
  let args = args0 {chatty = False}
  result <- quickCheckWithResult args
          $ timeoutProp prop

  if not (isSuccess result)
    then do
        putStrLn "eh, nope."
        putStrLn (output result)
        return False
    else do
        putStrLn "ok."
        return True

timeoutProp :: Testable prop => prop -> Property
timeoutProp = within timeOutTime

-- Gives full mark only if all parts of the exercise succeded. Otherwise gives
-- 0 points.
defaultMarker :: String -> Int -> [Bool] -> Int
defaultMarker _ points bs
    | and bs    = points
    | otherwise = 0

addPoints :: IORef Int -> Int -> IO ()
addPoints var points = modifyIORef' var (+ points)