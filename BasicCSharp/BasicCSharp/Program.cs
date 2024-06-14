using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BasicCSharp
{
    internal class Program
    {
        static void Greet(string greeting)
        {
            Console.WriteLine($"Good {greeting} bro.");
        }
        static void Main(string[] args)
        {
            // Single Line Comment
            /* 
             Multi Line comment
             */

            // Write() does not includes \n @end
            // WriteLine() does includes \m @end.

            Console.Write("How many candies do you want?");
            string can = Console.ReadLine(); // it takes string as an input
            Console.WriteLine("Hey you quantities for candies are : " + can + " candies");
            // here we can convert the string to integer
            int noOfCan = Convert.ToInt32(can);
            Console.WriteLine("The int value + 5 is : " + (noOfCan + 5));

            // Math class
            Console.WriteLine(Math.Max(45, 100));
            Console.WriteLine(Math.Min(45, 100));
            double sqrt = Math.Sqrt(362); // returns double
            Console.WriteLine(sqrt);

            // String functions
            string initString = "YO there what are you doing?";
            Console.WriteLine(initString.Length);
            Console.WriteLine(initString.ToUpper());
            Console.WriteLine(initString.ToLower());
            Console.WriteLine(initString);
            Console.WriteLine(string.Concat(initString, "Nothing!! Actually."));

            int legs = 6;
            Console.WriteLine($"That things has {legs} legs and it asks {initString}.");

            Console.WriteLine(initString[3]);
            Console.WriteLine(initString.IndexOf("there"));
            Console.WriteLine(initString.Substring(3));
            Console.WriteLine(initString.Substring(3, 5));


            // If age > 18 can drive else not
            Console.Write("Enter your age : ");
            int age = Convert.ToInt32(Console.ReadLine());
            // IF-ELSE
            if (age >= 18) { Console.WriteLine("You are eligible for getting driving liscene."); }
            else { Console.WriteLine("You are not yet Eligible for driving."); }
            // SWITCH
            switch (age)
            {
                case 18:
                    Console.WriteLine("You can drive");
                    break;
                default:
                    Console.WriteLine("You cannot drive");
                    break;
            }


            // loops
            // for loop
            for (int i = 1; i < 11; i++)
            {
                Console.WriteLine(i);
            }
            // while loop
            int ind = 1;
            while (ind < 11)
            {
                Console.WriteLine(ind++);
            }
            // do while loop
            ind = 1;
            do
            {
                Console.WriteLine(ind++);
            } while (ind < 11);

            // Calling method with parameters.
            Greet("Morning");
            Greet("Afternoon");
            Greet("Evening");
            Greet("Night");



            //Console.ReadLine();
        }
    }
}
