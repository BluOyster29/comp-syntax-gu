abstract absLang = {

    cat
        C1 ; NP ; VP ; AP ; CN ; Det ; N ; A ; V ; V2 ;
    fun
        PredVP  : NP  -> VP -> C1 ; 
        ComplV2 : V2  -> NP -> VP ;
        DetCN   : Det -> CN -> NP ;
        ModCN   : CN  -> AP -> CN ;

        UseV    : V -> VP ;
        UseN    : N -> CN ; 
        UseA   : A -> AP ; 

        a_Det, the_Det : Det ; this_Det, these_Det : Det ; 
        i_NP, she_NP, we_NP : NP ;
}