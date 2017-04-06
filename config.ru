require_relative 'config/environment'

use Rack::MethodOverride
use BooksController
use GenresController
use HomeController
run ApplicationController
