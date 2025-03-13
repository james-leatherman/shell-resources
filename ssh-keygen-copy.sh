#!/bin/bash

ssh-keygen -t rsa -b 2048 -f ~/.ssh/id_rsa -q -N ""
ssh-copy-id user@remote_server
echo "SSH key setup completed."
