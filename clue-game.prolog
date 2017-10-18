% In class assignment 2 - CLUE!

guest(mustard).
guest(plum).
guest(scarlett).
guest(green).

victim(boddy).

affair(boddy,green).
affair(boddy,scarlett).
married(plum,green).
rich(boddy).
greedy(mustard).

hates(Hater,Person) :- affair(Person,Cheater), married(Hater,Cheater).
willing(Person) :- rich(Person2), victim(Person2), greedy(Person).

killer(Killer,Victim) :- hates(Killer,Victim), victim(Victim).
killer(Killer,Victim) :- willing(Killer), victim(Victim).
