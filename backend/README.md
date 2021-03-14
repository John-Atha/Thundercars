# BACKEND

Inside this directory, you can find the code for the database and the REST API.

### Content of each directory

#### Database filling SQL
* Path: <i>backend\dbFillingSQL</i>
* I contains the data of the db, the SQL code used for the insertions and some scripts written in powershell and shell for automating the proccess both in Windows and Linux OS.

#### Scripts
* Path: <i>backend\Scripts</i>
* It contains some scripts written in Python, used to generate the data of the db and the SQL code of the <i>dbFillingSQL</i> directory. 

#### Models
* Path: <i>backend\src\main\java\gr\ntua\ece\softeng35\backend\models</i>
* It contains the Java code for the structure of the entities of the db. 

#### Controllers
* Path: <i>backend\src\main\java\gr\ntua\ece\softeng35\backend\controllers</i>
* It contains the Java code for the REST API endpoints.

#### Resources 
* Path: <i>backend\src\main\resources</i>
* It contains the skeleton of the file for establishing the connection with your database.

#### Test controllers
* Path: <i>backend\src\test\java\gr\ntua\ece\softeng35\backend\controllersTests</i>
* It contains the Java code for the unit-functional testing of the backend.

### Installation

* Create an empty database.
* Inside the directory <i>\backend\src\main\resources</i>, add the <i>application.properties</i> file,
  using the <i>application.properties.sample<i> skeleton (inside the same directory), to connect to your database. 
* In the <i>backend</i> directory, run .\gradlew bootrun.
* If you want to use our data, you can use the sql insertions files inside the <i>dbFillingSQL</i> directory.
* Test the API, following the base url http://localhost:8765/evcharge/api


### Reference Documentation
For further reference, please consider the following sections:

* [Official Gradle documentation](https:\\docs.gradle.org)
* [Spring Boot Gradle Plugin Reference Guide](https:\\docs.spring.io\spring-boot\docs\2.4.1\gradle-plugin\reference\html\)
* [Create an OCI image](https:\\docs.spring.io\spring-boot\docs\2.4.1\gradle-plugin\reference\html\#build-image)
* [Spring Web](https:\\docs.spring.io\spring-boot\docs\2.4.1\reference\htmlsingle\#boot-features-developing-web-applications)
* [Spring Data JDBC](https:\\docs.spring.io\spring-data\jdbc\docs\current\reference\html\)

### Guides
The following guides illustrate how to use some features concretely:

* [Building a RESTful Web Service](https:\\spring.io\guides\gs\rest-service\)
* [Serving Web Content with Spring MVC](https:\\spring.io\guides\gs\serving-web-content\)
* [Building REST services with Spring](https:\\spring.io\guides\tutorials\bookmarks\)
* [Using Spring Data JDBC](https:\\github.com\spring-projects\spring-data-examples\tree\master\jdbc\basics)
* [Accessing data with MySQL](https:\\spring.io\guides\gs\accessing-data-mysql\)

### Additional Links
These additional references should also help you:

* [Gradle Build Scans – insights for your project's build](https:\\scans.gradle.com#gradle)