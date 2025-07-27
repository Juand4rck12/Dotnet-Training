using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Restaurant_App.models
{
    internal class IngredientDish
    {
        private long id_ing_dish;
        private long id_dish;
        private string ingredient_name;
        private decimal quantity;
        private string measure_unit;

        public IngredientDish() {}

        public IngredientDish(long id_ing_dish, long id_dish, string ingredient_name, decimal quantity, string measure_unit)
        {
            this.id_ing_dish = id_ing_dish;
            this.id_dish = id_dish;
            this.ingredient_name = ingredient_name;
            this.quantity = quantity;
            this.measure_unit = measure_unit;
        }

        public long Id_ing_dish { get => id_ing_dish; set => id_ing_dish = value; }
        public long Id_dish { get => id_dish; set => id_dish = value; }
        public string Ingredient_name { get => ingredient_name; set => ingredient_name = value; }
        public decimal Quantity { get => quantity; set => quantity = value; }
        public string Measure_unit { get => measure_unit; set => measure_unit = value; }
    }
}
