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

## Problem 3
Design an algorithm and write code to remove the duplicate characters in
a string without using .uniq
* let's just get started and make the basic structure.
* oh man, I forgot to write my questions down.
* this requirement felt very similar to what we needed to do for the preivous
  two exercises using inject and checking for uniqueness.

## Problem 4
Write a method to decide if two strings are anagrams or not
* I've done this problem before in Exercism so it sounds familiar.
* Let's just get started and set up a simple example.
* I'm thinking we'll do some sort of character count in each word and if the
  char counts matach then we're good.
* do we need to worry about caps?
* ok, so I have a working implementation with very simple cases.  What could
  I be missing with more complicated cases?  What about some words with caps and
  some without?  How do we treat those?  The simplest case would say 'F' and 'f'
  are different so we don't have to deal with them.  In reality that may not be
  a great assumption.

## Problem 5
Write a method to replace all spaces in a string with ‘%20’ without .gsub or
.sub
* okay, so we're going to have a string with spaces in it.  We want to iterate
  through each character in the string and replace it with '%20'.
* what's the best way to iterate through a string's chars?
* it seems reasonable to just use inject again.

