import "paul"
import "root"
import "fgonzal"

class users {

  include users::root
  include users::paul
  include users::fgonzal
  
}
