import requests

# status_codes contain data for requests
status_codes = [200, 204, 304, 404, 500]

# chech_status perform http request and work with response
def check_status(code):
    url = f"https://httpstat.us/{code}"
    try:
        response = requests.get(url)
        if 100 <= response.status_code < 400:
            print(f"[INFO] Response status: {response.status_code}, Body: {response.text.strip()}")
        elif 400 <= response.status_code < 600:
            raise Exception(f"[ERROR] Response error status: {response.status_code} - {response.text.strip()}")
    except Exception as e:
        print(e)

# check status for each code
def main():
    for code in status_codes:
        check_status(code)

if __name__ == "__main__":
    main()
