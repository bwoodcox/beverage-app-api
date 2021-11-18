# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
brands =
  Brand.create(
    [
      { name: 'Coca-Cola' },
      { name: 'Pepsi' },
      { name: 'Monster' },
      { name: 'LIFEAID Beverage' },
      { name: 'Bai' },
    ],
  )
categories =
  Category.create(
    [
      { name: 'Energy' },
      { name: 'Kombucha' },
      { name: 'Health' },
      { name: 'Water' },
      { name: 'Soft Drink' },
    ],
  )

Beverage.create(
  [
    {
      name: 'Juice Monster Mango Loco',
      description:
        'Mango Loco is a heavenly blend of exotic juices certain to attract even the most stubborn spirit. Crazy good taste with just enough of that Monster magic to keep the party going for days…',
      category: categories[0],
      brand: brands[2],
    },
    {
      name: 'Coke Zero Sugar',
      description:
        'Coca-Cola Zero Sugar has more real Coca-Cola flavor, still without any sugar.',
      category: categories[4],
      brand: brands[0],
    },
    {
      name: 'Athletic Recovery',
      description:
        'Enjoy the refreshing taste of the #1 Workout Recovery Drink in America after your next workout or favorite outdoor activity.',
      category: categories[2],
      brand: brands[3],
    },
    {
      name: 'Aquafina',
      description:
        'What\'s the secret for perfectly pure tasting water? Our rigorous purification system. It takes out the stuff other bottled waters leave in.',
      category: categories[3],
      brand: brands[1],
    },
  ],
)
