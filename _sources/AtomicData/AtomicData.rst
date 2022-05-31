..  Copyright (C)  Jan Pearce and Brad Miller
    This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License. To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.

Using Data in C++
~~~~~~~~~~~~~~~~~

C++ requires the users specify the specific data type of each variable
before it is used.
The primary C++ built-in atomic data types are: integer (``int``),
floating point (``float``), double precision floating point (``double``),
Boolean (``bool``), and character (``char``). There is also a special
type which holds a memory location called ``pointer``. C++ also has
collection or compound data types, which will be discussed in a future
chapter.

Numeric Data
~~~~~~~~~~~~

Numeric C++ data types include ``int`` for integer, ``float``
for floating point, ``double`` for double precision floating point.

The standard arithmetic operations, +, -, \*, and /
are used with optional parentheses to force the order of
operations away from normal operator precedence.

In Python we can use ``//`` to get integer division.
In C++, we declare all data types.
When two integers are divided in C++, the integer portion of the
quotient is returned and the fractional portion is removed.
i.e. When two integers are divided, integer division is used.
To get the whole quotient, declaring one of the numbers as a float will
convert the entire result into floating point.

Exponentiation in C++ is done using ``pow()`` from the ``cmath`` library
and the remainder (modulo) operator is done with ``%``.

Run the following code to see that you understand each result.

