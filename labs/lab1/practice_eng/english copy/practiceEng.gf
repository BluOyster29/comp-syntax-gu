--# -path=.:../abstract copy
concrete practiceEng of practice = open practiceRes, Prelude in {


  lincat
    Utt = {s : Str} ;
    Pol  = {s : Str ; isTrue : Bool} ; -- the s field is empty, but needed for parsing
    Temp = {s : Str ; isPres : Bool} ;
    
    S  = {s : Str} ;
    QS = {s : Str} ;
    Cl = {   -- word order is fixed in S and QS
      subj : Str ;                             -- subject
      verb : Bool => Bool => {fin,inf : Str} ; -- dep. on Pol,Temp, e.g. "does","sleep"
      compl : Str                              -- after verb: complement, adverbs
      } ;
    VP = {verb : GVerb ; compl : Str} ;
    NP = {s : Case => Str ; a : Agreement} ;
    Det = {s : Str ; n : Number} ;
    V = Verb ; 
    N = Noun ;



  lin

    UttNP np = {s = np.s ! Acc} ; -- Acc: produce "me" rather than "I"
    
    PredVP np vp = {
      subj = np.s ! Nom ;
      compl = vp.compl ;
      verb = \\plain,isPres => case <vp.verb.isAux, plain, isPres, np.a> of {

        -- non-auxiliary verbs, negative/question present: "does (not) drink" 
        <False,False,True,Agr Sg Per3> => {fin = "does" ; inf = vp.verb.s ! VF Inf} ;
        <False,False,True,_          > => {fin = "do"   ; inf = vp.verb.s ! VF Inf} ;
	
        -- non-auxiliary, plain present ; auxiliary, all present: "drinks", "is (not)"
        <_,_, True, Agr Sg Per1> => {fin = vp.verb.s ! PresSg1    ; inf = []} ;
        <_,_, True, Agr Sg Per3> => {fin = vp.verb.s ! VF PresSg3 ; inf = []} ;
        <_,_, True, _>           => {fin = vp.verb.s ! PresPl     ; inf = []} ;

        -- all verbs, past: "has (not) drunk", "has (not) been"
        <_,_, False,Agr Sg Per3> => {fin = "has"  ; inf = vp.verb.s ! VF PastPart} ;
        <_,_, False,_          > => {fin = "have" ; inf = vp.verb.s ! VF PastPart} 

        -- the negation word "not" is put in place in UseCl, UseQCl
      }
    } ;

    UseV v = {
      verb = verb2gverb v ;  -- lift ordinary verbs to generalized verbs
      compl = []
      } ;
      
    ComplV2 v2 np = {
      verb = verb2gverb v2 ;
      compl = v2.c ++ np.s ! Acc  -- NP object in the accusative, preposition first
      } ;
      
    UseAP ap = {
      verb = be_GVerb ;     -- the verb is the copula "be"
      compl = ap.s
      } ;
      
    UseNP np = {
      verb = be_GVerb ;
      compl = np.s ! Nom    -- NP complement is in the nominative
      } ;
      
    UseAdv adv = {
      verb = be_GVerb ;
      compl = adv.s
      } ;

    AdvVP vp adv =
      vp ** {compl = vp.compl ++ adv.s} ;

      
    UsePN pn = {
      s = \\_ => pn.s ;
      a = Agr Sg Per3
      } ;
      
    UsePron p = p ;  -- Pron is worst-case NP  
      
    MassNP cn = {
      s = \\_ => cn.s ! Sg ;
      a = Agr Sg Per3
      } ;
      
    a_Det = {s = pre {"a"|"e"|"i"|"o" => "an" ; _ => "a"} ; n = Sg} ; --- a/an can get wrong
    aPl_Det = {s = "" ; n = Pl} ;
    the_Det = {s = "the" ; n = Sg} ;
    thePl_Det = {s = "the" ; n = Pl} ;
    
    UseN n = n ;
    
    PositA a = a ;

    PrepNP prep np = {s = prep.s ++ np.s ! Acc} ;

    CoordS conj a b = {s = a.s ++ conj.s ++ b.s} ;
    
    PPos  = {s = [] ; isTrue = True} ;
    PNeg  = {s = [] ; isTrue = False} ;

    TSim  = {s = []    ; isPres = True} ;
    TAnt  = {s = []    ; isPres = False} ;

    and_Conj = {s = "and"} ;
    or_Conj = {s = "or"} ;

    every_Det = {s = "every" ; n = Sg} ;

    in_Prep = {s = "in"} ;
    on_Prep = {s = "on"} ;
    with_Prep = {s = "with"} ;

    i_Pron = {
      s = table {Nom => "I" ; Acc => "me"} ;
      a = Agr Sg Per1
      } ;
    youSg_Pron = {
      s = \\_ => "you" ;
      a = Agr Sg Per2
      } ;
    he_Pron = {
      s = table {Nom => "he" ; Acc => "him"} ;
      a = Agr Sg Per3
      } ;
      
    who_IP = {
      s =  "who" ;
    } ;
      

    she_Pron = {
      s = table {Nom => "she" ; Acc => "her"} ;
      a = Agr Sg Per3
      } ;

    we_Pron = {
      s = table {Nom => "we" ; Acc => "us"} ;
      a = Agr Pl Per1
      } ;

    youPl_Pron = {
      s = \\_ => "you" ;
      a = Agr Pl Per2
      } ;
    they_Pron = {
      s = table {Nom => "they" ; Acc => "them"} ;
      a = Agr Pl Per2
      } ;

    have_V2 = mkVerb "have" "has" "had" "had" "having" ** {c = []} ;

}
