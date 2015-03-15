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
    expected = [{"severity" => "INFO","time" => "",
                "msg" => {"a" => "foo","b" => "bar"}},
                {"severity" => "ERROR","time" => "",
                "msg" => {"c" => "baz","d" => "quux"}}]
    s.string.split("\n").map {|l| JSON.parse(l)}.zip(expected).each do |l|
      l[0]["time"] = ""
      expect(l[1]).to eq(l[0])
    end
  end
end
