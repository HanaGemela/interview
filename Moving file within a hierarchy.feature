Feature: Moving file within hierarchy

# Missing in the requirement
# what will happen if a user moves a shared item outside of a shared folder
# how is a user prevented from moving a shared file into a shared folder? E.g. what is the error message

Scenario: Shared file in the root directory can be moved into a folder by the owner
Given "owner" user has been logged in
When owner moves a shared file "into a folder"
Then file has been moved "into a folder"

Scenario: Shared file inside a folder can be moved to a different folder by the owner
Given "owner" user has been logged in
And "owner" is in a shared folder
When owner moves a shared file "to a different folder"
Then file has been moved "to a different folder"

Scenario: Shared file inside a folder can be moved to the root directory by the owner
Given "owner" user has been logged in
And "owner" is in a shared folder
When owner moves a shared file "to the root directory"
Then file has been moved "to the root directory"

Scenario: Shared file in the root directory can be moved into a folder by the recipient
Given "recipient" user has been logged in
When recipient moves a shared file "into a folder"
Then file has been moved "into a folder"

Scenario: Shared file inside a folder can be moved to a different folder by the recipient
Given "recipient" user has been logged in
And "recipient" is in a shared folder
When recipient moves a shared file "to a different folder"
Then file has been moved "to a different folder"

Scenario: Shared file inside a folder can be moved to the root directory by the recipient
Given "recipient" user has been logged in
And "recipient" is in a folder
When recipient moves a shared file "to the root directory"
Then file has been moved "to the root directory"

Scenario: Moved shared file remains at its location for other users
Given "owner" user has been logged in
When owner moves a shared file "into a folder"
Then relocation of the file is "not visible" to all collaborating users

Scenario: Shared file can be moved within a shared folder
Given "collaborator" user has been logged in
And "collaborator" is in a shared folder
When collaborator moves a shared file "within a shared folder"
Then relocation of the file is "visible" to all collaborating users

Scenario: Shared file cannot be moved into another shared folder
Given "collaborator" user has been logged in
When collaborator moves a shared file "into another shared folder"
# TBC
Then the following error message is displayed "" 

Scenario: Shared folder cannot be moved into another shared folder
Given "collaborator" user has been logged in
When collaborator moves a shared folder "into another shared folder"
# TBC
Then the following error message is displayed ""

