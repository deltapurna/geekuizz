class PageQuiz
  include ActiveModel::Model

  attr_accessor :total_digit

  def self.create_problem(range = 20..500)
    new(total_digit: rand(range))
  end

  def solution
    (self.total_digit + (10 ** digit_number/9 - digit_number))/digit_number
  end

  def digit_number
    (Math.log10(self.total_digit) + 1 ).to_i
  end
end
