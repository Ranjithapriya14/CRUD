# 🎓 Student Management System (CRUD Web Application)

A simple **Student Management System** built using **Java, JSP, Servlets, and MySQL** that allows users to **Create, Read, Update, and Delete** student records through a clean web interface.  
This project follows the **MVC (Model–View–Controller)** design pattern and is deployable on **Apache Tomcat**.


## 🚀 Features

✅ Add new student details  
✅ Display all registered students  
✅ Edit and update student records  
✅ Delete student records  
✅ Upload and display student images  
✅ Clean MVC structure (Controller – Service – Repository – Model – View)  
✅ MySQL database integration  
✅ Deployable `.war` file via Maven  


## 🧱 Project Structure

crud/
├── pom.xml
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── com/
│   │   │       ├── controller/
│   │   │       │   └── StudentController.java
│   │   │       ├── model/
│   │   │       │   └── Student.java
│   │   │       ├── repository/
│   │   │       │   └── StudentRepository.java
│   │   │       └── service/
│   │   │           └── StudentService.java
│   │   ├── resources/
│   │   └── webapp/
│   │       ├── index.jsp
│   │       └── WEB-INF/
│   │           ├── web.xml
│   │           ├── multi.xml
│   │           └── views/
│   │               ├── create.jsp
│   │               ├── list-student.jsp
│   │               └── view-student.jsp
└── target/
└── crud.war


## ⚙️ Technologies Used

| Layer      | Technology              |
|------------|-------------------------|
| Frontend   | JSP, HTML, CSS          |
| Backend    | Java Servlets, JDBC     |
| Database   | MySQL                   |
| Build Tool | Maven                   |
| Server     | Apache Tomcat           |
| IDE        | Eclipse / IntelliJ IDEA |


## 🧩 How It Works

1. **User Interface (JSP Pages):**
   - `create.jsp` → Add student
   - `list-student.jsp` → View all students
   - `view-student.jsp` → See details of a single student

2. **Controller Layer (Servlets):**
   - Handles all HTTP requests and responses.
   - Routes data between JSP and Service layer.

3. **Service Layer:**
   - Contains business logic before sending or retrieving data.

4. **Repository Layer:**
   - Executes SQL queries (Insert, Update, Delete, Select) to interact with MySQL.

5. **Model Layer:**
   - Represents data structure (`Student.java` class).

## 🛠️ Setup Instructions

### 1️⃣ Prerequisites
- Java 8 or higher  
- Apache Tomcat 9+  
- MySQL Server  
- Maven 3.6+  
- Eclipse IDE (recommended)

### 2️⃣ Clone the Repository
git clone https://github.com/<your-username>/Student-CRUD-WebApp.git
cd Student-CRUD-WebApp


### 3️⃣ Database Setup

sql
CREATE DATABASE studentdb;
USE studentdb;

CREATE TABLE students1 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    course VARCHAR(100),
    image LONGBLOB
);

### 4️⃣ Configure Database Connection

Update your **`multi.xml`** (or any config file you use) with your MySQL credentials:
multi.xml
<database>
    <url>jdbc:mysql://localhost:3306/studentdb</url>
    <username>root</username>
    <password>yourpassword</password>
</database>

### 5️⃣ Build and Run

* Open project in Eclipse → Right-click → **Run on Server** → Select Tomcat.
  or
* Run via terminal:

```bash
mvn clean install
```

Deploy the generated `.war` file from the `target` folder into Tomcat’s `webapps` directory.

### 6️⃣ Access Application
http://localhost:8080/crud/

## 🧠 Key Learning Outcomes

* Implemented full CRUD operations using Servlets and JSP.
* Learned MVC-based web app architecture.
* Used Maven for dependency management and build automation.
* Integrated MySQL database with JDBC.
* Deployed `.war` application on Apache Tomcat.

## 📚 Future Enhancements
* Add Spring Boot for backend logic.
* Integrate Hibernate ORM.
* Add user authentication.
* Improve UI using Bootstrap.
* Add RESTful APIs for mobile integration.

## 👩‍💻 Author

**Ranjithapriya**
📧 ranjithapriya1408@gmail.com
🌐 

## ⭐ Show Your Support

If you found this project useful, please **⭐ Star the repository** on GitHub — it helps others discover it too!

Would you like me to:
- ✨ add **GitHub-ready badges** (Java version, license, stars, etc.) and  
- 📷 create **preview screenshot templates** for your app UI (like homepage, form, and list page)?  

It’ll make your GitHub page stand out professionally.
