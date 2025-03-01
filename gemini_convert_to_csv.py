import csv
import re

def extract_data(html_content):
    """Extracts political committee data from HTML content."""

    committees = []
    committee_blocks = re.findall(r'<tr.*?>(.*?)</tr>', html_content, re.DOTALL)

    for block in committee_blocks:
        data_cells = re.findall(r'<td.*?>(.*?)</td>', block, re.DOTALL)
        if len(data_cells) == 3:  # Ensure we have the correct number of cells
            committee_info = data_cells[0]
            treasurer_info = data_cells[1]
            contribution_info = data_cells[2]

            # Extract committee details
            committee_name = re.search(r'<strong>(.*?)</strong>', committee_info, re.DOTALL)
            committee_name = committee_name.group(1).strip() if committee_name else ""
            address = re.search(r'<br>(.*?)\s*<br>', committee_info, re.DOTALL)
            address = address.group(1).strip() if address else ""
            incorporated = re.search(r'<strong>Is this committee incorporated\? </strong>(.*?)\s*<br>', committee_info, re.DOTALL)
            incorporated = incorporated.group(1).strip() if incorporated else ""
            registration_date = re.search(r'<strong>Registration Date: </strong>(.*?)\s*<br>', committee_info, re.DOTALL)
            registration_date = registration_date.group(1).strip() if registration_date else ""
            telephone = re.search(r'<strong>Telephone: </strong>(.*?)\s*<br>', committee_info, re.DOTALL)
            print(f"telephone: {telephone}")
            telephone = telephone.group(1).strip() if telephone else ""
            # <br><strong>E-Mail: </strong>helen.schaub@1199.org
            email = re.search(r'<strong>E-Mail: </strong>(.*?)\s*$', committee_info, re.DOTALL)
            # print(f"committee_info: {committee_info}")
            print(f"email: {email}")
            email = email.group(1).strip() if email else ""
            print(f"email2: {email}")

            # Extract treasurer details
            treasurer_name = re.search(r'<strong><u>Treasurer</u>: </strong><br>(.*?)\s*<br>', treasurer_info, re.DOTALL)
            treasurer_name = treasurer_name.group(1).strip() if treasurer_name else ""
            treasurer_employer = re.search(r'<strong>Employer Name: </strong>(.*?)\s*<br>', treasurer_info, re.DOTALL)
            treasurer_employer = treasurer_employer.group(1).strip() if treasurer_employer else ""
            treasurer_employer_city = re.search(r'<strong>Employer City: </strong>(.*?)\s*<br>', treasurer_info, re.DOTALL)
            treasurer_employer_city = treasurer_employer_city.group(1).strip() if treasurer_employer_city else ""

            # Extract contribution details
            accepts_corp = re.search(r'<strong><u>Accepts Corp.,LLC,Partnership Contrib.</u>: </strong>(.*?)\s*<br>', contribution_info, re.DOTALL)
            accepts_corp = accepts_corp.group(1).strip() if accepts_corp else ""
            agrees_not_use = re.search(r'<strong><u>Agree not to use Corp.,LLC,Partnership funds for CFB participants</u>: </strong>(.*?)\s*<br>', contribution_info, re.DOTALL)
            agrees_not_use = agrees_not_use.group(1).strip() if agrees_not_use else ""
            candidates = re.findall(r'Candidate\(s\):<br>(.*?)(?:<br><br>|</td>)', contribution_info, re.DOTALL)
            candidates = [c.strip() for c in candidates]
            authorized = "[X] Authorized" in contribution_info

            committees.append([
                committee_name, address, incorporated, registration_date, telephone, email,
                treasurer_name, treasurer_employer, treasurer_employer_city,
                accepts_corp, agrees_not_use, candidates, authorized
            ])

    return committees

def write_to_csv(data, filename="committees.csv"):
    """Writes the extracted data to a CSV file."""

    with open(filename, 'w', newline='', encoding='utf-8') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow([
            "Committee Name", "Address", "Incorporated", "Registration Date", "Telephone", "Email",
            "Treasurer", "Treasurer Employer", "Treasurer Employer City",
            "Accepts Corp/LLC/Partnership Contributions", "Agrees to Not Use Corp/LLC/Partnership Funds for CFB Participants", "Candidates", "Authorized"
        ])
        writer.writerows(data)

if __name__ == "__main__":
    with open("nyccfb_info_public_reports_pclt_25.htm", "r", encoding="utf-8") as f:
        html_content = f.read()

    committee_data = extract_data(html_content)
    write_to_csv(committee_data)
    print("CSV file 'committees.csv' created successfully.")
