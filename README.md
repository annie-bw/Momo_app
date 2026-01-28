# MoMo SMS Analytics Project

## Team Name
EWDGroup 11

## Team Members
- Isheja Ladouce
- Kirabo Esther
- Bwiza Annie Pierre
- Uwineza Bonesha Kevine
- Samuel Nshuti Kabera

## Project Description
This project is a fullstack application that transforms raw Mobile Money (MoMo) SMS data into clear, actionable insights. It takes XML messages, cleans and organizes the data, categorizes transactions, and stores everything in a relational database. The final result is an interactive dashboard that makes it easy to explore, analyze, and understand MoMo transaction patterns — helping users make sense of their data quickly and effectively.

## Project Structure:
```
mobile-money-app/
│
├── frontend/
│   ├── index.html
│   ├── dashboard.html
│   ├── send-money.html
│   ├── pay-merchant.html
│   ├── transactions.html
│   │
│   ├── css/
│   │   └── styles.css
│   │
│   └── js/
│       ├── api.js
│       ├── auth.js
│       ├── wallet.js
│       ├── transaction.js
│       └── ui.js
│
├── assets/
│
└── backend/
    │
    ├── src/
    │   │
    │   ├── controllers/
    │   │   ├── authController.js
    │   │   ├── walletController.js
    │   │   └── transactionController.js
    │   │
    │   ├── services/
    │   │   ├── authService.js
    │   │   ├── walletService.js
    │   │   └── transactionService.js
    │   │
    │   ├── models/
    │   │   ├── User.js
    │   │   ├── Wallet.js
    │   │   └── Transaction.js
    │   │
    │   ├── routes/
    │   │   ├── authRoutes.js
    │   │   ├── walletRoutes.js
    │   │   └── transactionRoutes.js
    │   │
    │   ├── middleware/
    │   │
    │   └── app.js
    │
    ├── config/
    │   └── db.js
    │
    ├── package.json
    └── README.md
```

## Database Implementation
Our database implementation uses MySQL to store structured MoMo SMS transaction data in accordance with the approved Entity-Relationship Diagram (ERD). The database was designed to ensure data integrity, support relational queries, and allow efficient serialization of transaction data for analysis and API responses.

The schema includes several core tables that work together to model the MoMo transaction ecosystem. 

**The users** table stores information about all individuals interacting with the system. 

**The roles** table defines the different roles a user can have in the system, including admin, agent, and customer, allowing clear separation of responsibilities and future extensibility. Each user is assigned a specific role that determines how they participate in transactions and system operations.

**The transactions** table stores the main transaction records extracted from MoMo SMS messages, including transaction amounts, timestamps, and reference information. 

**The transaction_categories** table classifies each transaction, such as transfers, merchant payments, or fees, making it easier to analyze transaction types. 

**The transaction_participants** table acts as a junction table that resolves the many-to-many relationship between users and transactions by linking each user to a transaction with a defined role, such as sender or receiver.

**The system_logs** table records system and data processing activities, providing traceability and supporting monitoring and auditing of transaction processing. Relationships between all tables are enforced using primary and foreign keys to prevent orphan records and maintain consistency across the database.

All tables were created using appropriate MySQL data types and constraints to ensure reliable storage and efficient querying. Sample data was inserted into the tables to support testing and validation of the schema.

**Detailed ERD diagram documentation**: 

(https://docs.google.com/document/d/1tcv8DqO6Q7O7vhTwyXjPa_hv7Dpw_l-Rdkd6DTT2s-U/edit?usp=sharing)

**SQL Setup Script:**
database/defaultdb.sql

**CRUD Testing:**
Basic CRUD (Create, Read, Update, Delete) operations were executed to validate table creation, relationships, and constraint enforcement across the database.

**Sample Queries & Screenshots:**
Included in the Database Design Document (PDF)


## System Architecture
Our system shows a clear flow of MoMo SMS data from start to finish. Raw XML messages first go through an ETL pipeline where they are parsed, cleaned, and categorized. The structured data is then stored in a relational database, and finally, the dashboard pulls this data to create interactive visualizations. This design ensures that every transaction can be tracked, analyzed, and understood quickly and reliably.


**Architecture Diagram Link:**

Week 1:

**Draw.io Link:**
https://drive.google.com/file/d/1w9Ol1o41OtrFy-S6DBRfeePdhQZpI_pm/view?usp=sharing

Week 2:

https://drive.google.com/file/d/1rO3pQlXAJQEH2avIIarW-TNSCngBKINM/view?usp=sharing

## Scrum Board
Our team uses a **Trello board** to manage tasks and track progress following Agile practices. The board helps us see what needs to be done, what is currently in progress, and what has been completed. It is organized into the following columns:

- To Do
- In Progress
- Done

All team members update the board regularly, ensuring transparency and smooth collaboration throughout the project.

**Scrum Board Link:**
https://trello.com/invite/b/695f7dab1a7f3e0ef4ed2837/ATTI8340ae06d57b824db6db94251ea538720AD6AE3E/my-trello-board

**Team Task Sheet:**
https://docs.google.com/spreadsheets/d/1v6c1eUs7eQmv3dhxRfXT5hWDpmdh2LkHzjc6Xtq4Iwg/edit?usp=sharing

## AI USAGE LOG:
https://chatgpt.com/share/697a6d28-6e94-8008-9559-6fe1784eff08


