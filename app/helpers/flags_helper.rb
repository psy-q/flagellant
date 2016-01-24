module FlagsHelper

  def random_hexcolor
    [rand(0...255), rand(0...255), rand(0...255)].map{|x| '%02x'%x}.join
  end
end
