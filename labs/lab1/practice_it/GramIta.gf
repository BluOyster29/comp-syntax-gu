concrete GramIta of absLang = open ResIta, Prelude in {

    lincat 
        VP = {v : Verb ; clit ; Str ; obj : Str} ;
        NP = {s : Case => {s : Str ; isClit : Bool} ; a : Agr} ;
        Det = {s : Gender => Case => Str ; n : Number} ;
        AP = {s : Gender => Number => Str ; isPre : Bool} ;

    lin 
        UseV v = {v ; clit, onj = []]} 
        
        ComplV2 = 
            let
                nps = np.s ! v2.c 
            in {
                v = {s = v2.s ; aux = v2.aux} ;
                clit = nps.clit ;
                obj = nps.obj
            }
        
        DetCn det cn = {
            s = \\c => {obj = det.s ! cn.g ! c ++ cn.s ! det.n ; clit = []} ;
            a = Ag cn.g det.n Per3
        } ;

        this_Det = adjDet (mkA "questo") Sg ;
        these_Det = adjDet (mkA "questo") Pl ;

        oper prepCase : Case -> Str = \ -> case c of {
            Dat => "a" ;
            _ => []
        } ;

        ModCN cn ap = {
            s = \\n => preOrPost ap.isPre (ap.s ! cn.g ! n) (cn.s ! n) ;
            g = cn.g 
        } ;

  
        
        

    
}