#!/usr/bin/python3
"""
Queries the Reddit API and returns the number of subscribers for a subreddit.
"""

import requests


def number_of_subscribers(subreddit):
    url = "https://www.reddit.com/r/{}/about.json".format(subreddit)
    headers = {'User-Agent': 'YourVANnenna'}
    response = requests.get(url, headers=headers)

    if response.status_code == 200:
        data = response.json().get('data', {})
        subscribers = data.get('subscribers', 0)
        return subscribers
    else:
        return 0
