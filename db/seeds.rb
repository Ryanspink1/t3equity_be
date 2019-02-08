# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

class Seed
  def initialize
  end

  def self.start
    u = User.new(email:'mike', password: 'password', role:1)
    if u.save
      puts 'Created admin user!'
    else
      puts 'Error: Validation Violation'
    end
  end


end

Seed.start
