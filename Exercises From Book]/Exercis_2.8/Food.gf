abstract Food = {
  flags startcat = Comment ; 
  cat
    Comment ; Item ; Kind ; Quality ; Signal ;
  fun
    Pred : Item -> Quality -> Signal -> Comment ;
    This, That : Kind -> Item ;
    Mod : Quality -> Kind -> Kind ;
    Wine, Cheese, Fish : Kind ;
    Very : Quality -> Quality ;
    Fresh, Warm, Italian, 
    Expensive, Delicious, Boring : Quality ;
    Pos, Neg : Signal ;
    
}