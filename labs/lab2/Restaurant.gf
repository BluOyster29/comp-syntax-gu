abstract Restaurant = {
    flags startcat = Phrase;

    cat 
        Phrase ;
        Order ; -- two pizzas and three beers
        Question ; -- do you have italian beer?
        Comment ;  -- this pizza is very good

        Item ; 
        Number ;
        Kind ; 

        Dish ;
        Quality ;

    fun
        order : Order -> Phrase ;
        question : Question -> Phrase ;
        comment : Comment -> Phrase ;
        
        numberKind : Number -> Kind -> Item ;
        qualityKind : Quality -> Kind -> Kind ; -- a kind can be modified with any number of qualities

        itemOrder : Item -> Order ; -- any item is an order 
        andOrder : Item -> Order -> Order ; -- adding an item to an order 
        this : Kind -> Dish ;
        that : Kind -> Dish ; 

        very : Quality -> Quality ; -- very very very good etc. 
        doYouHave : Kind -> Question ; -- do you have Italian Beer 

        isComment : Dish -> Quality -> Comment ; -- this dish is very good 
        isNotComment : Dish -> Quality -> Comment ; -- this dish is very good 

        iLikeComment : Dish -> Comment ; -- I like this dish
        iDontLikeComment : Dish -> Comment ;
        
        one,two,three : Number ;

        pizza, beer, taco, pasta : Kind; -- kinds of item 

        italian, good, delicious, horrible : Quality ; -- quality of a kind
}