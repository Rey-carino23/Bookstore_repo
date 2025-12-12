# Bookstore Database Project

Welcome to the Bookstore Database repository — a compact, production-style SQL project that models how customers interact with books in a typical retail environment.

This repo includes:

* Entity Relationship Diagram (ERD) of the full database
* SQL script for creating tables
* SQL inserts for sample data population

---

## Project Overview

This project demonstrates how to design and implement a relational database for a bookstore system. The database tracks customers, books, and their purchase activities using a clean, normalized structure.

At the heart of the model is a many-to-many relationship between Customers and Books, resolved through the Purchases table.

---

## Database Structure (ERD Summary)

### 1. Customers

Stores customer profile information.
Purpose: Identify who is buying books.

### 2. Books

Holds the catalog of books available for sale.
Purpose: Store book details such as titles, authors, genres, and prices.

### 3. Purchases (Bridge Table)

Maps customers to the books they buy.
Includes fields like quantity and purchase date.
**Purpose:** Capture transactional activity between customers and books.

The ERD in the repository visually illustrates these relationships:

* **1 : M** between *Customers → Purchases*
* **1 : M** between *Books → Purchases*
* **M : N** between *Customers ↔ Books* (resolved through Purchases)

---

## What’s Inside the SQL File?

The SQL script includes:

###  **Table Creation**

* `CREATE TABLE` statements for

  * `customers`
  * `books`
  * `purchases`

###  **Constraints**

* Primary keys
* Foreign keys
* Relationship enforcement matching the ERD

###  **Data Inserts**

* Sample rows for all tables
* Realistic values so you can query immediately

---

##  How to Use
1. Use draw.io to create the ERD model
1. Clone the repository
2. Run the SQL file in your preferred database engine (MySQL / PostgreSQL / SQL Server — adjustable as needed)


---

##  Why This Project Matters

This mini-database is perfect for:

* Practicing SQL querying
* Understanding many-to-many relationships
* Demonstrating database design in your data portfolio
* Teaching foundational data modeling concepts


On Fri, Dec 12, 2025 at 12:31 PM Rejoice Anyaorah <rejoiceanyaorah316@gmail.com> wrote:
# Drink Store Database Project

This repository contains a simple relational database design for a **Drink Store Management System**, including an **Entity-Relationship Diagram (ERD)** and an **SQL script** used to create and populate the database.

---

##  Project Overview

The goal of this project is to model how a drink store manages its customers, employees, departments, products, and sales.
The ERD outlines the core entities and their relationships, while the SQL file includes table creation statements and sample data insertions.

---

##  Entities in the ERD

The ERD contains the following main entities:

### 1. Supervisor

* Represents supervisors responsible for overseeing departments.
* Related to departments through the **heads** relationship.

### 2. Department

* Functional areas within the store.
* Headed by a supervisor.
* Connected to employees assigned to each department.

### 3. Employees

* Store employees who work in various departments.
* Linked to departments via the **post** (assigned/works in) relationship.

### 4. Products

* Items the store sells.
* Connected to customers through the purchase relationship and to employees through the sell relationship (which tracks which employee sold what).

### 5. Customer

* Customers who purchase drinks from the store.
* Connected to products via Purchase.
* Also linked through the pays relationship to represent transactions.

---

##  Relationships Highlighted in the ERD

* Supervisor —heads→ Department
* Department —post→ Employees
* Employees —sell→ Products
* Customer —Purchase→ Products
* Supervisor —pays→ Employees/Store (depending on how the schema defines it)

These relationships help capture the workflow of sales, staff responsibilities, and customer activity.

---

##  Contents of This Repository

### 1. ERD File

* The ERD (draw.io file) visually represents the database structure, entities, and relationships.

### 2. SQL Script

Includes:

* Creation of all tables in the database
* Primary and foreign key constraints
* Insert statements with sample data
* A fully functional schema ready for testing or extension

---

##  How to Use

1. Using the draw.io to create, view and edit the ERD.
2. Run the SQL script in your preferred database environment (MySQL, PostgreSQL, etc.).
