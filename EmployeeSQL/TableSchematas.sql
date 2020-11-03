-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/rESTKf
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Department" (
    "Dept_no" varchar(10)   NOT NULL,
    "Dept_name" varchar(50)   NOT NULL,
    CONSTRAINT "pk_Department" PRIMARY KEY (
        "Dept_no"
     )
);

CREATE TABLE "Employees" (
    "Emp_No" int   NOT NULL,
    "Emp_Title" varchar(10)   NOT NULL,
    "Birth_date" date   NOT NULL,
    "First_name" varchar(50)   NOT NULL,
    "Last_name" varchar(50)   NOT NULL,
    "Sex" char(1)   NOT NULL,
    "Hire_date" date   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "Emp_No"
     )
);

CREATE TABLE "Dept_Emp" (
    "Emp_no" int   NOT NULL,
    "Dept_no" varchar(10)   NOT NULL
);

CREATE TABLE "Titles" (
    "Title_ID" varchar(10)   NOT NULL,
    "Title" varchar(50)   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "Title_ID"
     )
);

CREATE TABLE "Salaries" (
    "Emp_No" int   NOT NULL,
    "Salary" numeric(18,2)   NOT NULL
);

CREATE TABLE "Dept_Manager" (
    "Dept_no" varchar(10)   NOT NULL,
    "Emp_no" int   NOT NULL
);

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_Emp_Title" FOREIGN KEY("Emp_Title")
REFERENCES "Titles" ("Title_ID");

ALTER TABLE "Dept_Emp" ADD CONSTRAINT "fk_Dept_Emp_Emp_no" FOREIGN KEY("Emp_no")
REFERENCES "Employees" ("Emp_No");

ALTER TABLE "Dept_Emp" ADD CONSTRAINT "fk_Dept_Emp_Dept_no" FOREIGN KEY("Dept_no")
REFERENCES "Department" ("Dept_no");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_Emp_No" FOREIGN KEY("Emp_No")
REFERENCES "Employees" ("Emp_No");

ALTER TABLE "Dept_Manager" ADD CONSTRAINT "fk_Dept_Manager_Dept_no" FOREIGN KEY("Dept_no")
REFERENCES "Department" ("Dept_no");

ALTER TABLE "Dept_Manager" ADD CONSTRAINT "fk_Dept_Manager_Emp_no" FOREIGN KEY("Emp_no")
REFERENCES "Employees" ("Emp_No");

