#!/usr/bin/env python
import sys
import requests

install_id = sys.argv[1]
install_token = sys.argv[2]
title = sys.argv[3]
content = sys.argv[4]

url = f"https://hooks.twist.com/api/v3/integration_incoming/post_data?install_id={install_id}&install_token={install_token}"
payload = {"title":title, "content":content}

requests.post(url, json = payload)