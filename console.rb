require_relative('models/customer')


require('pry-byebug')

Customer.delete_all()


customer1 = Customer.new({ 'name' => 'Quentin Crida', 'funds' => 50})
