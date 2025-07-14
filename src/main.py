import os
from googleapiclient.discovery import build

def sync_products():
    # TODO: implement your product‐sync logic here
    print("🔄 Product‐sync running against project:", os.getenv("GOOGLE_CLOUD_PROJECT"))

if __name__ == "__main__":
    sync_products()
