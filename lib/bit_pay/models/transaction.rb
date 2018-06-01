module Killbill #:nodoc:
  module BitPay #:nodoc:
    class BitPayTransaction < ::Killbill::Plugin::ActiveMerchant::ActiveRecord::Transaction

      self.table_name = 'bit_pay_transactions'

      belongs_to :bit_pay_response

    end
  end
end
