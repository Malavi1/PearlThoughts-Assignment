# Out-Patient Appointment System API

The Out-Patient Appointment System API is a Ruby on Rails application designed to facilitate the booking of appointments with doctors who practice on a weekly schedule. This README provides an overview of the API and explains how to interact with its endpoints.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
  - [Doctors Listing](#doctors-listing)
  - [Doctor Detail Page](#doctor-detail-page)
  - [Availability](#availability)
  - [Appointment Booking](#appointment-booking)

## Prerequisites

Before using the API, ensure you have the following installed:

- Ruby
- Ruby on Rails
- SQLite or any other database supported by Rails

## Installation

1. Clone the repository:

    ```bash
    git clone <repository_url>
    ```

2. Navigate into the project directory:

    ```bash
    cd Doctor-Appointment
    ```

3. Install dependencies:

    ```bash
    bundle install
    ```

4. Set up the database:

    ```bash
    rails db:migrate
    ```

## Usage

### Doctors Listing

To retrieve a list of all doctors:

```
GET /doctors
```

### Doctor Detail Page

To retrieve details of a specific doctor:

```
GET /doctors/:id
```

Availability

To retrieve availabilities for a specific doctor on a given date:

```
GET /doctors/:doctor_id/availabilities?date=<date>
```

Appointment Booking

To book an appointment with a specific doctor:

```
POST /doctors/:doctor_id/appointments
```

Request Body:
{
  "date": "YYYY-MM-DD",
  "time": "HH:MM:SS",
  "patient_name": "Patient Name"
}

![Screenshot from 2024-04-19 11-05-50](https://github.com/Malavi1/PearlThoughts-Assignment/assets/112646623/402d7a88-8ef7-4351-9df9-b6ec7606f670)
![Screenshot from 2024-04-19 11-06-04](https://github.com/Malavi1/PearlThoughts-Assignment/assets/112646623/22a153c2-d8fe-4af2-bf27-1cce160fe9f6)
![Screenshot from 2024-04-19 11-06-57](https://github.com/Malavi1/PearlThoughts-Assignment/assets/112646623/9ef344b5-779e-4fae-83b3-b6f93a5ed8e7)
![Screenshot from 2024-04-19 11-06-25](https://github.com/Malavi1/PearlThoughts-Assignment/assets/112646623/635eb27d-2f1e-4108-9591-5a313b134651)
