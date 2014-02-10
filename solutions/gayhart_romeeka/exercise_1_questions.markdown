## Problem 1

### 1
* How do I set up MiniTest?
* What is a happy-ish test that I can run?
* Set up the test so that I can see the output
* Begin trying different ways of splitting up the characters
* Start sorting the letters - first idea is to confirm that none of the letters match the one next to them - this seems too wordy though
* look up Each with Index - find that it doesn't catch multiple instances
* get tests to pass
* now that tests are passing, decided to try without sorting
* refactor out the sorting

#### Without additional data structures?
* First problem is seperating from first problem - decided to keep seperate classes
* Decide to go back to the sort method on the string
* turns out, you can't sort on a string - call methods.sort to get a look at methods
* start playing with different methods - I want to try doing it without looking up the documentation - I add both unique and non-unique tests so I can see if there is any difference in how the methods react
* Still thinking about the delete! method - figure this could work - sleep on it

### 2

* Set up minitest and write a basic assumption
* Lead with trying to concat the last letter on to an empty string - get 'mmmm'
* By now, I know that delete(letter) won't work on strings that are no unique - start looking for a way to slice the last letter
* Same 'mmmm' string - try adding a ! and answer
* Go ahead and add another test to make sure non-unique characters are covered

### 3

* Set up minitest
* Okay so I think the delete and slice will come in handy here - try slicing [0] of the string to check that this works
* now try using the sliced letter to see if the leftover string includes? said letter
* write a while block to slice letters from string and concat them on to an empty string called answer
* if the leftover string includes the slices letter, it and all instances of itself are deleted from the string and it is not concated on the answer
* write one extra test to confirm that method can handle a string that is all duplicate letters

### 4

* I think the key here is sort. Set up the first test.
* Write the initial method with sort, then switch to reverse, then realize that anagrams are not order of letters specific and then go back to sort
* Add an extra test for sanity check

### 5

* Oh yay, I had to do this before on a project ( with .gsub though)
* Set up the test - I have some ideas in my head - thinking 'split'
* Set up an 'each' block to concat on to an empty string, but now I'm stuck with an extra %20
* fix it with a range (not exactly elegant)
* Get the test to pass but start to wonder if I can handle multiple spaces in a row - check the problem
* Looks like I need to handle multiple spaces - write a test with a string that is just "  "