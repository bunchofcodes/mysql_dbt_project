# MySQL dbt Data Warehouse Project

A complete **Data Warehouse project using dbt and MySQL**, implementing a layered modeling approach with **staging, dimension, and fact tables**, including **Slowly Changing Dimension (SCD Type 2)** handling using MySQL-compatible patterns.

This project is designed to reflect **real-world data engineering practices**, especially when working with **MySQL limitations (no MERGE support)**.

---

## 📌 Project Objectives

- Transform raw transactional data into analytics-ready tables
- Implement dbt with MySQL
- Build **SCD Type 2 dimensions** using `AUTO_INCREMENT` surrogate keys
- Separate **DDL (manual)** and **DML (dbt-managed)**
- Follow clean, modular dbt project structure

---

## 🏗️ Data Architecture

```
Source Tables (classicmodels)
        |
        v
Staging Layer (stg_)
        |
        v
Dimension Layer (dim_)
        |
        v
Fact Layer (fact_)
        |
        v
Analytics / Reporting
```

---

## 📂 Repository Structure

```
mysql_dbt_project/
├── models/
│   ├── staging/
│   ├── dim/
│   ├── fact/
│   └── sources.yml
├── dbt_project.yml
├── profiles.yml
├── packages.yml
└── README.md
```

---

## 🛠️ Tech Stack

- MySQL 8+
- dbt (dbt-mysql)
- Python 3
- Git & GitHub
- VS Code + WSL

---

## 🚀 How to Run

```bash
dbt deps
dbt debug
dbt run
```

---

## 🧩 SCD Type 2 Strategy (MySQL)

- Surrogate key: `AUTO_INCREMENT`
- Active row: `end_date = '9999-12-31'`
- Old record closed on change
- New version inserted

---

## 👤 Author

**Muhammad Ghozi**  
GitHub: https://github.com/bunchofcodes
