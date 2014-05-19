doubleSmallNumber x = if x > 100
	then x
	else doubleMe x
doubleSmallNumber' x = (if x > 100 then x else x * 2) + 1
doubleMe x = x + x
doubleUs x y = doubleMe x + doubleMe y
concatUs list1 list2 = list1 ++ list2
addToHead x list = x : list 
valueAtIndex index list = list !! index