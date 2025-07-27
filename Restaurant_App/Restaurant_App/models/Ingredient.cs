using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Restaurant_App.models
{
    internal class Ingredient
    {
        private long id_ingredient;
        private string ingredient_name;
        private decimal price;
        private string currency;
        private string measurement_unit;
        private int stock;

        public Ingredient() {}

        public Ingredient(long id_ingredient, string ingredient_name, decimal price, string currency, string measurement_unit, int stock)
        {
            this.id_ingredient = id_ingredient;
            this.ingredient_name = ingredient_name;
            this.price = price;
            this.currency = currency;
            this.measurement_unit = measurement_unit;
            this.stock = stock;
        }

        public long Id_ingredient { get => id_ingredient; set => id_ingredient = value; }
        public string Ingredient_name { get => ingredient_name; set => ingredient_name = value; }
        public decimal Price { get => price; set => price = value; }
        public string Currency { get => currency; set => currency = value; }
        public string Measurement_unit { get => measurement_unit; set => measurement_unit = value; }
        public int Stock { get => stock; set => stock = value; }
    }
}
