#/bin/bash
echo "start ...$#"

if [[ $# < 1 ]]; then
  echo "must input pub file name"
  exit 1
fi

file_name=$1
echo $file_name
ssh-keygen -t rsa
echo "IdentityFile ~/.ssh/$file_name" >> ~/.ssh/config
chmod 600 ~/.ssh/config

ssh qtj01
ssh qtj02
ssh qtj03
ssh qtj04
