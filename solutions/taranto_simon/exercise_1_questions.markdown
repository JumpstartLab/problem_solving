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

## Problem 6
* hmm, we're dealing with a matrix.  I know there is a ruby Matrix class and
  i've always wanted to use it. How does it work?  Let's go to the docs.
* I started by drawing out a 2x2 matrix on paper and wrote out long hand which
  cell moved to which cell and what the delta in x and y coords are
* then I did a 3x3 matrix similarly
* then I did a 4x4 matric similarly.  At this point I feel confident I have the
  majority of the cases covered and I see a pattern with the way the changes in
  coords happen.  Now, I'll go back and try to implement the simpler 2x2 in
  code.
* ok, I figured out the pattern.  What we really care about is the delta (in
  terms of x and y) that we must move each cell in the matrix.  So, if we have
  a 2x2, we'll have a 2x2 matrix of the coordinates that show how to move each
  cell.  Assuming an NxN matrix with a coordinate system of x by y, the general formula for the deltas is (N-1-x-y, x-y)
* Now that we're in code, how do we break down the different concepts?  We have
  the concept of an image that has pixels.  Let's start by modeling a pixel.
* what does a pixel need?  It needs to have four bytes.  I'm comfy simplifying
  the situation and saying a pixel has a color and it is a string.  Whatever is
  in the string, I don't care.


## Problem 7
* ah, I forgot to write again....
* I want an array of arrays to represent the matrix and the figure out where
  there are zeroes.  How do we find where there are zeroes.


## Problem 8
