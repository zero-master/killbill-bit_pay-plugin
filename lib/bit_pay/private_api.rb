module Killbill #:nodoc:
  module BitPay #:nodoc:
    class PrivatePaymentPlugin < ::Killbill::Plugin::ActiveMerchant::PrivatePaymentPlugin
      def initialize(session = {})
        super(:bit_pay,
              ::Killbill::BitPay::BitPayPaymentMethod,
              ::Killbill::BitPay::BitPayTransaction,
              ::Killbill::BitPay::BitPayResponse,
              session)
      end
    end
  end
end
