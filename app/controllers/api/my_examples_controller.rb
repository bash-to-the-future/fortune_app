class Api::MyExamplesController < ApplicationController
  def fortune_action
    possible_fortunes = [
                          "you will live a long and healthy life.",
                          "you will die an agonizing death.",
                          "you will eat popcorn",
                          "check back later, I'm tired."
                        ]
    @my_fortune = possible_fortunes[rand(possible_fortunes.length)]
    render 'fortune_view.json.jb'
  end

  def lotto_action
    numbers = (0..60).to_a
    @winning_ticket = numbers.sample(6)

    render 'lotto_view.json.jb'
  end

  def page_count_action
    @count = 0
    @count = @count + 1
    render 'page_count_view.json.jb'
  end
end
