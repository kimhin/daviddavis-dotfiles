
# Check parameters, if none, show the usage.
case $1 in 
    "on")
      http_proxy=127.0.0.1:6152
      https_proxy=127.0.0.1:6152
      export http_proxy
      export https_proxy
      echo 'Command Line Proxy: ON \n\thttp_proxy'=$http_proxy'\n\thttps_proxy='$https_proxy'\n'
      ;;
    "off")
      http_proxy=''
      https_proxy=''
      export http_proxy
      export https_proxy
      echo 'Command Line Proxy: OFF \n\thttp_proxy'=$http_proxy'\n\thttps_proxy='$https_proxy'\n'
      ;;
    *)
      echo -e "\033[1;32mUsage: $0 (on|off) \n \033[0m"
      ;;
esac
