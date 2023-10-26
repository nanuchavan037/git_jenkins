import psutil
import time

def print_hello():
    print("Hello,This is demo ")

def monitor_system_resources(interval_seconds=10):
    while True:
        cpu_percent = psutil.cpu_percent()
        mem = psutil.virtual_memory()
        print(f"CPU Usage: {cpu_percent}%")
        print(f"Memory Usage: Total={mem.total} MB, Available={mem.available} MB, Used={mem.used} MB")
        print('-' * 40)
        time.sleep(interval_seconds)

if __name__ == "__main__":
    print_hello()
    monitor_system_resources()
