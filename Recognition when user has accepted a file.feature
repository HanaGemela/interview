Feature: Recognition when user has accepted a shared file

# Missing in the requirement
# group share not described
# pending local not explained
# how will user recognise that a shared file has been accepted?
# For the below scenarios I used sharing status with two options - pending and accepted

Background: 
Given "a user" has been logged in

Scenario: Accepted sharing status is correct when sharing locally
Given "a user" has shared a "file" to "another" user
When recipient has "accepted" the shared file
Then the file sharing status is "accepted"

Scenario: Pending sharing status is correct when sharing locally
Given "a user" has shared a "file" to "another" user
When recipient has "not accepted" the shared file
Then the file sharing status is "pending"

Scenario: Accepted sharing status is correct when sharing to a guest
Given "a user" has shared a "file" to "guest" user
When recipient has "accepted" the shared file
Then the file sharing status is "accepted"

Scenario: Pending sharing status is correct when sharing to a guest
Given "a user" has shared a "file" to "guest" user
When recipient has "not accepted" the shared file
Then the file sharing status is "pending"

Scenario: Accepted sharing status is correct when sharing to a federated user
Given "a user" has shared a "file" to "federated" user
When recipient has "accepted" the shared file
Then the file sharing status is "accepted"

Scenario: Pending sharing status is correct when sharing to a federated user
Given "a user" has shared a "file" to "federated" user
When recipient has "not accepted" the shared file
Then the file sharing status is "pending"

