# see more docs https://developers.braintreepayments.com/start/hello-server/ruby
require "test_helper"
class OrderTransactionTest < Minitest::Test
    include FactoryGirl::Syntax::Methods

  def test_create_a_transaction
    order = Order.new
    order.order_item << OrderItem.new(product: build(:product), quantity: 1)
    nonce = Braintree::Test::Nonce::Transactable
    transaction =OrderTransaction.new(order: order , nonce: nonce)
    transaction.execute

    assert transaction.ok? ,  "Expected transaction to be successful."
    
  end
end