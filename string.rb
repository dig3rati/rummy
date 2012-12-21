class String
  @@color_base = 30
  @@colors = {
    :black    => 0,
    :red      => 1,
    :green    => 2,
    :yellow   => 3,
    :blue     => 4,
    :magenta  => 5,
    :cyan     => 6,
    :white    => 7
  }

  def colorize(color_code)
    "\e[#{color_code}m#{self}\e[0m"
  end
  
  def method_missing(method_name, *args)
    if @@colors[method_name.to_sym]
      colorize(@@color_base + @@colors[method_name.to_sym])
    else
      super
    end
  end
end
