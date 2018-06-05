#!/bin/bash
curl -v \
     -X POST \
     -u admin:password \
     -H 'X-Killbill-ApiKey: test' \
     -H 'X-Killbill-ApiSecret: test' \
     -H 'X-Killbill-CreatedBy: test' \
     -H 'Content-Type: text/plain' \
     -d ':bit_pay:
  :api_key: "Hello World"' \
     http://127.0.0.1:8080/1.0/kb/tenants/uploadPluginConfig/killbill-stripe

curl -v \
     -u admin:password \
     -H "X-Killbill-ApiKey: test" \
     -H "X-Killbill-ApiSecret: test" \
     -H "Content-Type: application/json" \
     -H "X-Killbill-CreatedBy: test" \
     -X POST \
     --data-binary '{
       "formFields": [
         {
           "key": "notify_url",
           "value": "http://google.com"
         },
         {
           "key": "amount",
           "value": 0.12345
         },
         {
           "key": "currency",
           "value": "BTC"
         }
       ]
     }' \
     "http://127.0.0.1:8080/1.0/kb/paymentGateways/hosted/form/2662f818-8c76-494b-997a-3e67cb187485"