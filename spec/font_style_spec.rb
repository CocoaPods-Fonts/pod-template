require 'bacon'

$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '../lib/')
require 'fonts/models'

describe 'A font style' do
  before do
    @font_style = FontStyle.new('Italic', 'OpenSans-Italic', 'OpenSans-Italic.ttf')
  end

  it 'should have a name' do
    @font_style.name.should.equal('Italic')
  end

  it 'should have a font name' do
    @font_style.font_name.should.equal('OpenSans-Italic')
  end

  it 'should have a file name' do
    @font_style.file_name.should.equal('OpenSans-Italic.ttf')
  end

  it 'should have a method component' do
    @font_style.method_component.should.equal('Italic')
  end

  it 'should have an empty method component for regular styles' do
    font_style = FontStyle.new('Regular', 'OpenSans-Regular', 'OpenSans.ttf')
    font_style.method_component.should.equal('')
  end
end

