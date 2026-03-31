import sys

def parse_logs(file_path):
error_keywords = ["ERROR", "CRITICAL", "FAILED"]
warning_keywords = ["WARNING"]

```
errors = []
warnings = []

with open(file_path, "r") as file:
    for line in file:
        if any(word in line for word in error_keywords):
            errors.append(line.strip())
        elif any(word in line for word in warning_keywords):
            warnings.append(line.strip())

print("===== LOG ANALYSIS =====\n")

print(f"❌ Errors Found: {len(errors)}")
for e in errors:
    print(e)

print("\n⚠️ Warnings Found:", len(warnings))
for w in warnings:
    print(w)
```

if **name** == "**main**":
if len(sys.argv) != 2:
print("Usage: python log_parser.py <log_file>")
sys.exit(1)

```
parse_logs(sys.argv[1])
```
