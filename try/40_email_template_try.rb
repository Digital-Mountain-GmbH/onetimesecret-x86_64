require 'onetime'

OT.load!

@cust = OT::Customer.new :tryouts
@secret = OT::Secret.new :tryouts

## Can create a view
view = OT::Email::Welcome.new @cust, @secret
puts view.render
[view.verify_uri, view[:secret]]
true
#=> true