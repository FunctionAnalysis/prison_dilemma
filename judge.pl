decision(yes) :- (parole = true).
decision(no):-(parole = false).
decision(no):-risk(yes).
decision(yes):-(behavior(good)).
decision(yes):-risk(no).
behavior(good):-choice(right).
behavior(bad):-choice(wrong).
risk(yes):-decision(no).
risk(yes):-behavior(bad).
risk(no):-behavior(good).
choice(good):-choice(right).
decision:result(X):-behavior(X),choice(X).
print(result).
