# ITCS-6160-Assemble-Bus
Semester project for graduate-level database project.  Includes code for a web interface written with HTML, CSS, JavaScript, and PHP.  Database was written with MySQL.
### Table of Contents
### Summary of Project and Navigation
### Business Assumptions and Logic
### Databse Design
### Advanced SQL Statements
  This project had several requirements regarding SQL commands that had to be used.  This section discusses how those requirements were specifically implemented.
#### Stored Procedures
  This project made use of two different stored procedures that accomplished the same goal: retrieving or updating the price of a trip.  They are named GetPrice and calculatePrice respectively.  Initially, they were both meant to be called within a trigger to update the price when a user was added to a trip or a trip was created.  However, I discovered that MySQL does not allow after-insert triggers to update the table being edited.  Because of this, I had to change my plan slightly and create the GetPrice procedure which returns the price rather than immediately updating the table with the price.
#### Triggers
#### Delete Statements
#### Update Statements
#### Indices
#### Views
### Future Works and Goals
