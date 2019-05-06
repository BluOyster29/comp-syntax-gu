concrete FoodPol of Food = {
  lincat
    Comment, Item, Kind, Quality, Signal = Str ;
  lin
    Pred item quality signal =	item ++	signal ++ quality;
    This kind =	"to" ++ kind ;
    That kind =	"ten" ++ kind ;
    Mod quality kind = quality ++ kind ;
    Wine = "wino" ;
    Cheese = "ser" ;
    Fish = "ryba" ;
    Very quality = "bardzo" ++ quality ;
    Warm = "ciepły" ;
    Fresh = "świeży" ;
    Italian = "Włoski" ;
    Expensive = "drogi" ;
    Delicious = "pszne" ;
    Boring = "nudny" ;
    Pos = "jest" ;
    Neg = "nie jest" ;
}