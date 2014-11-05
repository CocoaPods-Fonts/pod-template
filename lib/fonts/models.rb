class FontStyle
  attr_reader :name
  attr_reader :font_name
  attr_reader :file_name

  def initialize(name, font_name, file_name)
    @name = name
    @font_name = font_name
    @file_name = file_name
  end

  def method_component
    if @name == 'Regular'
      ''
    else
      @name
    end
  end
end

class Font
  attr_reader :name
  attr_reader :styles

  def initialize(name, styles)
    @name = name
    @styles = styles
  end

  def method_component
    @name[0].downcase + @name[1..-1]
  end

  def extension_name
    @name.gsub(/ |\-/, '')
  end

  def save(font, output_directory)
    files = {
      'UIFont.h' => "UIFont+#{extension_name}.h",
      'UIFont.m' => "UIFont+#{extension_name}.m",
      'UIFontTests.m' => "#{extension_name}Tests.m",
      'UIFont.podspec' => "#{extension_name}.podspec",
    }

    files.each do |source, destination|
      template = ERB.new(File.read(source))
      File.write(File.join(output_directory, destination), template.result)
    end
  end
end

