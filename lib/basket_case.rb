require "basket_case/version"
require 'titlecase'

module BasketCase
  def altcase
    if upcase == self or downcase == self
      downcase.split('-').map{|s|s.titlecase}.join('-')
    else
      self
    end
  end
end

class String
  include BasketCase
end
