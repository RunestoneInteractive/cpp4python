

Function Overloading
--------------------

**Function overloading** is the ability to create multiple functions with identical names but different implementations.
Not all languages support function overloading. Python does not, for example.

In C++ programming, two or more functions can have same
name when they can be distinguished by the parameters.
Hence, C++  allows function overloading when either the data types of the parameters differ
or the number of parameters differ.

Overloading is a nice feature of the C++ language.
Python does not offer function overloading, so accomplishing the same task in
Python requires a different technique.

See the following example where an optional parameter is used to accomplish the
same task.

.. tabbed:: foverload

  .. tab:: C++

    .. activecode:: foverload_cpp
        :caption: function overloading in C++
        :language: cpp

        // demonstrates how function overloading works
        // by changing the parameters on the inputs.
        #include <iostream>
        using namespace std;

        void myfunct(int n) {
             cout << "1 parameter: " << n <<endl;
        }

        void myfunct(int n, int m) {
             cout << "2 parameters: " << n;
             cout << " and " << m <<endl;
        }

        int main() {

            myfunct(4);
            myfunct(5, 6);
            myfunct(100);

            return 0;
        }


  .. tab:: Python

    .. activecode:: foverload_py
        :caption: Function Overloading in Python

        """Demonstrates the use of multiple parameters using a single function"""
        def myfunct(n, m=None):
            if m is None:
                print("1 parameter: " + str(n))
            else:
                print("2 parameters: " + str(n), end="")
                print(" and ", str(m))

        def main():
            myfunct(4);
            myfunct(5, 6);
            myfunct(100);

        main()

.. mchoice:: foverloading
    :multiple_answers:
    :answer_a: Helps keep consintency in the way your functions are named across your program.
    :answer_b: Functions that do similar tasks differ based on parameters rather than by name.
    :answer_c: A function in essence can fulfill multiple tasks depending on the parameters.
    :answer_d: Removes the limit on how many parameters can be written or passed.
    :correct: a, b, c
    :feedback_a: Take a look at the other answers as well...
    :feedback_b: Take a look at the other answers as well...
    :feedback_c: Take a look at the other answers as well...
    :feedback_d: Wrong! Function overloading has nothing to do with removing the limit of parameters.

    What are benefits of function overloading?

.. admonition:: Self Check

   Here's a self check that really covers everything so far.  You may have
   heard of the infinite monkey theorem?  The theorem states that a monkey
   hitting keys at random on a typewriter keyboard for an infinite amount of
   time will almost surely type a given text, such as the complete works of
   William Shakespeare.  Well, suppose we replace a monkey with a C++ function.
   How long do you think it would take for a C++ function to generate just one
   sentence of Shakespeare?  The sentence we'll shoot for is:  "methinks it is
   like a weasel"

   You're not going to want to run this one in the browser, so fire up your favorite
   C++ IDE.  The way we'll simulate this is to write a function that generates a string
   that is 28 characters long by choosing random letters from the 26 letters in the
   alphabet plus the space.  We'll write another function that will score each
   generated string by comparing the randomly generated string to the goal.
   Hint: You will need to import the <random> library for this.

   A third function will repeatedly call generate and score, then if 100% of
   the letters are correct we are done.  If the letters are not correct then
   we will generate a whole new string. To make it easier to follow your program's
   progress this third function should print out the best string generated so far
   and its score every 1000 tries.

.. admonition:: Self Check Challenge

    See if you can improve upon the program in the self check by keeping letters
    that are correct and only modifying one character in the best string so far.
    This is a type of algorithm in the class of 'hill climbing' algorithms, that
    is we only keep the result if it is better than the previous one.
