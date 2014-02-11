## Problem 1

* What does 'additonal data structures' mean?
    * *can't use an enumerable*
* How can I manipulate a string's individual characters without using enumerable?
    * *use brackets, ex: "squirrel"[0] #=> "s"*
* Is it worth it to extend the String class?
    * *why not? :)*
* Should I bother splitting this method into other methods?
    * *I could, but it almost adds complexity, in my opinion*

## Problem 2
* This could be a great usage of inject
  * *WOOO!*
* I can easily convert this into an array to be joined later, but how do I shove an object onto the end of an array?
  * *array.unshift*

## Problem 3
* This could be another great usage of inject!
* I need to ensure that I'm returning the inner array, otherwise things get hard to debug

## Problem 4
* I can compare strings by sorting their characters, which I can get by creating arrays of their characters

## Problem 5
* is it worth it to create an array, and loop through it?
* enumerating is more complicated than it needs to be
    * I can just split on spaces and join the items with "%20"
* that doesn't work for strings with multiple connected spaces
    * *must use an enumerable*

## Problem 6
* I need to draw this out...
    * How would I represent an image as an NxN matrix?
    * What *exactly* is a matrix again?
        * *It's an array of arrays... right?* 
            * [link](http://rubylearning.com/blog/2013/04/04/ruby-matrix-the-forgotten-library/)
            * *according to above, it's a rectangle array of numbers
    * on paper, i see that I can flatten out the array, rotate them, and split the array based on it's size.
    * first thing - i need to find the size of the matrix ( N x N, I need N )
    * next, I need all the cells
    * next, I need to rotate a single cell 90degrees
        * Not working, back to drawing - jumpted too early to a conclusion
    * first row becomes last column
    * last row becomes first column
        * how do I convert a row into a column?
