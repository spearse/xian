#!/usr/bin/env python3

import argparse
import random
import time
import sys
import signal
import subprocess

from pythonosc import udp_client

print(sys.argv[1])

class xian_network_device:
	def __init__(self):
		print("xian network interface created")

networkdevice = xian_network_device()

