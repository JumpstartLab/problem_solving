## Problem 1

* What is a data structure?
* Is an array a data structure?
* The "Additional" data structures part tells me I can use only string
* What methods does string have? (besides uniq) (finding out by looking at the String Class on Ruby-Doc.org)
* Can I use string comparison by duplicating the string?
* Can I use a regex?
* The #chars method returns an array... so does that mean I can't use it?
* #each_char also returns an array -- the method above is shorthand for it
* Perhaps #count can work?
* Count seems to work in an interesting way in irb. Let me try using it..
* Can I use length and range along with count?
* Can I use the index of the letter to check if the letter had already been used before?
* The #next method looks very interesting. Can I use a linked list and next to find it?
* What is #oct?
* What is an ordinal digit? Can this give me back what I want predictably?
* Can I just subtract 96 from the ordinal number?
* Can I go through the index of each one, and check the ordinal number, and make sure it has not showed up before?
* Oooooh interesting... "a".ord % 32 == 1!
* Can I cycle though the length of the word using `times` and the position of the character % 32?
* Can I append to a string? (So I don't have to use another data structure?)
* Can I use modulo in a different way to solve this problem?
