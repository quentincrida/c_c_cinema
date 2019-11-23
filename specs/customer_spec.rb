require('minitest/autorun')
require('minitest/reporters')
require_relative('../models/customer')

MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

class CustomerTest < MiniTest::Test

  def test_can_create_new_customer
    customer_details = { 'name' => "Anthony Butcher", 'funds' => 75}
    new_client = Customer.new(customer_details)
    assert_equal('Anthony Butcher', new_client.name)
  end

end
