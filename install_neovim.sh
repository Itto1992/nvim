os=`cat /etc/os-release`
if [[ "$os" =~ "Alpine" ]]; then
  apk update 
  apk add --no-cache git neovim neovim-doc python3
  rm -rf /var/cache/apk/*
else
  echo "os not found"
  exit 1
fi
