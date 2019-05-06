concrete FoodPol of Food = {
  lincat
    Comment, Item, Kind, Quality = Str ;
  lin
    Pred item quality =	item ++	"jest" ++	quality	;
    This kind =	      "to" ++ kind ;
    That kind =	      "ten" ++ kind ;
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
}