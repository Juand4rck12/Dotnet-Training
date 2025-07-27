using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Restaurant_App.models
{
    internal class Dish
    {
        private long id_dish;
        private string dish_name;
        private int base_portion;
        private long id_category;
        private string image_path;
        private string description;
        private decimal price;

        public Dish() {}

        public Dish(long id_dish, string dish_name, int base_portion, long id_category, string image_path, string description, decimal price)
        {
            this.id_dish = id_dish;
            this.dish_name = dish_name;
            this.base_portion = base_portion;
            this.id_category = id_category;
            this.image_path = image_path;
            this.description = description;
            this.price = price;
        }

        public long Id_dish { get => id_dish; set => id_dish = value; }
        public string Dish_name { get => dish_name; set => dish_name = value; }
        public int Base_portion { get => base_portion; set => base_portion = value; }
        public long Id_category { get => id_category; set => id_category = value; }
        public string Image_path { get => image_path; set => image_path = value; }
        public string Description { get => description; set => description = value; }
        public decimal Price { get => price; set => price = value; }
    }
}
