-- given::
module MoodSwing where
data Mood = Blah | Woot deriving Show


-- git test
-- 1. What is the TYPE CONSTRUCTOR, or NAME OF THIS TYPE
-- Mood

-- 2. If the function requires a Mood value, what are the values you could
--    possibly use? 

-- Blah or Woot

-- 3. We are trying to write a function changeMood to change Chris’s mood instantaneously.
--   It should act like not in that, given one value,
--   it returns the other value of the same type.
--   So far, we’ve written a type signature changeMood :: Mood -> Woot.
--   What’s wrong with that?

-- becuase this t.s. has a t.c. and a d.c.(value). 
--  It should only contain the t.s. (Mood -> Mood)
changeMood :: Mood -> Mood
-- 4. Now we want to write the function that changes his mood.
--   Given an input mood, it gives us the other one.
--   Fix any mistakes and complete the function:
-- changeMood Mood = Woot
-- changeMood _ = Blah
--   We’re doing something here called pattern matching.
--   We can define a function by matching on a data constructor, or value,
--   and describing the behavior that the function should have
--   based on which value it matches.
--   The underscore in the second line denotes a catch-all, otherwise case.
--   So, in the  first line of the function,
--   we’re telling it what to do in the case of a specific input.
--   In the second one, we’re telling it what to do regardless of all potential inputs.
--   It’s trivial when there are only two potential values of a given type,
--   but as we deal with more complex cases, it can be convenient.
changeMood Blah = Woot
changeMood Woot = Blah



