myRightTriangles = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], c^2 == a^2 + b^2, a + b + c == 24]
