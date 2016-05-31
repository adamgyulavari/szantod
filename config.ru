require 'sinatra'
require 'haml'
require 'sass'
require 'sass/plugin/rack'
require './szantod'

Sass::Plugin.options[:style] = :compressed
use Sass::Plugin::Rack
run Szantod
