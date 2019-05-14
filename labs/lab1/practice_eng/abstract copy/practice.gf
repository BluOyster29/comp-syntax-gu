abstract practice = {

-- collected from GF/lib/src/abstract/*.gf
-- the functions marked ---s are shortcuts
-- the leading comments, e.g. "-- Common", indicate the standard RGL module

  cat
  
-- Common
    Utt ;    -- sentence, question, word...         e.g. "be quiet"
    NP ;     -- noun phrase (subject or object)     e.g. "the red house"
    V ;      -- one-place verb                      e.g. "sleep" 
    N ;      -- common noun                         e.g. "house"
    PN ;     -- proper name                         e.g. "Paris"
    S ;      -- declarative sentence                e.g. "she lives here"
    VP ;     -- verb phrase                         e.g. "lives here"
    Cl ;     -- declarative clause, with all tenses e.g. "she looks at this"
    Det ;    -- determiner phrase                   e.g. "those"
    CN ;     -- common noun (without determiner)    e.g. "red house"
    Pol ;    -- polarity                            e.g. positive, negative


    
  fun
-- Phrase
    UttS      : S  -> Utt ;         -- John walks
    UttNP     : NP -> Utt ;         -- John
    UseV      : V   -> VP ;             -- sleep
    DetCN     : Det -> CN -> NP ;       -- the man
    UsePN     : PN -> NP ;              -- John
    a_Det     : Det ;                   -- indefinite singular ---s
    the_Det   : Det ;                   -- definite singular   ---s
    PPos      : Pol ;                   -- I sleep  [positive polarity]
    PNeg      : Pol ;                   -- I do not sleep [negative polarity]
    PredVP    : NP -> VP -> Cl ;            -- John walks / John does not walk

--    UttQS     : QS -> Utt ;         -- does John walk

--    UttAdv    : Adv -> Utt ;        -- in the house
--    UttImpSg  : Pol -> Imp -> Utt ; -- (do not) walk ----s

-- Sentence
--    UseCl     : Temp -> Pol -> Cl   -> S ;  -- John has not walked
--    UseQCl    : Temp -> Pol -> QCl  -> QS ; -- has John walked
--    QuestCl   : Cl -> QCl ;                 -- does John (not) walk
--    
--    ImpVP     : VP -> Imp ;                 -- walk / do not walk

-- Verb

--    ComplV2   : V2  -> NP -> VP ;       -- love it  ---s
--    UseAP     : AP  -> VP ;             -- be small ---s
--    UseNP     : NP  -> VP ;             -- be a man ---s
--    UseAdv    : Adv -> VP ;             -- be in the house ---s
--    AdvVP     : VP -> Adv -> VP ;       -- sleep here

-- Noun
    
--    UsePron   : Pron -> NP ;            -- he
--    MassNP    : CN -> NP ;              -- milk
    
--    aPl_Det   : Det ;                   -- indefinite plural   ---s

--    thePl_Det : Det ;                   -- definite plural     ---s
--    UseN      : N -> CN ;               -- house
--    AdjCN     : AP -> CN -> CN ;        -- big house

-- Adjective
--    PositA    : A  -> AP ;              -- warm

-- Adverb
--    PrepNP    : Prep -> NP -> Adv ;     -- in the house

-- Conjunction
--    CoordS    : Conj -> S -> S -> S ;   -- he walks and she runs ---s

-- Tense

--    TSim      : Temp ;                  -- simultanous: she sleeps ---s
--    TAnt      : Temp ;                  -- anterior: she has slept ---s

-- Structural
--    and_Conj  : Conj ;
--    or_Conj   : Conj ;
    
--    every_Det : Det ;

--    in_Prep   : Prep ;
--    on_Prep   : Prep ;
--    with_Prep : Prep ;

--    i_Pron     : Pron ;
--    youSg_Pron : Pron ;
--    he_Pron    : Pron ;
--    she_Pron   : Pron ;
--    we_Pron    : Pron ;
--    youPl_Pron : Pron ;
--    they_Pron  : Pron ;


--    have_V2 : V2 ;

--extended
--    who_IP  : IP ;
--    QuestVP   : IP -> VP -> QCl ;   -- who sees me


}


