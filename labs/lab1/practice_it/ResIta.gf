resource ResIta = open Prelude in {

    Number = Sg | Pl ;
    Gender = Masc | Fem ;
    Case   = Nom | Acc | Dat ; 
    Aux    = Avere | Essere ; 
    Tense  = Pres | Perf ;
    Person = Per1 | Per2 | Per 3 ;

    Agr = Ag Gender Number Person ;

    Vform = Vinf | VPres Number Person | VPart Gender Number ;
} 