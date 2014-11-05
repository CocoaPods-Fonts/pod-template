require 'bacon'

$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '../lib/')
require 'fonts/models'

describe 'A font' do
  before do
    @font = Font.new('OpenSans', [FontStyle.new('Regular', 'OpenSans-Regular', 'OpenSans.ttf')])
  end

  it 'should have a name' do
    @font.name.should.equal('OpenSans')
  end

  it 'should have an extension name' do
    @font.extension_name.should.equal('OpenSans')
  end

  it 'should have a method component' do
    @font.method_component.should.equal('openSans')
  end

  it 'should have font styles' do
    @font.styles[0].name.should.equal('Regular')
  end
end

