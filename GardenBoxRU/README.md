# GardenBox Project

## Overview

This dynamic website stores and displays the information for many different plants. The user can then search for previous entries by id number or by keyword found in the title or description. After finding the desired plant, the user can update or delete said record from the database. The user can also add new items to the database.

## Topics

### Forms
Using spring forms allows for records to be trasfered between JSP pages to be able to add, update, or delete the correct records. The records are then permanent and can be seen by all other users.

### Databases
For this project, a simple, one-table database was created in MySQL Workbench and connected to application through the Gradle build. Any information to be stored on this database is manipulated through JPQL code.

## Future Changes

- Add a way for images to be displayed for each different plant instead of just a placeholder.
- Add new field in db for plant spacing and develop the GardenBox tool to help users plan their gardens using the area taken up by each plant vs size of user garden.
- Having a login with personalized user experience.