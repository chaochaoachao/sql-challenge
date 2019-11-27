CREATE TABLE "departments" (
    "dept_no" varchar   NOT NULL,
    "dept_name" varchar  NOT NULL
)

CREATE TABLE "dept-emt" (
    "emp_no" int   NOT NULL,
    "dept_no" varchar   NOT NULL,
    "from_date" timestamp   NOT NULL,
    "to_date" timestamp   NOT NULL
);

CREATE TABLE "dept-manager" (
    "dept_no" varchar   NOT NULL,
	"emp_no" int   NOT NULL,
    "from_date" timestamp   NOT NULL,
    "to_date" timestamp   NOT NULL
);

CREATE TABLE "employees" (
    "emp_no" int   NOT NULL,
    "birth_date" timestamp   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "gender" varchar   NOT NULL,
    "hire_date" timestamp   NOT NULL
);

CREATE TABLE "salaries" (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL,
    "from_date" timestamp   NOT NULL,
    "to_date" timestamp   NOT NULL
);

CREATE TABLE "titles" (
    "emp_no" int   NOT NULL,
    "title" varchar   NOT NULL,
    "from_date" timestamp   NOT NULL,
    "to_date" timestamp   NOT NULL
);