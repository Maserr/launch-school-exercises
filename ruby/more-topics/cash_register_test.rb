require 'minitest/autorun'
require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  def test_accept_money
    register = CashRegister.new(10000)
    transaction = Transaction.new(200)
    transaction.amount_paid = 200

    previous_amount = register.total_money
    register.accept_money(transaction)
    current_amount = register.total_money

    assert_equal previous_amount + 200, current_amount
  end

  def test_change
    register = CashRegister.new(10000)
    transaction = Transaction.new(200)
    transaction.amount_paid = 300

    assert_equal 100, register.change(transaction)
  end

  def test_give_receipt
    item_cost = 200
    register = CashRegister.new(10000)
    transaction = Transaction.new(item_cost)

    assert_output("You've paid $#{item_cost}.\n") do
      register.give_receipt(transaction)
    end
  end
end
