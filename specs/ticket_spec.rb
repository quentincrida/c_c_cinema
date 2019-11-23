require('minitest/autorun')
require('minitest/reporters')
require_relative('../models/ticket')

MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

class TicketTest < MiniTest::Test

  def test_can_create_new_ticket
    ticket_details = { 'customer_id' => 150, 'film_id' => 11}
    new_ticket = Ticket.new(ticket_details)
    assert_equal(150, new_ticket.customer_id)
  end

end
