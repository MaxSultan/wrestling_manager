# 10 hour MVP

## key Features

1. A schedule tracker -
   Event schedule in one place (school check out, bus leave, weigh in time, wrestling start time and locations. Save flyers)
   Enter times for start, weigh ins, end, etc.

2. A roster manager -
   Move kids between Varsity, JV, 3rd string, etc
   Collect information about what they have been issued (singlet, headgear, etc)
   Track who is injured and who is ineligible

3. An automated email service -
   Add emails for attendance secretaries (High School and Junior High)
   Put in the buffer time you want kids to have between excusal from class and being where they’re supposed to be
   2 Email templates are created (HS and JH) and sent with dynamic text - excusal time, list of excused

## Additional features

TDD
Deployed on fly.io
GitHub actions CI/CD

## Models

Schedule - collections of events for a team in a year
Event - a line item on the schedule
Event_item - a piece of an event

Roster - collection of roster_spots
Roster_spot - mapping of weight and rank to an athlete
Athlete - name and a roster_status (enum of eligible, injured, detention || grades)
Attendance Secretary - name, email, grades_responsible_for (9,10,11,12)
Departure_offset - time_amount, belongs_to team
Offset_email_send_date
Athlete - grade

schedules

- Year
- has_many events

events

- name
- date
- location
- has many event items

event_items

- name
- time

Athlete

- Grade
- Name
- Weight
- Has_one roster spot

Roster_Spot

- Weight
- Rank

Secretary

- Name
- Email
- Grades_responsible_for

User

Team

- entity_name
- has_many users
- has_many schedules
- has_many athletes through roster

Views
Schedule View - all events for a single season belonging to a team
Add item to Schedule view
Delete item from schedule view
Update schedule view item

Roster View - all athletes for a single season belonging to a team organized by weight class and rank

Email scheduler view
Preview email view
Edit email content view
View scheduled emails

v2
Add ability to join existing team
