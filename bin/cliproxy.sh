#!/bin/bash

# Check parameters, if none, show the usage.
case $1 in 
    "on")
      http_proxy=http://127.0.0.1:6152
      https_proxy=http://127.0.0.1:6152
      all_proxy=sock5://127.0.0.1:6153
      export http_proxy
      export https_proxy
      export all_proxy
      echo 'Command Line Proxy: ON
      \n\thttp_proxy='$http_proxy'\n\thttps_proxy='$https_proxy'\n\tall_proxy='$all_proxy'\n'
      ;;
    "off")
      http_proxy=''
      https_proxy=''
      all_proxy=''
      export http_proxy
      export https_proxy
      export all_proxy
      echo 'Command Line Proxy: OFF
      \n\thttp_proxy='$http_proxy'\n\thttps_proxy='$https_proxy'\n\tall_proxy='$all_proxy'\n'
      ;;
    "status")
      echo "http_proxy="$http_proxy
      echo "https_proxy="$https_proxy
      echo "all_proxy="$all_proxy
      ;;
    *)
      echo "\033[1;31m!!! Using 'source' to start this shell script !!!"
      echo "\033[1;32mUsage: source $0 (on|off|status) \n \033[0m"
      ;;
esac
