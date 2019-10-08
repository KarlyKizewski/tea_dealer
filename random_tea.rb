class Tea
  attr_accessor :type, :flavor, :color, :aroma

  def initialize(type, flavor, color, aroma)
    @type = type
    @flavor = flavor
    @color = color
    @aroma = aroma
  end

  def output_tea
    puts "You are sipping #{@color} #{@type} with #{@flavor} flavor and an aroma of #{@aroma}."
  end
end

class Gaiwan
  def initialize
    @teas = []
    @types = [:chinese_green, :japanese_green, :taiwanese_oolong, :nepalese_black, :yunnan_raw_puer, :matcha, :indian_darjeeling]
    @flavors = [:vegetal, :spinach, :floral, :citrus, :toasted, :mineral, :gamey, :seaweed, :astringent, :bitter, :sweet]
    @colors = [:walnut, :honey, :amber, :mustard, :mahogany, :chartreuse, :juniper, :emerald, :pear, :tawny]
    @aromas = [:fresh_flowers, :raspberries, :wood_clippings, :wet_stone, :the_ocean, :basement, :tobacco, :grass, :autumn_air]
    
    @types.each do |type|
      @flavors.each do |flavor|
        @colors.each do |color|
          @aromas.each do |aroma|
            @teas << Tea.new(type, flavor, color, aroma)
          end
        end
      end
    end
  @teas.shuffle!
  end

  def deal (number)
    number.times {@teas.shift.output_tea}
  end
end

gaiwan = Gaiwan.new
gaiwan.deal(1)

