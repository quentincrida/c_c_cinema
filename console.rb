require_relative('models/customer')


require('pry-byebug')

Customer.delete_all()


customer1 = Customer.new({ 'name' => 'Quentin Crida', 'funds' => 50})
customer1.save()
customer2 = Customer.new({'name' => 'Este Visser', 'funds' => 60})
customer2.save()









binding.pry
nil
