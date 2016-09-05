# Refactoring

In our persuit to becoming a grade "A" beginner we need to make our code clean, easy to read and smooth to run. We do this first by sitting down with a fresh pair of eyes. 

Refactoring is not about solving the problem with different logic, it's solving the problem with more polish. A good solution is not just one that works well enough but one that is clear and we do this by...

- Descriptive and appropriate naming for methods and variables. Here are some tips on naming [Click here for good naming article](https://web.archive.org/web/20131212155508/http://www.makinggoodsoftware.com/2009/05/04/71-tips-for-naming-variables/)
- Make code more readable by reducing "code smell". [There's a good article here](http://blog.codinghorror.com/code-smells/). 
Remember: that short code is not the smallest number of lines, but each line and each method has as little responsibilty as possible.

Example of what not to do:
```ruby
word.downcase.split(//).join.match(/\w/).gsub
```

This is very hard to read when all of your methods are chained together.

Last major refactoring trick is writing D.R.Y. code aka "Don't Repeat Yourself" and Y.a.g.n.i. meaning you ain't gonna need it. [Click here](http://programmer.97things.oreilly.com/wiki/index.php/Don't_Repeat_Yourself) for make DRY code.

Yagni tips
- ruby returns implicitly
- methods return the last line of code as their result.

Google other tips for refactoring ruby, there is alway room to get better.

# Cipher Challenge

## Summary
Cryptography is all about the art of creating and decoding secret messages, called ciphers. Modern computers were born from advancements in cryptography.

In this challenge, you'll refactor some existing cryptography code to make it more readable and follow Ruby best practices. This is a long method. Use your newly-developed skills with classes and driver test code to break this code into a class structure and call the methods within it.

## Release 0: Run the code
Run the code in [my_solution.rb](my_solution.rb) and see what the expected output is.

## Release 1:  Comment the code
Write comments next to or above each line in the [my_solution.rb](my_solution.rb) file with an explanation.
Really focus on breaking each step down. You want to fully understand and explain every line.

## Release 2: Write additional tests
Create some input messages of your own and see what comes out. What will always be the same using this cipher? What changes? Write driver test code in the [my_solution.rb](my_solution.rb) file based on what you discover.

## Release 3: Refactor the initial solution
Rewrite the method in the [my_solution.rb](my_solution.rb) file. Be sure to do the following:

  - Clean up the variable names.
  - The original code used a hard-coded hash to do the encryption. Can you create a simple algorithm instead? The original shift was by 4 characters. What would happen if it was changed to 10? Would your class be able to handle that change easily?
