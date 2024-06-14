using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ImplementingOOPS
{
    internal class Program
    {

        static void Main(string[] args)
        {

            Player p1 = new Player();
            p1.setPlayerDetails();
            p1.getPlayerDetails();

            Console.WriteLine();
            
        }
    }
}
