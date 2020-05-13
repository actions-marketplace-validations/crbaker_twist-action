#!/usr/bin/env python
import sys
import requests

twist_url = sys.argv[1]
content = sys.argv[2]

requests.post(twist_url, json = {"content": content})
