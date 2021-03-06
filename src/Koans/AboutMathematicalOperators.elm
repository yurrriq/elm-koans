module AboutMathematicalOperators exposing (..)

import ElmTest exposing (..)
import TestHelpers exposing (..)


testSuite =
  suite
    "About Mathematical Operators"
    [ test
        "negate gives the negative of a number"
        (assertEqual -3 (negate xNum))
    , test
        "abs gives the absolute value of a number"
        (assertEqual 3 (abs xNum))
    , test
        "sqrt gives the square root of a Float"
        (assertEqual 3.0 (sqrt xNum))
    , test
        "+ adds numbers"
        (assertEqual 3 (1 + xNum))
    , test
        "- subtracts numbers"
        (assertEqual 3 (7 - xNum))
    , test
        "* multiplies numbers"
        (assertEqual 6 (4 * xNum))
    , test
        "/ divides Floats"
        (assertEqual 2.5 (5 / xNum))
    , test
        "// divides Ints"
        (assertEqual 2 (5 // xNum))
    , test
        "rem gives the remainder after division"
        (assertEqual 2 (5 `rem` xNum))
    , test
        "% performs modular arithmetic (which is different)"
        (assertEqual (-1 % 5) xNum)
    , test
        "logBase returns the log of the value in the given base"
        (assertEqual (logBase 2 8) xNum)
    , test
        "clamp returns the value if it is between the given min and max"
        (assertEqual (clamp 1 10 5) xNum)
    , test
        "clamp returns the min value if the value is below the minimum"
        (assertEqual (clamp 1 10 -5) xNum)
    , test
        "clamp returns the max value if the value is above the maximum"
        (assertEqual (clamp 1 10 50) xNum)
    ]
