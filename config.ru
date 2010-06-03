root = "public"

require "adsf"

app = Rack::Builder.new do
  use Rack::CommonLogger
  use Rack::ShowExceptions
  use Rack::Lint
  use Adsf::Rack::IndexFileFinder, :root => root
  run Rack::File.new(root)
end.to_app

run app