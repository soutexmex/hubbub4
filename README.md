With Hubbub 4 as a basis, refactor the code in support of the following:
Add the foreign key constraint to Bootstrap.sql so that the authorid must correspond to a valid user id.
Refactor the User domain into two parts. A User has a userName and a password, an id, and a profileId which corresponds to a Profile as follows:
A Profile stores the firstName, lastName, email, and zipCode for a user. Try having a userid column referencing the owning User's id. This would create a bi-directional 1-to-1 relationship. What is the implication for deleting a User or a Profile from the database? What about the DROP TABLE command at the start of the Bootstrap?
Refactor registration to insert the correct data into rows of both the USERS and PROFILES tables as necessary.
Try to redesign the app to minimize changes in the controller and views. It will be necessary but can be kept very small.
