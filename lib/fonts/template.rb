def save(font, destination)

  files = {
    'UIFont.h' => "UIFont+#{font.extension_name}.h",
    'UIFont.m' => "UIFont+#{font.extension_name}.m",
    'UIFontTests.m' => "#{font.extension_name}Tests.m",
    'UIFont.podspec' => "#{font.extension_name}.podspec",
  }

  files.each do |source, destination|
    template = ERB.new(File.read(source))
    File.write(destination, template.result)
  end
end

