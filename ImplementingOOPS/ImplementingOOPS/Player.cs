using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ImplementingOOPS
{
    internal class Player : PlayerStatistics
    {
        // Attributes
        private string name = "Player";
        private int playerID = 00;

        /// <summary>
        /// Setters
        /// </summary>
        protected void setName()
        {
            Console.Write("Enter Players name : ");
            this.name = Console.ReadLine();
        }
        protected void setID()
        {
            Console.Write("Enter Players ID : ");
            this.playerID = Convert.ToInt16(Console.ReadLine());
        }

        /// <summary>
        /// Getters
        /// </summary>
        protected string getName()
        {
            return this.name;
        }
        protected int getID()
        {
            return this.playerID;
        }

        /// <summary>
        /// Accessing Functions
        /// </summary>
        public void setPlayerDetails()
        {
            this.setName();
            this.setID();
            this.setPlayerStatistics();
        }
        public void getPlayerDetails()
        {
            Console.WriteLine("\nName         : " + this.getName());
            Console.WriteLine("ID           : " + this.getID());
            this.getPlayerStatistics();
        }

    }
}
