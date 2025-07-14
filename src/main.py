import os

def sync_products():
    # TODO: replace with your real sync logic
    print("🔄 Product-sync running against project:", os.getenv("GOOGLE_CLOUD_PROJECT"))

if __name__ == "__main__":
    sync_products()
