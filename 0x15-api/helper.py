#!/usr/bin/python3
"""
Checks student output for returning info from REST API
"""

import requests
import sys

users_url = "https://jsonplaceholder.typicode.com/users"
todos_url = "https://jsonplaceholder.typicode.com/todos"

def first_line(user_id):
    """ Fetch user name """
    
    try:
        resp = requests.get(users_url).json()
    except requests.RequestException as e:
        print(f"Error fetching users: {e}")
        sys.exit(1)

    name = None
    for user in resp:
        if user['id'] == user_id:
            name = user['name']
            break
    
    if name is None:
        print(f"User with ID {user_id} not found.")
        sys.exit(1)

    filename = 'student_output'
    try:
        with open(filename, 'r') as f:
            first = f.readline().strip()
    except FileNotFoundError:
        print(f"File {filename} not found.")
        sys.exit(1)
    except IOError as e:
        print(f"Error reading file {filename}: {e}")
        sys.exit(1)

    if name in first:
        print("Employee Name: OK")
    else:
        print("Employee Name: Incorrect")

if __name__ == "__main__":
    try:
        user_id = int(sys.argv[1])
    except (IndexError, ValueError):
        print("Usage: {} <user_id>".format(sys.argv[0]))
        sys.exit(1)
    
    first_line(user_id)

