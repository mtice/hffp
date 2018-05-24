module Madlibbin' where


type Verb = String
type Adjective = String
type Adverb = String
type Noun = String
type Exclamation = String

madlibbinGooder' :: Exclamation
            -> Adverb
            -> Noun
            -> Adjective
            -> String

madlibbinGooder' e adv noun adj = mconcat
    [e, "! he said ",
    adv, " as he jumped into his car ",
    noun, " and drove off with his ",
    adj, " wife."]
    