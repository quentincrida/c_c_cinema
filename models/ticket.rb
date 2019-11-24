require_relative("../db/sql_runner")

class Ticket

attr_reader :id
attr_accessor :customer_id, :film_id

def initialize(options)
  @id = options['id'].to_i if options['id']
  @customer_id = options['customer_id'].to_i
  @film_id = options['film_id'].to_i
end

  def save()
    sql = "INSERT INTO tickets (customer_id, film_id) VALUES ($1, $2) RETURNING id"
    values = [@customer_id, @film_id]
    ticket = SqlRunner.run(sql, values)[0];
    @id = ticket['id'].to_i
  end

  def self.delete_all()
    sql = "SELECT * FROM tickets"
    SqlRunner.run(sql)
  end

  def update ()
    sql = "UPDATE tickets SET (customer_id, film_id) = ($1,$2) WHERE id = $3"
    values = [@customer_id, @film_id, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM tickets WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)

  end
#show films a customer has booked to see
# def show_film_by_customer()
#   sql = "SELECT films.* FROM films INNER JOIN tickets ON tickets.film_id = films.id WHERE customer_id = $1;"
#   values = [@id]
#   customers = SqlRunner.new(sql, values)
#   result = customers.map{|customer| Customer.new(customer) }
#   return result
#
# end

end
