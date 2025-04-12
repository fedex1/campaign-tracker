import csv
import io
import sys

data = sys.stdin.read()

# Split the data into lines
lines = data.strip().split('\n')

# Identify the header (line containing column names)
header_line = None
for i, line in enumerate(lines):
    if "NO." in line and "PARTY" in line and "OFFICE" in line:
        header_line = i
        break

if header_line is None:
    print("Error: Header not found in the data.")
else:
    # Extract the header
    header = [col.strip() for col in lines[header_line].split('  ') if col.strip()]

    # Extract the data rows, skipping lines before the header and any empty lines
    data_rows = []
    for line in lines[header_line + 1:]:
        row = [col.strip() for col in line.split('  ') if col.strip()]
        if row:
            data_rows.append(row)

    # Ensure all data rows have the same number of columns as the header
    for row in data_rows:
        while len(row) < len(header):
            row.append('')  # Pad with empty strings if necessary
        row[:] = row[:len(header)]  # Truncate if too long

    # Format the data as CSV
    output = io.StringIO()
    writer = csv.writer(output)
    writer.writerow(header)
    writer.writerows(data_rows)
    csv_string = output.getvalue()

    # Print the CSV string
    print(csv_string)
