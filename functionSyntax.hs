lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY NUMBER SEVEN!!!"
lucky x = "Sorry, that is not a lucky number!!!"

sayMe :: (Integral a) => a -> String
sayMe 1 = "ONE"
sayMe 2 = "TWO"
sayMe 3 = "THREE"
sayMe 4 = "FOUR"
sayMe 5 = "FIVE"
sayMe x = "Not in range [1, 5]!!!"

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial x = x * factorial (x - 1)

addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors (a, b) (c, d) = (a + c, b + d)

third :: (a, b, c) -> c
third (_, _, x) = x

head' :: [a] -> a
head' [] = error "Can't call head on an empty list, dummy!"
head' (x:_) = x

tell :: (Show a) => [a] -> String
tell [] = "The list is empty!"
tell (x:[]) = "The list has one element: " ++ show x
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y
tell (x:y:_) = "The list has more than two elements!"

length' :: [a] -> Integer
length' [] = 0
length' (_:xs) = 1 + length' xs

sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

capital :: String -> String
capital "" = error "Empty string, whoops!"
capital all@(x:xs) = "The first leter of " ++ all ++ " is " ++ [x]

myCompare :: (Ord a) => a -> a -> Ordering
x `myCompare` y
    | x > y     = GT
    | x < y     = LT
    | otherwise   = EQ 

bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height
    | bmi < 18.5    = "You're underweight, you emo, you!"
    | bmi < 25      = "You're supposedly normal. Pffft, I bet you're ugly!"  
    | bmi <= 30.0   = "You're fat! Lose some weight, fatty!"  
    | otherwise     = "You're a whale, congratulations!"
    where bmi = weight / height ^ 2
