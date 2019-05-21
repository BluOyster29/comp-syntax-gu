incomplete concrete RestaurantFunctorEng of RestaurantFunctor = 
    
    open Syntax in {

    lincat 
        Phrase = Utt ; -- Utt are good start cats for phrases, quest comments can be utterances
        Order = NP ; -- two pizzas and three beers
        Question = QS ; -- question sentence
        Comment = S;  -- sentence
        
        Item = NP ; 
        Number = Card ; -- cardinal number
        Kind = CN ; -- common noun 

        Dish = NP ; -- should have det and noun so nounphrase
        Quality = AP ; -- Adjectival phrase

    lin
        -- need to make noun phrase into an utterance
        order or  = mkUtt or ;


        question qu = mkUtt qu ;
        comment co = mkUtt co ;
        
        numberKind nu ki = mkNP nu ki ;
        qualityKind qu ki = mkCN qu ki ; -- a kind can be modified with any number of qualities

        itemOrder it = it ; -- both preds are np so we can turn it into an item
        andOrder it or = mkNP and_Conj it or ; -- these all fit together, check api

        this ki = mkNP this_Det ki ;
        that ki = mkNP that_Det ki ; 

        very qu = mkAP very_AdA qu ; -- very very very good etc. 
        doYouHave ki = mkQS (mkQCl (mkCl you_NP have_V2(mkNP aPl_Det ki))) ; -- do you have Italian Beer 

        isComment di qu = mkS (mkCl di qu) ; -- this dish is very good 
        isNotComment di qu = mkS negativePol (mkCl di qu) ; -- this dish is very good 

        iLikeComment di = mkS (mkCl i_NP like_v2 di) ; -- I like this dish
        iDontLikeComment di = mkS negativePol (mkCl i_NP like_v2 di) ; -- I don't like
        
    oper
        like_v2 : V2 = mkV2 (mkV "like") ;

}