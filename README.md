# Mandelbrot
1. I have coded a Mandelbrot set renderer in Processing (a java animations library), my code is a bit messy but i think it will be readable enough. You can run the code in the Processing Developement Environment (PDE) itself.  
2. If you find a bug you can open a pull request

# Prerequisites
1. You should have Java installed.
2. You should also download and install the [Processing Developement Environment](https://processing.org/)

# How the program works

1. If you know what the mandelbrot set it, you can skip to the images of the render! So what is the mandelbrot set exactly? Simply put, it is a regular set of numbers just like the set of even numbers, the set of prime numbers, the set of all square/cube numbers, etc. The only main difference is that it is defined over not just the real numbers but also the complex numbers.

2. If you are unfaimiliar with the concept of complex numbers, I will briefly explain what they are and if you are already familiar with them then skip to point 10. You can read an alternative explanation on [Wiki](https://en.wikipedia.org/wiki/Complex_number). You can also read an alternative explanation for the mandelbrot set on [Wiki](https://en.wikipedia.org/wiki/Mandelbrot_set).

3. \sqrt{1} as we all know is 1. \sqrt(16) is 4 and \sqrt(64) is 8 the square roots of even non square numbers are defined for example \sqrt(2) ≈ 1.414 . This is very common knowledge but what if I ask you \sqrt(-1)? Any positive number times itself is positive and any negetive number times itself is also positive. Seems like there is no answer to this question, and you may even have learnt in your school that the roots of negetive numbers are not defined or they are imaginary. 

4. The Truth however is that they are actually defined and a whole branch of Mathematics called the Complex Numbers deal with just this number, \sqrt(-1). We give this number a new name "iota" and assign the letter i to it. By definition, \i^2 = -1, \sqrt(-4) = 2i (2*\sqrt(-1)). 2i is infact known as an Imaginary number.

5. A Complex number is a combination of a real and imaginary number, it is always of the form x+yi. x here is called the real part and y here is called the imaginary part of the complex number.

6. Now The question arieses, Where do we put these new numbers on the number line? Every single point on the number line already represents a real number so we give the imaginary numbers a whole new line called the imaginary axis and it is placed perpendicular to the real axis and they intersect at the point (0,0). 

7. This new diagram that we have can represent all possible Complex Numbers by points, for exapmple, on this plane (3,0) represents the number 3+0i and as the imaginary part is 0, it is a purply real number. (0,4) represents the complex number 0+4i and it is purely imaginary as real part of it is 0. (5,6) represents the complex number 5+6i which has both real and imaginary parts (that is why its called a complex number!). In general (x,y) represents the complex number x+yi = z (it is usually denoted as z just like x for real numbers).

8. We can do all operations on complex numbers which we can perform on real numbers like taking roots and squares and we always get another complex number as our answer (no new numbers are needed to be defined, with complex numbers, arithmeatic is complete!!!).

9. To add/subtract complex numbers we just add/subtract the real and imaginary parts respectively. To multiply them, use algebra and distribute: (3+4i)x(3+4i) = 3(3+4i)+4i(3+4i) = 9+12i+12i+16\i^2 = 9-16+24i = -7+24i (\i^2 = -1 by definition). Congratulations! You squared a complex number! We can also find modulus (aka magnitude) of a complex number: |x+yi| = \sqrt(\x^2+\y^2).

10. So basically the Mandelbrot set is defined as the set of all complex numbers whoes magnitudes do not grow to infinity as we repeatadly square them. for example if i keep squaring the number 2 => 4 => 16 => 256 it becomes larger and larger and becomes infinite after some time. But this is not true of all numbers, if i keep on squaring the number 1 => 1 => 1 => it never reaches infinity so it will be a part of our set. Real numbers less than 1 will also be a part of our set. 

11. This property also applies to complex numbers, some of them when squaured, increase in **magnitude** and eventually tend to infinity. Since we cannot keep squaring a number indefinitely, we have to decide on the number of times we want to square the complex number to check if it is a part of the mandelbrot set (ive used 100 in my program) Increasing this number increases the detail of the image as more and more numbers are eliminated from the set with a higher number of repetitions.

12. The first program is a simple one which basically checks all numbers on the screen to determine which is a part of the mandelbrot set and then colours it black. The ones which are not a part are coloured in a shade of red.   
![](https://github.com/Divy1211/Mandelbrot/blob/master/mandelbrot_set_render/my.png)

13. The second program is a bit more *complex*. for every time you click, it increases the number of times we square every number which makes the image finer and finer. Each new repetition eliminates new numbers in the set which are coloured differently.  
![](https://github.com/Divy1211/Mandelbrot/blob/master/mandelbrot_set_render_2/example.gif)  

14. The colouring pattern for the first program is similar to the second program, you can see that if you overlapped the images, the portions with different shades of red match up with the different layers of the second image meaning that the only difference between them is that each new repetition is colored entirely with a new color in the second program but with a brighter shade of red in the first program.
