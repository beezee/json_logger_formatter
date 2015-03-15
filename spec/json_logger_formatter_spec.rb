require 'spec_helper'
require 'stringio'
require 'logger'

describe JsonLoggerFormatter::Formatter do

  it 'formats log messages as json' do
    s = StringIO.new
    l = Logger.new(s)
    l.formatter = JsonLoggerFormatter::Formatter
    l.info({a: 'foo', b: 'bar'})
    l.error({c: 'baz', d: 'quux'})
    puts s.string
  end
end