.. tabbed:: intro

  .. tab:: C++

    .. activecode:: intro_1cpp
        :caption: Basic Arithmetic Operators C++
        :language: cpp

        #include <iostream>
        #include <cmath>
        using namespace std;

        // Function that perfoms various math operations
        int main(){

            cout << (2+3*4) << endl;
            cout << (2+3)*4 << endl;
            cout << pow(2, 10) << endl;
            cout << float(6)/3 << endl;
            cout << float(7)/3 << endl;
            cout << 7/3 << endl; //In C++ this is integer division
            cout << 7%3 << endl;
            cout << float(3)/6 << endl;
            cout << 3/6 << endl;
            cout << 3%6 << endl;
            cout << pow(2, 100) << endl;

            return 0;
        }

  .. tab:: Python

    .. activecode:: intro_1py
        :caption: Basic Arithmetic Operators Python

        # Function that performs a variety of math operations.
        def main():

            print(2+3*4)
            print((2+3)*4)
            print(2**10)
            print(6/3)
            print(7/3)
            print(7//3)
            print(7%3)
            print(3/6)
            print(3//6)
            print(3%6)
            print(2**100)

        main()

When declaring numeric variables in C++,
modifiers like ``short``, ``long``, and ``unsigned``
can optionally be used to help
to ensure space is used as efficiently as possible.

.. mchoice:: mc_integer_div
   :answer_a: 1
   :answer_b: 1.5
   :answer_c: 2
   :answer_d: A run-time error will occur.
   :answer_e: none of the above
   :correct: a
   :feedback_a: Right!  This is like ``3//2`` in Python.
   :feedback_b: No. Integer division is used. Try again.
   :feedback_c: No. Integer division is used. Try again.
   :feedback_d: No, C++ generally will try to do as you ask.
   :feedback_e: One of the above is correct.

   what is the result of dividing ``3/2`` in C++?


.. mchoice:: mc_exponentiation
  :answer_a: ``4**5``
  :answer_b: ``5**4``
  :answer_c: ``4^5``
  :answer_d: ``pow(4, 5)``
  :correct: d
  :feedback_a: No, ``**`` is used in Python, not C++.
  :feedback_b: No, ``**`` is used in Python, not C++, and the operators are reversed.
  :feedback_c: No. The ``^`` is a valid operator in C++, but it does something else.
  :feedback_d: You got it! Remember the cmath library will need to be included for pow() to work.

  How do I raise 4 to 5th power in C++?


Boolean Data
~~~~~~~~~~~~

Boolean data types are named after George Boole who was an English mathematician,
so the word "Boolean" should be capitalized. However,
the Boolean data type, in C++ uses the keyword ``bool``
which is not capitalized.
The possible state values
for a C++ Boolean are lower case ``true`` and ``false``.
Be sure to note the difference in capitalization from Python.
In Python, these same truth values are capitalized, while in C++,
they are lower case.

C++ uses the standard Boolean operators, but they are represented
differently than in Python: "and" is given by ``&&`` , "or" is given by ``||``
, and "not" is given by ``!``.
Note that the internally stored values representing ``true`` and ``false``
are actually ``1`` and ``0`` respectively. Hence, we see this in output as well.

.. tabbed:: logical1

  .. tab:: C++

    .. activecode:: logical_1cpp
        :caption: Logical Operators C++
        :language: cpp

        #include <iostream>
        using namespace std;

        // function that demonstrates logical operators
        int main() {
          cout << true << endl;
          cout << false << endl;
          cout << (true || false) << endl;
          cout << (true && false) << endl;
          return 0;
        }

  .. tab:: Python

        .. activecode:: logical_1py
            :caption: Logical Operators Python

            # Function that demonstrates logical operators.
            def main():
                print(True)
                print(False)
                print(True or False)
                print(True and False)
            main()


Boolean data objects are also used as results for comparison operators
such as equality (==) and greater than (:math:`>`). In addition,
relational operators and logical operators can be combined together to
form complex logical questions. :ref:`Table 1 <tab_relational>` shows the relational
and logical operators with examples shown in the session that follows.

.. _tab_relational:

.. table:: **Table 1: C++ Relational and Logical Operators**

    =========================== ============== =================================================================
             **Operation Name**   **Operator**                                                   **Explanation**
    =========================== ============== =================================================================
                      less than      :math:`<`                                                Less than operator
                   greater than      :math:`>`                                             Greater than operator
             less than or equal     :math:`<=`                                    Less than or equal to operator
          greater than or equal     :math:`>=`                                 Greater than or equal to operator
                          equal     :math:`==`                                                 Equality operator
                      not equal     :math:`!=`                                                Not equal operator
                    logical and     :math:`&&`                          Both operands true for result to be true
                     logical or     :math:`||`        One or the other operand is true for the result to be true
                    logical not      :math:`!`   Negates the truth value, false becomes true, true becomes false
    =========================== ============== =================================================================


.. tabbed:: basiclogical

  .. tab:: C++

    .. activecode:: locicalcpp
        :caption: Basic Relational and Logical Operators C++
        :language: cpp

        #include <iostream>
        using namespace std;

        // function that demonstrates relational operators.
        int main(){

            cout << (5 == 10) << endl;
            cout << (10 > 5) << endl;
            cout << ((5 >= 1) && (5 <= 10)) << endl;

            return 0;
        }

  .. tab:: Python

    .. activecode:: logicalpy
        :caption: Basic Relational and Logical Operators Python

        # Function that demonstrates relational operators.
        def main():

            print(5 == 10)
            print(10 > 5)
            print((5 >= 1) and (5 <= 10))

        main()


When a C++ variable is declared, space in memory is set aside to hold
this type of value.
A C++ variable can optionally be initialized in the declaration by
using a combination of a declaration and an assignment statement.

Consider the following session:

.. activecode:: booleanpitfall
    :language: cpp

    #include <iostream>
    using namespace std;

    //  Demonstrates how to use variables in C++
    //  moreover, we assign an integer to a boolean variable,
    //  showing the static typing of C++.
    int main(){

        int theSum = 4;
        cout << theSum << endl;

        theSum = theSum + 1;
        cout << theSum << endl;

        bool theBool = true;
        cout << theBool << endl;

        theBool = 4;
        cout << theBool << endl;

        return 0;
    }

The declaration ``int theSum = 0;`` creates a variable called
``theSum`` and initializes it to hold the data value of ``0``.
As in Python, the right-hand side of each assignment
statement is evaluated and the resulting data value is
“assigned” to the variable named on the left-hand side.
Here the type of the variable is integer.
Because Python is dynamically typed, if the type of the data
changes in the program, so does the type of the variable.
However, in C++, the data type cannot change.
This is a characteristic of C++'s static typing. A
variable can hold ever only one type of data.
Pitfall: C++ will often simply try to do the assignment you
requested without
complaining. Note what happened in the code above in the final output.

.. mchoice:: mc_bool
   :answer_a: Setting theBool to anything other than true or false is ignored.
   :answer_b: Setting theBool to anything > 0 will be true and false otherwise.
   :answer_c: false == 0 and true = !false i.e. anything that is not zero and can be converted to a Boolean is not false, thus it must be true.
   :answer_d: None of the above.
   :correct: c
   :feedback_a: No. Try changing the code and setting theBool to 0.
   :feedback_b: No. Try changing the code and setting theBool to -4.
   :feedback_c: Correct!
   :feedback_d: Try again. One of the above is correct. You might try changing the code and rerunning.

   Why did theBool output a value of 1 after being set to 4?


Character Data
~~~~~~~~~~~~~~

In Python strings can be created with single or double quotes.
In C++ single quotes are used for the character (``char``) data type,
and double quotes are used for the string data type.

Consider the following code.


.. tabbed:: usingchars

  .. tab:: Python

    .. activecode:: charpy
        :caption: Python strings

        # Shows direct comparison of both Strings & Characters in Python
        def main():

            strvar = "b"
            charvar = 'b'

            print('b' == charvar)
            print("b" == strvar)
            print('a' == "a")

        main()


  .. tab:: C++

    .. activecode:: charcpp
        :caption: Considering characters and strings
        :language: cpp

        #include <iostream>
        #include <string>
        using namespace std;

        // Demonstrates how chars and strings can not be
        // directly compared.
        int main(){

            string strvar = "b";
            char charvar = 'b';

            cout << ('b' == charvar) << endl;
            cout << ("b" == strvar) << endl;
            //cout << ('a' == "a") << endl; // will error!

            return 0;
        }


Try the following question.

.. mchoice:: mc_cpp_strings
   :answer_a: ' '
   :answer_b: " "
   :answer_c: ' ' or " " may be used
   :answer_d: It depends upon the implementation.
   :answer_e: none of the above
   :correct: b
   :feedback_a: No, single quotes are only used for single characters.
   :feedback_b: Good job reading!
   :feedback_c: No. Only one set of symbols may be used.
   :feedback_d: No. The implementation is consistent.
   :feedback_e: One of the above is indeed correct.

   If I want to create a string in C++, what set of symbols may be used?



Summary
~~~~~~~

1. All variables must be declared before use in C++.

2. C++ has typical built-in numeric types: ``int`` is for integers and ``float`` and ``double`` are used for floating point depending on the number of digits desired.

3. C++ has the Boolean type ``bool`` that holds ``true`` or ``false``.

4. The character data type ``char`` holds a single character which is encased in single quotes.

5. Pointers are a type of variable that stores a memory address. To declare a pointer, an  ``*`` is used before the variable name that is supposed to store the location.


Check Yourself
~~~~~~~~~~~~~~


.. mchoice:: mc_characters
   :answer_a: ' '
   :answer_b: " "
   :answer_c: ' ' or " " may be used
   :answer_d: It depends upon the implementation.
   :answer_e: none of the above
   :correct: a
   :feedback_a: Right!
   :feedback_b: No. Double quotes are only used for strings.
   :feedback_c: No. Only one set of symbols may be used.
   :feedback_d: No. The implementation is consistent.
   :feedback_e: One of the above is indeed correct.

   If I want to use the ``char`` type in C++, what set of symbols must be used?


.. fillintheblank:: memoryvar

  A/an ``___`` is used to store a memory address in C++?

 - :pointer: Right!
   :variable: Be more specific!
   :reference: That's Python, not C++!
   :default: Incorrect. Please try again


.. mchoice:: mc_memory
  :answer_a: using ``&``
  :answer_b: using ``*``
  :answer_c: using ``id``
  :answer_d: It depends upon the implementation.
  :answer_e: none of the above
  :correct: a
  :feedback_a: Right! ``&`` is the "address-of" operator, used to reference an address.
  :feedback_b: No. ``int *p;`` defines a pointer to an integer, and ``*p`` would dereference that pointer, i.e. retrieve the data that p points to.
  :feedback_c: No. This is used in Python.
  :feedback_d: No. Try again.
  :feedback_e: One of the above is indeed correct.

  How may one reference a variable's memory address in C++?
