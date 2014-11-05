Pod::Spec.new do |spec|
  spec.name = '<%= font.name >'
  spec.version = '1.0.0'
  spec.summary = nil
  spec.description = nil
  spec.license = nil
  spec.authors = nil
  spec.homepage = 'https://github.com/CocoaPods-Fonts/<% font.name >'
  spec.screenshot = "https://raw.githubusercontent.com/CocoaPods-Fonts/<% font.name >/#{spec.version}/<% font.name >-Screenshot.png"
end

