Feature: File operations in shared folders 

# DELETE operation 

Scenario: Viewer cannot delete a shared file within a shared folder
Given "viewer" user has been logged in
When "viewer" is in a shared folder
# TBC if there is an error message when user attempts to delete or the button is disabled
Then "delete" option is missing in the file operations menu 

Scenario: Editor can delete a shared file within a shared folder
Given "editor" user has been logged in
And "editor" is in a shared folder
When user deletes "a shared" file
Then "a shared file" has been deleted

Scenario: Co-Owner can delete a shared file within a shared folder
Given "co-owner" user has been logged in
And "co-owner" is in a shared folder
When user deletes "a shared" file
Then "a shared file" has been deleted

Scenario: MC Hammer cannot delete a shared file within a shared folder
Given "MC Hammer" user has been logged in
# TBC if the below is possible for MC Hammer
And "MC Hammer" is in a shared folder
# TBC if there is an error message when user attempts to delete or the button is disabled
Then "delete" option is missing in the file operations menu  

Scenario: Shared file gets deleted for all collaborating users
Given "a user" user has been logged in
And "a user" is in a shared folder
When user deletes "a shared" file
Then "a shared" file has been deleted for "collaborating" user

# COPY operation 
# Specification on which users are allowed to copy is missing

# DUPLICATE operation 
# Specification on which users are allowed to duplicate is missing

# RENAME operation 
# Specification on which users are allowed to rename is missing

# MOVE operation 
# Specification on which users are allowed to move is missing

# OPEN IN operation 

Scenario: Viewer can view a shared file within a shared folder
Given "viewer" user has been logged in
And "viewer" is in a shared folder
When "viewer" selects the open in button from the file operations menu
Then "viewer" can view a file

Scenario: Editor can view a shared file within a shared folder
Given "editor" user has been logged in
And "editor" is in a shared folder
When "editor" selects the open in button from the file operations menu
Then "editor" can view a file

Scenario: Co-Owner can view a shared file within a shared folder
Given "co-owner" user has been logged in
And "co-owner" is in a shared folder
When "co-owner" selects the open in button from the file operations menu
Then "co-owner" can view a file

Scenario: MC Hammer cannot view a shared file within a shared folder
Given "MC Hammer" user has been logged in
# TBC if the below possible for MC Hammer
And "MC Hammer" is in a shared folder
# TBC
Then



