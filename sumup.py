import json
import glob
import sys
import os

if len(sys.argv) < 2:
    print("Usage: python script.py <base_dir>")
    sys.exit(1)

base_dir = sys.argv[1]

pattern = os.path.join(base_dir, "*", "*.json")
files = glob.glob(pattern)

daily = {}

for file in files:
    with open(file) as f:
        data = json.load(f)

        for entry in data["clones"]:
            date = entry["timestamp"][:10]  # YYYY-MM-DD

            # overwrite so latest file wins for duplicates
            daily[date] = {
                "count": entry["count"],
                "uniques": entry["uniques"]
            }

# totals
total_clones = sum(day["count"] for day in daily.values())
total_uniques = sum(day["uniques"] for day in daily.values())

print("Total clones:", total_clones)
print("Total uniques:", total_uniques)