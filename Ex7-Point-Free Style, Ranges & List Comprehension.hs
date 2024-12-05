point-free style & list comprehension exercises

1)write this function in point-free style:
contains1 = \x l -> any (x<) l
hint: any :: (a -> Bool) -> [a] -> Bool

    contains1 :: Ord a => a -> [a] -> Bool
    contains1 = any . (<)

2)write this function in point-free style:
contains2 = \l x -> any (x<) l
hint: use flip function

    contains2 :: Ord a => [a] -> a -> Bool
    contains2 = flip any . (<)

3)write function len_comp that uses list comprehension to compute the length of the given list
Function len_comp using list comprehension:
len_comp [2,6,1,4,0,9]
=6
hint: use sum function

    len_comp :: [a] -> Int
    len_comp = sum . map (const 1)

4.)rewrite
[(x,y) | x <- [2,3,5], y <- [1,2,4],
        even $ x+y]
without using list comprehension
be careful with ordering
hint: (,) is a (curried) function that constructs a pair
(,) :: a -> b -> (a, b)
hint: use map and flip wisely


    pairList :: [(Int, Int)]
    pairList = filter (even . uncurry (+)) $ concatMap (\x -> map (x,) [1,2,4]) [2,3,5]




