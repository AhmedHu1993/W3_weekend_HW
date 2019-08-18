require_relative("../db/sql_runner")


class Screenings

  attr_reader :id, :film_id, :times

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @film_id = options['film_id'].to_i
    @times = options['times']
  end

  def save
    sql = "INSERT INTO screenings (film_id, times) VALUES ($1, $2) RETURNING id"
    values = [@film_id, @times]
    star = SqlRunner.run(sql, values).first
    @id = star['id'].to_i
  end

  def self.delete_all()
    sql = "DELETE FROM screenings"
    SqlRunner.run(sql)
  end


end
