# dependencies of the pupu
dependency :mootools

# load javascripts
javascript "Lighter"

# parameters of plugin
themes   = Dir["#{self.root}/stylesheets/Flame.*.css"].map { |theme| File.basename(theme).split(".")[1] }
syntaxes = Dir["#{self.root}/javascripts/Fuel.*.js"].map { |theme| File.basename(theme).split(".")[1] }

# pupu :lighter, theme: "mocha"
parameter :theme, :optional => themes do |theme|
 stylesheet "Flame.#{theme}"
end

# pupu :lighter, syntax: "ruby"
parameter :syntax, :optional => syntaxes do |syntax|
 javascript "Fuel.#{syntax}"
end
