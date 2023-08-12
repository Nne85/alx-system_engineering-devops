#!/usr/bin/python3
"""
Queries the Reddit API and prints the titles of the first 10 hot posts for a subreddit.
"""

import requests


def top_ten(subreddit):
    url = "https://www.reddit.com/r/{}/hot.json".format(subreddit)
    headers = {'User-Agent': 'YourVANnenna'}
    params = {'limit': 10}
    response = requests.get(url, headers=headers, params=params)

    if response.status_code == 200:
        data = response.json().get('data', {}).get('children', [])
        for post in data:
            print(post['data']['title'])
    else:
        print(None)
