#!/usr/bin/env bash

totp () {
    secret=$1
    oathtool --totp -b $secret
}

read_secret () {
    png_path=$1
    origIFS=$IFS

    otp_url=$(zbarimg $png_path 2>/dev/null)

    # Splitting into an array borrowed from
    # https://stackoverflow.com/a/10586169/2372767
    IFS='?' read -r -a otp_url_parts <<< "$otp_url"

    # Array & query parsing borrowed from
    # https://stackoverflow.com/a/3919908/2372767
    IFS='&=' read -r -a otp_query_array <<< "${otp_url_parts[1]}"

    for ((i=0; i<${#otp_query_array[@]}; i+=2))
    do
        declare query_${otp_query_array[i]}=${otp_query_array[i+1]}
    done

    # shellcheck disable=2154
    echo "$query_secret"

    IFS=$origIFS
}
