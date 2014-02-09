## Problem 1

* What does 'all unique characters' mean?
* Why would `uniq` have been helpful?
* ...
* I forgot to write questions for the first 10 minutes because I was distracted
setting up my files.  So, my question is, what should my files (test and
application code files) look like?
* what does additional data structures mean?  Can we not use ANY additional data
  structures?   not even other strin objects?  Or we can't use other TYPES of
  data structures?
* No matter the answer to the above question, is it allowed to use something
  like "foo".each\_char that under the hood produces an Enumerator?  Is that an
  additional data structure even if we never save it out to a local variable?


## Problem 2
Write code to reverse a string without using .reverse
* what's the easiest thing to reverse?  A single character word.
* okay, a two character string, we need to just switch the places of the first
  and second chars.
* we really want to grab the last letter and make it first, then grab the second
  to last letter and make it second from the front.  Inject!

## Problem 2
Design an algorithm and write code to remove the duplicate characters in
a string without using .uniq
* let's just get started and make the basic structure.
