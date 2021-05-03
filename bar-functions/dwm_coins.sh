#!/bin/sh

# A dwm_status function that displays the status of countdown.sh
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# Dependencies: https://github.com/joestandring/countdown

dwm_coins () {
#	printf "BTC: %s " "$(curl -s  --location --request GET 'api.coincap.io/v2/assets/bitcoin' | jq '.data.priceUsd' | awk '{print substr($0,2,8)}')"
#	printf "DOGE: %s " "$(curl -s  --location --request GET 'api.coincap.io/v2/assets/dogecoin' | jq '.data.priceUsd' | awk '{print substr($0,2,7)}')"
#	printf "ETH: %s " "$(curl -s   --location --request GET 'api.coincap.io/v2/assets/ethereum' | jq '.data.priceUsd' | awk '{print substr($0,2,7)}')"
#	printf "LINK: %s" "$(curl -s  --location --request GET 'api.coincap.io/v2/assets/chainlink' | jq '.data.priceUsd' | awk '{print substr($0,2,7)}')"
#	printf "%s" "$SEP2"

#	printf "%s " "$(curl --location --request GET 'api.coincap.io/v2/assets?ids=bitcoin,ethereum,dogecoin,chainlink' | jq '.data[0].priceUsd, .data[1].priceUsd, .data[2].priceUsd, .data[3].priceUsd' | awk '{print substr($0,2,7)}' | tr '\n' ' ') "
	printf "%s" "$(curl --location --request GET 'api.coincap.io/v2/assets?ids=bitcoin,ethereum,dogecoin,chainlink' | jq '.data[0].symbol, .data[0].priceUsd, .data[1].symbol, .data[1].priceUsd, .data[2].symbol, .data[2].priceUsd, .data[3].symbol, .data[3].priceUsd' | awk '{print substr($0,2,7)}' | tr '\n' ' ')"
	printf "%s" "$SEP2"
}

dwm_coins
