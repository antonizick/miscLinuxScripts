#!/usr/bin/python3
'''
    ----------------------------
Date: 29 May 2017
Author: Nick Antonizick

    Web Scraper

     ----------------------------
'''

import pip
import requests
import urllib
import re
from bs4 import BeautifulSoup
import os
import subprocess

def draw_line():
    print("-" * 100)

def search_rt():
    # Set Enviornment ------------------------------------------------------
    nx_anchors = set()
    nx_hrefs = set()
    nx_titles = set()
    os.system('clear')
    os.system('curl ipinfo.io')
    os.system('expressvpn status')
    user_message = "\n\nShould we retain the existing list?\n\n"
    user_input = input(user_message)
    if user_input == 'y':
        print('Understood.  We will retain the existing list.')
    elif user_input == 'n':
        print('Thank you.  Clearing existing list.')
        # os.system('rm golist.txt')
        with open("golist.txt","w") as out:
            print(' ')
    else:
        print("Meaningless input.")
        return
        # os.system('rm golist.txt')
        # with open("golist.txt","w") as out:
        #     print(' ')
        user_message = "\n\nShould we retain the existing list?\n\n"
        user_input = input(user_message)
    # RT Variables ---------------------------------------------------------
    user_message = "\n\nWhat are we searching for?\n\n"
    user_input = input(user_message)
    user_input = user_input.replace(' ', '+')
    tgt_url = "https://www.redtube.com/?search=" + user_input
    print('\nGoing to: ' + tgt_url)
    root_url = "https://www.redtube.com"
    regex_search = re.compile(r'\d{5,8}')
    out_file = "videolinks.txt"
    # Now Do the work, get the page ----------------------------------------
    # ---- original way
    response = urllib.request.urlopen(tgt_url)
    # print('\nWe got a response: ' + response)
    # ---- hotwire file read
    # response = open('cap','r').read()
    # ---- potentially another way
    # response = requests.get(tgt_url)
    # print('\nWe got a response: ' + response)
    soup = BeautifulSoup(response, 'html.parser')
    # Pull href from anchor tags -------------------------------------------
    nx_anchors = soup.find_all('a')
    loop_count = 0
    titleList = list()
    urlList = list()
    draw_line()
    for link in soup.find_all('a'):
        if re.search(regex_search,str(link)):
                asscURL = (root_url + link.get('href'))
                title = (link.get('title'))
                if title is not None:
                    if len(title) > 15:
                        loop_count = loop_count + 1
                        print('(',loop_count,'): ', title)
                        titleList.append(title)
                        urlList.append(asscURL)
    list_total = loop_count
    loop_count = 0
    user_message = "\n\nShould I grab everything in sight? (y/n q)\n\n"
    user_input = input(user_message)
    if user_input == 'q':
        return
    if ',' not in user_input:
        # -----------------------------------------------------------------
        # Conventional (entry by entry) selection
        # -----------------------------------------------------------------
        print('no index request detected')
        user_input = user_input.replace(' ', '+')
        offer_choice = user_input
        with open(out_file,"w") as out:
            for link in soup.find_all('a'):
                if re.search(regex_search,str(link)):
                        # print(root_url + link.get('href'))
                        title = (link.get('title'))
                        if title is not None:
                            # print(len(title))
                            if len(title) > 15:
                                    os.system('clear')
                                    print('-----')
                                    loop_count = loop_count + 1
                                    print('(\033[92m',loop_count,'/',list_total,'\033[0m): ', title)
                                    if offer_choice != 'y':
                                        user_message = "\n\nDo you want to collect this?\n(y/n q)\n\n"
                                        user_input = input(user_message)
                                        if user_input == 'q':
                                            return
                                        user_input = user_input.replace(' ', '+')
                                    else:
                                        user_input = 'y'
                                    if user_input == 'y':
                                        nx_titles.add(link.get('title'))
                                        out.write(root_url + link.get('href') + "\n")
                                        print("added")
        with open(out_file) as input_file:
            for i, line in enumerate(input_file):
                if re.search(regex_search,str(line)):
                    nx_hrefs.add(line)
        with open("golist.txt","a") as out:
            for hline in nx_hrefs:
                out.write(hline)
                #print(line)
        # draw_line()
        for element in nx_titles:
            print(element)
        draw_line()
        # -----------------------------------------------------------------
    else:
        # -----------------------------------------------------------------
        # New index based request selection
        # -----------------------------------------------------------------
        print('index request was detected')
        selectionList = user_input.split(',')
        with open("golist.txt","a") as out:
            for user_Selection in selectionList:
                print('  ',user_Selection,'    ',titleList[int(user_Selection)-1],'    ',urlList[int(user_Selection)-1])
                out.write(urlList[int(user_Selection)-1] + "\n")
        # -----------------------------------------------------------------

    user_message = "\nWould You Like me to retrieve these files now? (y/n)\n(q to quit):> "
    user_input = input(user_message)
    if user_input == 'y':
        print("Invoking YT-DL")
        subprocess.call("./go.sh")
        print("Finished")
        print("-" * 100)
    user_input = "n"

