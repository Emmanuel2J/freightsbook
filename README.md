# FreightsBridge

The trivago for shipping rates! Shipping, FreightBridge! Eh, doesn't got the same ring to it..

<img width="1837" height="830" alt="image" src="https://github.com/user-attachments/assets/03132758-f75b-4519-952e-569ad59568db" />
<img width="1916" height="858" alt="image" src="https://github.com/user-attachments/assets/79c7547b-d24d-4d54-9fbb-ed24f83a1b6a" />

# Overview

In the shipping industry, cargo needs to move from one place to another. Each origin to destination port has a charge, additionally depending on the container/package, the rate will change once again, and **again**, each vendor or freight forwarder has their own individual rates. So to simplify this, our platform will collect all the rates and show you the rate list, where you can filter and find your best rates.

# Key Features

- Simple UI to search rates
- Send E-Mail directly to the vendor
- Rate Comparison with Filters & Sorting
- Vendor Analytics
- Vendor Rate Entry
- Vendor Registration Approval Workflow

# Tech Stack

This project was made on Oracle APEX, deployed on the Oracle Database in my local system. This is connected through ORDS so that we have a public link. HTML, CSS and JS were used to make it more user friendly. PL/SQL and SQL were used a lot to make this project have high performance.

# Getting Started

To install this application, these are the steps to follow:

> Oracle APEX & Oracle Database 26ai must be installed in your local system or OCI.

- Download this repository as a .zip file.
- Import this using Oracle APEX import feature.
- And, thats it! You can start by entering rates and see the rate searches working live.

# Roadmap

As it stands, this is a simple project, as on August 16th 2026. We are entering rates one place, and displaying them in another. The vendor analytics are good, but we need more features. This is the roadmap for this project:

- Contact Vendor, should also create a request in the vendor dashboard, wherein, the vendor can create a quotation, and send the quotation pdf as email through the system.
- Allow user to input multiple LCL packages and multiple types of FCL containers all in one search.
- Deploy this application on OCI, so that users will have a public link.
- User Login using OAuth, so that we can keep track of each user's rate requests. The user will also be informed of each rate's status.
- Payment Integration, user should be able pay for the rate and then directly book it so the Freight Forwarder can start shipping the requested items, without any delay.
- AI assistant, so that the user will just dictate what they want, and rate search will happen automatically instead of them manually typing.
 
