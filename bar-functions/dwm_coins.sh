#!/bin/sh

# A dwm_status function that displays the status of countdown.sh
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# Dependencies: https://github.com/joestandring/countdown

dwm_coins () {
	printf "DOGE: %s " "$(curl -s  --location --request GET 'api.coincap.io/v2/assets/dogecoin' | jq '.data.priceUsd' | awk '{print substr($0,2,7)}')"
	printf "ETH: %s " "$(curl -s   --location --request GET 'api.coincap.io/v2/assets/ethereum' | jq '.data.priceUsd' | awk '{print substr($0,2,7)}')"
	printf "LINK: %s" "$(curl -s  --location --request GET 'api.coincap.io/v2/assets/chainlink' | jq '.data.priceUsd' | awk '{print substr($0,2,7)}')"
	printf "%s" "$SEP2"
}

dwm_coins
