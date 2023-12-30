# 10 hour MVP

8 hours left

Update scaffolded views -> current user should only be able to see their own team
[x] Github Repo
[x] add events model and views
[x] disable team_id field in events. this should always be locked to the current_users team
[x] add event_items to event show page
[] create sharable team season events view
[] create a TeamUser through table with a role attribute
[] Lock down views and controller actions with pundit/can-can
[] decide how to link main views together
[] eliminate unnecessary views (event_item show, event_items index)
[] set time in event items to use date of parent event as the date
[] update the date of all child event items when parent event date is updated

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
Hotwire/Turbo for schedule and roster?

## Models

Event - a line item on the schedule
Event_item - a piece of an event

Roster - collection of roster_spots
Roster_spot - mapping of weight and rank to an athlete
Athlete - name and a roster_status (enum of eligible, injured, detention || grades)
Attendance Secretary - name, email, grades_responsible_for (9,10,11,12)
Departure_offset - time_amount, belongs_to team
Offset_email_send_date
Athlete - grade

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

## Open Questions

How do we plan to handle multi day events on the schedule?
