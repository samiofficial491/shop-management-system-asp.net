# Shop Management System

A robust web-based **Point of Sale (POS)** and **Inventory Management System** built using **ASP.NET (Web Forms)**.

I developed this project during my **6th Semester** to understand the complexities of Web Application Development, Database Management, and Role-Based Security. It serves as a centralized solution for retail shops to manage sales, stock, and staff efficiently.

## Project Versions (Branches)
This repository contains two major iterations of the system:

1.  **Main Branch (Web Forms):** The foundational version built using ASP.NET Web Forms (`.aspx`), focusing on event-driven programming and server controls.
2.  **MVC Branch (Architecture Upgrade):** An expanded version where I migrated the core logic to **ASP.NET MVC**, implementing a cleaner separation of concerns (Model-View-Controller pattern) for better scalability.

## Key Features

### Security & Authentication
- **Role-Based Login:** Separate dashboards for **Admins** and **Employees/Users**.
- **Secure Recovery:** Forgot Password flow integrated with **OTP (One-Time Password)** via Email (`CheckOTP.aspx`).

### Inventory Management
- **Live Stock Tracking:** Real-time updates of product quantities.
- **Supplier Management:** Maintain records of suppliers and purchase history.
- **Low Stock Alerts:** Visual indicators for items running low.

### Billing & POS System
- **Dynamic Billing:** Generate bills instantly by selecting products.
- **Automated Calculations:** Auto-calculate totals, taxes, and discounts.
- **Invoice Generation:** Printable bill format for customers.

### Staff Management
- **Employee Records:** Add, update, and manage staff details (`EmployeeData.cs`).
- **Access Control:** Restrict employees to specific modules (e.g., Billing only), while Admins have full access.

## Tech Stack
- **Framework:** ASP.NET Web Forms (.NET Framework 4.7.2)
- **Language:** C#
- **Frontend:** HTML5, CSS3, Bootstrap (Responsive UI)
- **Database:** MSSQL / MySQL (Connected via ADO.NET)
- **Tools:** Visual Studio 2022


### Developer
**Ahmad Shehroz Raza**
*Software Engineering Student | University of Gujrat*
