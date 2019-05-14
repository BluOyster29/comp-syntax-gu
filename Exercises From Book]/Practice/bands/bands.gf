abstract bands = {
  flags startcat = Comment ;
  cat 
    Comment ; Item ; Kind ; Quality ; Thing ; Signal ; Thing2 ; 
  fun
    Pred : Item -> Signal -> Thing2 -> Comment; 
    My : Kind -> Item ; 
    Mod : Quality -> Thing  -> Kind;
    Fav, L_Fav : Quality;  
    Pos, Neg : Signal ; 
    Band, Food, Country : Thing ; 
    Canada, Australia, KGALW, Bif, IDLES, Pizza, Chips : Thing2 ;
     
}