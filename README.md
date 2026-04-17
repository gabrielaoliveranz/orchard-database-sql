# Orchard Database (SQL Project)

## Overview
This project involves designing and implementing a relational database for an orchard management system based on a provided ERD.

The goal was to translate business requirements into a structured database using SQL and apply data modelling principles.

## Key Features
- Normalised relational schema (3NF)
- Primary and Foreign Key constraints
- One-to-many and many-to-many relationships
- Data integrity enforcement
- Self-referencing relationships (Employee hierarchy)

## Database Structure
The database includes the following core entities:
- Employee (with manager hierarchy)
- Position
- Fruit
- Bin and Tag tracking
- Box and Grade classification

Associative tables were used to resolve many-to-many relationships.

## Tools & Technologies
- MySQL
- MySQL Workbench
- SQL (DDL)

## What I Learned
- Translating ERDs into physical database design
- Implementing constraints for data integrity
- Structuring real-world operational data
- Understanding relationships between entities in a business context

## Repository Contents
- `orchard.sql` → Full database creation script
- `Orchard_Database_ERD.pdf` → Entity Relationship Diagram
- `MySQL Orchard Scheme.png` → Example of SQL implementation

## Author
Gabriela Olivera
