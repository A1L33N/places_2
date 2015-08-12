class Place
  @@places = []
  attr_reader :name, :description
  define_method(:initialize) do |name, description|
    @name = name
    @description = description
  end

  define_singleton_method(:all) do
    @@places
  end

  define_method(:save) do
    @@places.push(self)
  end

  define_singleton_method(:clear) do
    @@places = []
  end
end
