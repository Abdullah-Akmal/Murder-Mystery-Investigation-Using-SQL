# Murder Mystery Investigation Using SQL

This project demonstrates the use of SQL for investigative data analysis. The scenario simulates a crime scene investigation in Atom City and explores various datasets to uncover potential suspects based on event attendance, interview transcripts, income records, and more.

## Project Overview

On September 30, 2023, a murder occurred in Atom City during the AtomCamp Annual Dinner. Using structured queries, this project identifies attendees, investigates their personal backgrounds, and cross-references multiple tables to narrow down suspects.

## Dataset Tables Used

- `crime_scene_report`: Official report logs of crimes.
- `atomcamp_annualdinner`: Attendance records for the AtomCamp event.
- `accused_person`: Information about individuals who may be suspects.
- `drivers_license`: Driver’s license and vehicle registration information.
- `interviews`: Transcripts of interviews conducted with individuals.
- `annual_income`: Reported income of individuals.
- `atom_fit`: Activity logs from the AtomFit fitness tracker.

## Investigation Steps

1. **Filter Crime Scene Reports**
   - Retrieve details of the murder in Atom City on `3092023`.

2. **Identify Event Attendees**
   - List all people who attended the AtomCamp Annual Dinner on the same date.

3. **Gather Attendee Details**
   - Join with other tables to obtain car information, income, and interview data.

4. **Analyze Other Activities**
   - Check if any attendees had activity logs in AtomFit on the same date.

5. **Cross-Date Attendance Check**
   - Investigate if these individuals also attended events on other dates.

## Key SQL Techniques Used

- `JOIN` operations across multiple tables.
- `WHERE` filtering using date and text conditions.
- Nested `SELECT` statements.
- Usage of `LOWER()` for case-insensitive filtering.

## Tools

- Database Engine: Any SQL-compatible system (MySQL, PostgreSQL, SQLite, etc.)
- SQL IDE: DB Browser for SQLite, DBeaver, or any SQL interface.

## How to Run

1. Load all tables into your SQL environment.
2. Execute the queries sequentially as shown in the `Project File.sql`.
3. Analyze results at each step to follow the logical investigation path.
