concrete FoodIta of Food = {
  lincat
    Comment, Item, Kind, Quality = Str ;
  lin
    Pred item quality = item ++ "es" ++ quality ;
    This kind = "esta" ++ kind ;
    That kind = "ese" ++ kind ;
    Mod quality kind = quality ++ kind ;
    Wine = "vino" ;
    Cheese = "queso" ;
    Fish = "pez" ;
    Very quality = "muy" ++ quality ;
    Fresh = "fresco" ;
    Warm = "calentar" ;
    Italian = "Italiano" ;
    Expensive = "costoso" ;
    Delicious = "delicioso" ;
    Boring = "aburrido" ;
}
