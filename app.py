import sqlite3
import os

DB_FILENAME = 'statsphere.db'

def run_sql_script(conn, filename):
    with open(filename, 'r') as f:
        sql_script = f.read()
    conn.executescript(sql_script)
    conn.commit()

def setup_database():
    should_create = not os.path.exists(DB_FILENAME)
    conn = sqlite3.connect(DB_FILENAME)
    if should_create:
        run_sql_script(conn, 'schema.sql')
        run_sql_script(conn, 'data.sql')
    return conn

def list_all_teams(conn):
    cursor = conn.cursor()
    cursor.execute("""
        SELECT T.name, L.name as league_name, S.name as sport_name
        FROM Team T
        JOIN League L ON T.league_id = L.league_id
        JOIN Sport S ON L.sport_id = S.sport_id
    """)
    rows = cursor.fetchall()
    print("\nAll Teams:")
    for row in rows:
        print(f"Team: {row[0]} | League: {row[1]} | Sport: {row[2]}")

def show_player_stats(conn, player_name):
    cursor = conn.cursor()
    cursor.execute("""
        SELECT P.name, G.date, PG.passing_yards, PG.points
        FROM Player P
        JOIN PlayerGameStats PG ON P.player_id = PG.player_id
        JOIN Game G ON PG.game_id = G.game_id
        WHERE P.name = ?
    """, (player_name,))
    rows = cursor.fetchall()
    if rows:
        print(f"\nGame Stats for {player_name}:")
        for row in rows:
            print(f"Date: {row[1]} | Passing Yards: {row[2]} | Points: {row[3]}")
    else:
        print(f"\nNo stats found for player: {player_name}")

def list_games_in_season(conn, league_name, year):
    cursor = conn.cursor()
    cursor.execute("""
        SELECT G.game_id, G.date, L.name, S.year
        FROM Game G
        JOIN Season S ON G.season_id = S.season_id
        JOIN League L ON S.league_id = L.league_id
        WHERE L.name = ? AND S.year = ?
    """, (league_name, year))
    rows = cursor.fetchall()
    if rows:
        print(f"\nGames in {league_name} {year}:")
        for row in rows:
            print(f"Game ID: {row[0]} | Date: {row[1]}")
    else:
        print(f"\nNo games found for {league_name} {year}")

def main_menu(conn):
    while True:
        print("\n--- StatSphere Menu ---")
        print("1. List all teams")
        print("2. Show player stats by name")
        print("3. List games in a given league and year")
        print("4. Exit")
        choice = input("Choose an option: ").strip()

        if choice == "1":
            list_all_teams(conn)
        elif choice == "2":
            player_name = input("Enter player name: ").strip()
            show_player_stats(conn, player_name)
        elif choice == "3":
            league = input("Enter league name (e.g. 'NFL'): ").strip()
            year_str = input("Enter year (e.g. '2021'): ").strip()
            if year_str.isdigit():
                year = int(year_str)
                list_games_in_season(conn, league, year)
            else:
                print("Invalid year.")
        elif choice == "4":
            break
        else:
            print("Invalid choice, please try again.")

def main():
    conn = setup_database()
    main_menu(conn)
    conn.close()

if __name__ == "__main__":
    main()
