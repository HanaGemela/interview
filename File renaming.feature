Feature: File renaming

Scenario: Owner of the file can rename it
Given "owner" has been logged in
And owner uploads a file
When "owner" renames "their own" file
Then the file name has been changed

Scenario: Recipient of a shared file can rename it
Given "a recipient" has been logged in
And recipient received a file 
When "recipient" renames "a received" file
Then the file name has been changed

Scenario: Original file name that owner sees remains the same
Given "a recipient" has been logged in
And recipient received a file
When "recipient" renames "a received" file
Then the file name the owner sees has not been changed

Scenario: New recipients see the owners file name
Given "owner" has been logged in
And owner uploads a file
And "owner" renames "their own" file
When "owner" user has shared a "renamed file" to "a new recipient" user
Then "new recipient" user has received "the renamed file"

Scenario: New recipients see the collaborators file name
Given "a collaborator" has been logged in
And collaborator received a file 
And "collaborator" renames "a received" file
When "collaborator" user has shared a "renamed file" to "new recipient" user
Then "new recipient" user has received "the renamed file"

Scenario: New recipients see the original name after owner has shared with them a file that has been renamed by another collaborator
Given an old collaborator renamed the shared file
And "owner" has been logged in
When "owner" user has shared a "original file" to "a new recipient" user
Then "new recipient" user has received "file with original name"