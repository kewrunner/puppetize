import "peter"
import "tim"
import "fgonzal"

class users {

  include users::root
  include users::peter
  include users::fgonzal
  
}
