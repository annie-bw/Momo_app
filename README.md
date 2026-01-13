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

mobile-money-app/
├── frontend/
│   ├── index.html
│   ├── dashboard.html
│   ├── send-money.html
│   ├── pay-merchant.html
│   ├── transactions.html
│   ├── css/
│   │   └── styles.css
│   └── js/
│       ├── api.js
│       ├── auth.js
│       ├── wallet.js
│       ├── transaction.js
│       └── ui.js
├── assets/
├── backend/
│   ├── src/
│   │   ├── controllers/
│   │   │   ├── authController.js
│   │   │   ├── walletController.js
│   │   │   └── transactionController.js
│   │   ├── services/
│   │   │   ├── authService.js
│   │   │   ├── walletService.js
│   │   │   └── transactionService.js
│   │   ├── models/
│   │   │   ├── User.js
│   │   │   ├── Wallet.js
│   │   │   └── Transaction.js
│   │   ├── routes/
│   │   │   ├── authRoutes.js
│   │   │   ├── walletRoutes.js
│   │   │   └── transactionRoutes.js
│   │   ├── middleware/
│   │   └── app.js
│   ├── config/
│   │   └── db.js
│   ├── package.json
│   └── README.md
└── README.md

## System Architecture
Our system shows a clear flow of MoMo SMS data from start to finish. Raw XML messages first go through an ETL pipeline where they are parsed, cleaned, and categorized. The structured data is then stored in a relational database, and finally, the dashboard pulls this data to create interactive visualizations. This design ensures that every transaction can be tracked, analyzed, and understood quickly and reliably.


**Architecture Diagram Link:**
**Draw.io Link:**
https://drive.google.com/file/d/1w9Ol1o41OtrFy-S6DBRfeePdhQZpI_pm/view?usp=sharing

## Scrum Board
Our team uses a **Trello board** to manage tasks and track progress following Agile practices. The board helps us see what needs to be done, what is currently in progress, and what has been completed. It is organized into the following columns:

- To Do
- In Progress
- Done

All team members update the board regularly, ensuring transparency and smooth collaboration throughout the project.

**Scrum Board Link:**
https://trello.com/invite/b/695f7dab1a7f3e0ef4ed2837/ATTI8340ae06d57b824db6db94251ea538720AD6AE3E/my-trello-board



