module ChopTest where

import Test.HUnit
import Chop


-- Test Cases

test1 = TestCase (assertEqual "TestChop1" 0 (chop 1 [1, 3, 5]))
test2 = TestCase (assertEqual "TestChop2" 1 (chop 3 [1, 3, 5]))
test3 = TestCase (assertEqual "TestChop3" 2 (chop 5 [1, 3, 5]))
test4 = TestCase (assertEqual "TestChop4" (-1) (chop 0 [1, 3, 5]))
test5 = TestCase (assertEqual "TestChop5" (-1) (chop 2 [1, 3, 5]))
test6 = TestCase (assertEqual "TestChop6" (-1) (chop 4 [1, 3, 5]))
test7 = TestCase (assertEqual "TestChop7" (-1) (chop 6 [1, 3, 5]))

test8 = TestCase (assertEqual "TestChop8" (0)  (chop 1 [1, 3, 5, 7]))
test9 = TestCase (assertEqual "TestChop9" (1)  (chop 3 [1, 3, 5, 7]))
test10 = TestCase (assertEqual "TestChop10" (2)  (chop 5 [1, 3, 5, 7]))
test11 = TestCase (assertEqual "TestChop11" (3)  (chop 7 [1, 3, 5, 7]))
test12 = TestCase (assertEqual "TestChop12" (-1) (chop 0 [1, 3, 5, 7]))
test13 = TestCase (assertEqual "TestChop13" (-1) (chop 2 [1, 3, 5, 7]))
test14 = TestCase (assertEqual "TestChop14" (-1) (chop 4 [1, 3, 5, 7]))
test15 = TestCase (assertEqual "TestChop15" (-1) (chop 6 [1, 3, 5, 7]))
test16 = TestCase (assertEqual "TestChop16" (-1) (chop 8 [1, 3, 5, 7]))

tests = TestList [TestLabel "test1" test1, TestLabel "test2" test2, TestLabel "test3" test3, TestLabel "test4" test4, TestLabel "test5" test5, TestLabel "test6" test6, TestLabel "test7" test7, TestLabel "test8" test8, TestLabel "test9" test9, TestLabel "test10" test10, TestLabel "test11" test11, TestLabel "test12" test12, TestLabel "test13" test13, TestLabel "test14" test14, TestLabel "test15" test15, TestLabel "test16" test16]

runTests = runTestTT tests

