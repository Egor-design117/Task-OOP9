using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Task9.Model;

namespace Task9.DAL
{
    public class CoffeeRepository : ICoffeeRepository
    {
        private static List<Coffee> coffees;

        public CoffeeRepository()
        {
            if (coffees == null)
                LoadCoffees();
        }

        public Coffee GetCoffee()
        {
            return coffees.FirstOrDefault();
        }

        public List<Coffee> GetCoffees()
        {
            return coffees;
        }

        public Coffee GetCoffeeById(int id)
        {
            return coffees.FirstOrDefault(c => c.CoffeeId == id);
        }

        public void DeleteCoffee(Coffee coffee)
        {
            coffees.Remove(coffee);
        }

        public void UpdateCoffee(Coffee coffee)
        {
            var coffeeToUpdate = coffees.FirstOrDefault(c => c.CoffeeId == coffee.CoffeeId);
            if (coffeeToUpdate != null)
            {
                coffeeToUpdate.CoffeeName = coffee.CoffeeName;
                coffeeToUpdate.Description = coffee.Description;
                coffeeToUpdate.ImageId = coffee.ImageId;
                coffeeToUpdate.AmountInStock = coffee.AmountInStock;
                coffeeToUpdate.InStock = coffee.InStock;
                coffeeToUpdate.FirstAddedToStockDate = coffee.FirstAddedToStockDate;
                coffeeToUpdate.OriginCountry = coffee.OriginCountry;
                coffeeToUpdate.Price = coffee.Price;
            }
        }

        private void LoadCoffees()
        {
            coffees = new List<Coffee>()
            {
            new Coffee()
{
    CoffeeId = 1,
    CoffeeName = "BMW",
    Description = "Немецкий автопроизводитель премиум-класса, известный своими спортивными седанами и технологичными решениями.",
    ImageId = 1,
    AmountInStock = 15,
    InStock = true,
    FirstAddedToStockDate = new DateTime(2024, 3, 15),
    OriginCountry = Country.Германия,
    Price = 4500000
},
new Coffee()
{
    CoffeeId = 2,
    CoffeeName = "Mercedes-Benz",
    Description = "Легендарный немецкий бренд, символ роскоши и инноваций в автомобилестроении.",
    ImageId = 2,
    AmountInStock = 8,
    InStock = true,
    FirstAddedToStockDate = new DateTime(2023, 11, 20),
    OriginCountry = Country.Германия,
    Price = 5200000
},
new Coffee()
{
    CoffeeId = 3,
    CoffeeName = "Audi",
    Description = "Популярная марка с узнаваемым дизайном и полным приводом Quattro в основе многих моделей.",
    ImageId = 3,
    AmountInStock = 5,
    InStock = true,
    FirstAddedToStockDate = new DateTime(2024, 1, 10),
    OriginCountry = Country.Германия,
    Price = 3800000
},
new Coffee()
{
    CoffeeId = 4,
    CoffeeName = "Lexus",
    Description = "Японский люксовый бренд, сочетающий надежность и высокий уровень комфорта.",
    ImageId = 4,
    AmountInStock = 3,
    InStock = true,
    FirstAddedToStockDate = new DateTime(2023, 9, 5),
    OriginCountry = Country.Япония,
    Price = 4900000
},
new Coffee()
{
    CoffeeId = 5,
    CoffeeName = "Porsche",
    Description = "Икона спортивного автомобилестроения с узнаваемым дизайном и выдающимися динамическими характеристиками.",
    ImageId = 5,
    AmountInStock = 7,
    InStock = true,
    FirstAddedToStockDate = new DateTime(2024, 2, 28),
    OriginCountry = Country.Германия,
    Price = 7500000
},
new Coffee()
{
    CoffeeId = 6,
    CoffeeName = "Tesla",
    Description = "Инновационный производитель электромобилей с передовыми технологиями автопилота.",
    ImageId = 6,
    AmountInStock = 12,
    InStock = true,
    FirstAddedToStockDate = new DateTime(2024, 4, 10),
    OriginCountry = Country.США,
    Price = 6800000
},
new Coffee()
{
    CoffeeId = 7,
    CoffeeName = "Land Rover",
    Description = "Британский производитель премиальных внедорожников с безупречной репутацией.",
    ImageId = 7,
    AmountInStock = 4,
    InStock = true,
    FirstAddedToStockDate = new DateTime(2023, 12, 15),
    OriginCountry = Country.Великобритания,
    Price = 6200000
}

        };
        }
    }
}
