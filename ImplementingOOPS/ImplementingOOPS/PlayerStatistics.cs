using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ImplementingOOPS
{
    internal class PlayerStatistics
    {
        // Attributes
        private float height, weight, bodyCount, HundretMeter;

        /// <summary>
        /// Setters
        /// </summary>
        protected void setHeight()
        {
            Console.Write("Enter players Height (cm) : ");
            this.height = (float)Convert.ToDouble(Console.ReadLine());
        }
        protected void setWeight()
        {
            Console.Write("Enter players Weight (kg) : ");
            this.weight = (float)Convert.ToDouble(Console.ReadLine());
        }
        protected void setBodyCount()
        {
            Console.Write("Enter players bodyCount : ");
            this.bodyCount = (float)Convert.ToDouble(Console.ReadLine());
        }
        protected void setHundredMeter()
        {
            Console.Write("Enter players Time per 100 run (sec's) : ");
            this.HundretMeter = (float)Convert.ToDouble(Console.ReadLine());
        }

        
        /// <summary>
        /// Getters
        /// </summary>
        protected float getHeight()
        {
            return this.height;
        }
        protected float getWeight()
        {
            return this.weight;
        }
        protected float getBodyCount()
        {
            return this.bodyCount;
        }
        protected float getHundredMeter()
        {
            return this.HundretMeter;
        }
        protected float getBMI()
        {
            return (this.weight * 10000) / (this.height * this.height);
        }
        protected string getBMIresults() {
            float bmi=this.getBMI();
            if (bmi > 18 && bmi < 24)
                return "Good Physique";
            else if (bmi < 18)
                return "Light Weighted";
            else
                return "Over Weighted";
        }


        // <summary>
        /// Accessing Functions
        /// </summary>
        public void setPlayerStatistics()
        {
            this.setHeight();
            this.setWeight();
            this.setBodyCount();
            this.setHundredMeter();
        }
        public void getPlayerStatistics()
        {
            Console.WriteLine("Height       : "+ this.getHeight() +" cm");
            Console.WriteLine("Weight       : "+ this.getWeight() +" kg");
            Console.WriteLine("Body Count   : "+ this.getBodyCount() +" %");
            Console.WriteLine("BMI          : "+ this.getBMI() + " kg/m^2   ie. Physique : "+this.getBMIresults());
            Console.WriteLine("100m runtime : "+ this.getHundredMeter() + " sec's");
        }
    }
}
