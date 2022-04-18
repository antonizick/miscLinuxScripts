#!/usr/bin/python3
import nx
import sys
import requests
import urllib
import re
from bs4 import BeautifulSoup
import os
import random
import string
from sys import argv

if __name__ == "__main__":
	print (str(sys.argv))

	if len(sys.argv) > 1:
		print (str(sys.argv))
		script, first_arg = argv
		path = '/outhouse/unsorted/sto/' + first_arg
	else:
		path = './'

	print('Path: \033[92m' ,path ,'\033[0m')

	files = os.listdir(path)
	for file in files:
		print(' .',file,end="")
	print(' ')
	print(' ')

	files = os.listdir(path)
	for file in files:
		cutfile = list(file)
		newfile = ""
		for i in range(0, 18):
			newfile = newfile + (random.choice(string.ascii_letters))
		newfile = ''.join(random.choice(string.ascii_letters) for i in range(18))
		oldfile = path + '/' + file
		newfile = path + '/' + newfile + '.mp4'
		os.rename(oldfile, newfile[:90]+'')
	files = os.listdir(path)
	for file in files:
		print(' :',file,end="")
	print(' ')
	print(' ')
