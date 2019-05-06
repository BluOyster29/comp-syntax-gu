concrete ticketEng of ticket = {
  lincat 
    Request, Station = Str ;
  lin 
    ticket X Y = 
    ((("I" ++ ("would like" | "want") ++ "to get" | 
      ("may" | "can") ++ "I get" | 
      "can you give me" |
      []) ++ 
      "a ticket") |
      []) ++ " from" ++ X ++ "to" Y ++ ("please" | []) ;
      
    Newport = "Newport" ;
    Cardif = " Cardiff" ;
    Swansea = "Swansea" ;
    Bristol = "Bristol" ;
    London = "London" ;
    
  
    