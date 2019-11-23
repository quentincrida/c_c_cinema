require('minitest/autorun')
require('minitest/reporters')
require_relative('../models/film')

MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

class FilmTest < MiniTest::Test

  def test_can_create_new_film
    film_details = { 'title' => "Fred Perry at 150", 'price' => 11}
    new_film = Film.new(film_details)
    assert_equal(11, new_film.price)
  end

end
