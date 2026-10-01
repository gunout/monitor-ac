#!/usr/bin/env python3
import urllib.request
from pathlib import Path
DATA_DIR = Path(__file__).parent.parent / "data"
DATA_DIR.mkdir(exist_ok=True)
URL = "https://data.economie.gouv.fr/api/explore/v2.1/catalog/datasets/prix-des-carburants-en-france-flux-instantane-v2/exports/json"
def download(url, output):
    print(f"Telechargement : {output}")
    try:
        req = urllib.request.Request(url, headers={"User-Agent":"Monitor/1.0"})
        with urllib.request.urlopen(req, timeout=60) as r:
            data = r.read()
        with open(output, "wb") as f:
            f.write(data)
        print(f"  OK - {len(data):,} octets")
    except Exception as e:
        print(f"  Erreur : {e}")
if __name__ == "__main__":
    download(URL, DATA_DIR / "prix-carburants.json")
