#!/usr/bin/env python3

import os
import sys
import sqlite3

def session_query(session_name):
    return f"""
        select a.id
        from moz_bookmarks a
        join moz_bookmarks b
        on a.parent = b.id and b.title = 'Sessions'
        where a.title = '{session_name}'
    """

def urls_query(session_id):
    return f"""
        select moz_places.url
        from moz_bookmarks
        left outer join moz_places
        on moz_places.id = moz_bookmarks.fk
        where moz_bookmarks.parent = {session_id}
    """

def main():
    profile_path = "/home/skaaj/.var/app/org.mozilla.firefox/.mozilla/firefox/04fpnkwr.default-release-1645375570001"
    
    conn = sqlite3.connect(profile_path + "/places.sqlite")
    cursor = conn.cursor()
    session_id = cursor.execute(session_query(sys.argv[1])).fetchone()[0]
    bookmark_urls = cursor.execute(urls_query(session_id)).fetchall()
    conn.close()

    command = f"flatpak run org.mozilla.firefox -url {' '.join([it[0] for it in bookmark_urls])}"
    print(command)
    os.system(command)

if __name__ == "__main__":
    main()
