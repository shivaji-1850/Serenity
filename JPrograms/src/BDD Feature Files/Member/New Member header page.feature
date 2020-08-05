Feature: New member creation header tab validations

  Background: 
    Given User opens the browser and goes to RxNova URL
    When enter valid username, valid password and click on Login button
    Then navigates from Landing page to "Member" application
    And check whether the Member Home is displayed
	

  Scenario: Navigating to member create home page
    Given User is on Member home page
    When click New button
	Then New member creation home screen Header tab should display 
	
  Scenario: Verify the fields displayed on the new member creation screen
    Given User is on New member creation home page
    When verify the data displayed
	Then Master Customer Set, Customer Name, Client Name, External Group ID, Internal Group ID, Member ID, Member Last First, Date of birth, Gender, Active effective date range, Test should display 
	
   Scenario: Verify the tabs displayed on the new member creation screen
    Given User is on New member creation home screen
    When verify the tabs displayed
	Then Header, Details and Tags/Notes should display 
	
  Scenario: Verify the edit text fields displayed on the header tab of new member creation screen
    Given User is on Header tab of new member creation home screen
    When verify the data displayed
	Then Tracking ID, Notes, Reason, should display
	
   Scenario: Verify the buttons dispalyed on new member creation screen
    Given User is on Header tab of New member creation home screen
    When verify the Previous, Next and Cancel buttons
	Then Previous, Next and Cancel buttons should display on the top right and bottom right coreners of the home page and Previous button should be greyed out
	
   Scenario: Verify the Browse Requests and Close Window links dispalyed on new member creation screen
    Given User is on New member creation home screen
    When verify the Browse Requests and Close Window links
	Then Browse Requests and Close Window links should display on the top right coreners of the home page
	
   Scenario: Verify the Member Home link dispalyed on new member creation screen
    Given User is on New member creation home screen
    When verify the Member Home link
	Then Member Home link should display on the top left corener of the new member creation home page
	
   Scenario: Verify the Drop down lists data dispalyed on new member creation screen
    Given User is on Header tab of New member creation home screen
    When verify drop down lists displayed
	Then Test Member Indicator with 2 items namely Yes and No, Master Customer Set, Customer Name, Client Name, Gender with 2 items namely Male and Female, Relationship list with 5 items namely 0 - Not Specified, 1 - Cardholder, 2 - Spouse, 3 - Dependent, and 4 - Other should display

   Scenario: Verify the Primary and Secondary radio buttons displayed under Address section of on new member creation screen
    Given User is on Header tab of New member creation home screen
    When verify the Primary and Secondary radio buttons displayed under Address section
	Then Primary and Secondary radio buttons should display under the Address scention of new member creation page
	
   Scenario: Verify the drop down lists displayed under adress section when the Primary button is checked
    Given User is on Header tab of New member creation home screen
    When verify the drop down lists displayed
	Then Country Code and State drop down lists should display under adress section when the Primary button is checked
	
   Scenario: Verify the drop down lists displayed under adress section when the Secondary button is checked
    Given User is on Header tab of new member creation home page
    When verify the drop down lists displayed
	Then Country Code and State drop down lists should display under adress section when the Secondary button is checked
	
   Scenario: Verify the mandatory fields on the new member header page
    Given User is on Header tab of new member creation home page
    When verify the mandatory fields
	Then Tracking ID, Master Customer Set, Customer Name, Client Name, Group ID, Member ID, Case ID, Member Last name, Member first name, Gender should be the mandatory fields
	
   Scenario: Verify the length of the Tracking ID field on the new member header page
    Given User is on Header tab of new member creation home page
    When verify length of Tracking ID field
	Then Tracking ID should accept the characters upto 15 bits length
	
	Scenario Outline: Verify the Tracking ID field on the new member header page
    Given User is on Header tab of new member creation home page
    When below values are entered and click on Next button
	| Tracking ID   |
	| <Tracking_ID> |
	Then Error message hould display
	| Error Message   |
	| <Error_Message> |
Examples:
  | Tracking_ID   | Error_Message                                                                                                                                                           |
	| 2354356       | Null                                                                                                                                                                    |     
	| afsdgdfhg     | Null                                                                                                                                                                    |
	| #%$^%&        | The ID cannot begin with a special character and can only contain the foolowing special characters: hyphen(-), Period(.), dollor sign($), and pound sign(#). (AMBR0056) |
	| 34#$$         | Null                                                                                                                                                                    |
	
   Scenario: Verify the length of the Reason field on the new member header page
    Given User is on Header tab of new member creation home page
    When verify length of Reason field
	Then Reason field should accept the characters upto 30 bits length
	
	Scenario Outline: Verify the Reason field on the new member header page
    Given User is on Header tab of new member creation home page
    When below values are entered and click on Next button
	| Reason   |
	| <Reason> |
	Then Error message hould display
	| Error Message   |
	| <Error_Message> |
Examples:
    | Reason     | Error_Message                                                                                                                                                               |
	| 2354356    | Null                                                                                                                                                                        |     
	| afsdgdfhg  | Null                                                                                                                                                                        |
	| #%$^%&     | The reason cannot begin with a special character and can only contain the foolowing special characters: hyphen(-), Period(.), dollor sign($), and pound sign(#). (AMBR0056) |
	| 34#$$      | Null                                                                                                                                                                        |
	
   Scenario: Verify the length of the Notes field on the new member header page
    Given User is on Header tab of new member creation home page
    When verify length of Notes field
	Then Notes field should accept the characters upto 254 bits length
	
   Scenario Outline: Verify the Notes field on the new member header page
    Given User is on Header tab of new member creation home page
    When below values are entered and click on Next button
	| Notes   |
	| <Notes> |
	Then Error message hould display
	| Error Message   |
	| <Error_Message> |
Examples:
    | Notes      | Error_Message |
	| 2354356    | Null          |     
	| afsdgdfhg  | Null          |
	| #%$^%&     | Null          |
	| 34#$$      | Null          |
	
   Scenario Outline: Verify the error validation when Master Customer set is not entered
    Given User is on Header tab of new member creation home page
    When below values are entered and click on Next button
	| Master Customer Set   | 
	| <Master_Customer_Set> |
	Then Error message hould display
	| Error Message   | RedX Error Message_Mas cus set   |
	| <Error_Message> | <RedX_Error_Message_Mas_cus_set> |
Examples:
    | Master_Customer_Set | Error_Message                                                                       | RedX_Error_Message_Mas_cus_set                        |
	| Null                | One or more errors were encountered, please see below for more details. (AMBR0007)  | Required field(s) are missing information. (AMBR0001) |
	
	
	Scenario Outline: Verify the error validation when Customer Name is not entered
    Given User is on Header tab of new member creation home page
    When below values are entered and click on Next button
	| Customer Name   | 
	| <Customer_Name> |
	Then Error message hould display
	| Error Message   | RedX Error Message_Customer Name   |
	| <Error_Message> | <RedX_Error_Message_Customer_Name> |
Examples:
    | Customer_Name | Error_Message                                                                       | RedX_Error_Message_Customer_Name                      |
	| Null          | One or more errors were encountered, please see below for more details. (AMBR0007)  | Required field(s) are missing information. (AMBR0001) |
	
	
	Scenario Outline: Verify the error validation when Client Name is not entered
    Given User is on Header tab of new member creation home page
    When below values are entered and click on Next button
	| Client Name   | 
	| <Client_Name> |
	Then Error message hould display
	| Error Message   | RedX Error Message_Client Name   |
	| <Error_Message> | <RedX_Error_Message_Client_Name> |
Examples:
    | Client_Name | Error_Message                                                                       | RedX_Error_Message_Client_Name                        |
	| Null        | One or more errors were encountered, please see below for more details. (AMBR0007)  | Required field(s) are missing information. (AMBR0001) |
	
	
	Scenario: Verify the length of the Group ID field on the new member header page
    Given User is on Header tab of new member creation home page
    When verify length of Group ID field
	Then Group ID should accept the characters upto 30 bits length
	
	Scenario Outline: Verify the Group ID field on the new member header page
    Given User is on Header tab of new member creation home page
    When below values are entered and click on Next button
	| Master Customer Set   | Customer Name   | Client Name   | Group ID   |
	| <Master_Customer_Set> | <Customer_Name> | <Client_Name> | <Group_ID> |
	Then Error message hould display
	| Error Message   | RedX Error Message_Group ID   |
	| <Error_Message> | <RedX_Error_Message_Group_ID> |
Examples:
    | Master_Customer_Set | Customer_Name    | Client_Name          | Group_ID   | Error_Message                                                                      | RedX_Error_Message_Group_ID                                                   |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | Null       | One or more errors were encountered, please see below for more details. (AMBR0007) | Required field(s) are missing information. (AMBR0001)                         |    
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | One or more errors were encountered, please see below for more details. (AMBR0007) | The External Group ID entered is not valid for the client entered. (AMBR0030) |
	
	Scenario: Verify if the Group ID value will be populated below the group ID field
    Given User is on Header tab of new member creation home page
    When starting letters of external group ID are entered
	Then all the Group ID values available under the customer and client should be populated below the Group ID field
	
   Scenario: Verify the Member ID field when member ID format is set 1 and length as 09 in Assign options
    Given User is on Header tab of new member creation home page
    When verify Member ID field
	Then Member ID field should be displayed as 2 different edit text fields for ID and suffix	
	
   Scenario: Verify the Member ID field length when member ID format is set 1 and length as 09 in Assign options
    Given User is on Header tab of new member creation home page
    When verify Member ID field
	Then ID field should allow length upto 9 bits and suffix field upto 2 bits length
	
	Scenario: Verify the Member ID field format when member ID format is set 1 and length as  09 in Assign options
    Given User is on Header tab of new member creation home page
    When verify the member ID field 
	Then only numeric fields should be allowed to enter.

	
   Scenario: Verify the Member ID field when member ID format is set 2 and length as 09 in Assign options
    Given User is on Header tab of new member creation home page
    When verify Member ID field
	Then Member ID field should be displayed as a single edit text field	
	
   Scenario: Verify the Member ID field length when member ID format is set 2 and length as 09 in Assign options
    Given User is on Header tab of new member creation home page
    When verify Member ID field
	Then ID field should allow length upto 9 bits
	
	Scenario: Verify the Member ID field format when member ID format is set 2 and length as 09 in Assign options
    Given User is on Header tab of new member creation home page
    When verify Member ID field
	Then ID field should allow only numeric digits
	
	Scenario: Verify the Member ID field when member ID format is set 3 and length as 09 in Assign options
    Given User is on Header tab of new member creation home page
    When verify Member ID field
	Then Member ID field should be displayed as 2 different edit text fields for ID and suffix	
	
   Scenario: Verify the Member ID field length when member ID format is set 3 and length as 09 in Assign options
    Given User is on Header tab of new member creation home page
    When verify Member ID field
	Then ID field should allow length upto 9 bits
	
	Scenario Outline: Verify the Member ID field format when member ID format is set 3 and length as 09 in Assign options
    Given User is on Header tab of new member creation home page
    When verify below values are entered for Member ID field and click on Next button
	| Member ID   |
	| <Member_ID> |
	Then Error message should display
	| Error Message   |
	| <Error_Message> |
Examples:
    | Member_ID  | Error_Message  |
    | 546774722	 | Null           |
		| dgfhghgjf  | Null           |
	
	Scenario: Verify the Member ID field when member ID format is set 4 and length as 09 in Assign options
    Given User is on Header tab of new member creation home page
    When verify Member ID field
	Then Member ID field should be displayed as a single edit text field	
	
   Scenario: Verify the Member ID field length when member ID format is set 4 and length as 09 in Assign options
    Given User is on Header tab of new member creation home page
    When verify Member ID field
	Then ID field should allow length upto 9 bits
	
	Scenario Outline: Verify the Member ID field format when member ID format is set 4 and length as 09 in Assign options
    Given User is on Header tab of new member creation home page
    When verify below values are entered for Member ID field and click on Next button
	| Member ID   |
	| <Member_ID> |
	Then Error message should display
	| Error Message   |
	| <Error_Message> |
Examples:
    | Member_ID  | Error_Message  |
    | 546774722	 | Null           |
		| dgfhghgjf  | Null           |
	
	Scenario: Verify the Member ID field when member ID format is set 5 and length as 09 in Assign options
    Given User is on Header tab of new member creation home page
    When verify Member ID field
	Then Member ID field should be displayed as 2 different edit text fields for ID and suffix	
	
   Scenario: Verify the Member ID field length when member ID format is set 5 and length as 09 in Assign options
    Given User is on Header tab of new member creation home page
    When verify Member ID field
	Then ID field should allow length upto 9 bits and suffix field upto 1 bit length
	
	Scenario: Verify the Member ID field format when member ID format is set 5 and length as  09 in Assign options
    Given User is on Header tab of new member creation home page
    When verify the member ID field 
	Then only numeric fields should be allowed to enter.
	
	Scenario: Verify the Member ID field when member ID format is set 6 and length as 09 in Assign options
    Given User is on Header tab of new member creation home page
    When verify Member ID field
	Then Member ID field should be displayed as 2 different edit text fields for ID and suffix	
	
   Scenario: Verify the Member ID field length when member ID format is set 6 and length as 09 in Assign options
    Given User is on Header tab of new member creation home page
    When verify Member ID field
	Then ID field should allow length upto 9 bits and suffix upto 1 bit length
	
	Scenario Outline: Verify the Member ID field format when member ID format is set 6 and length as 09 in Assign options
    Given User is on Header tab of new member creation home page
    When verify below values are entered for Member ID field and click on Next button
	| Member ID   |
	| <Member_ID> |
	Then Error message should display
	| Error Message   |
	| <Error_Message> |
Examples:
    | Member_ID  | Error_Message  |
    | 546774722	 | Null           |
		| dgfhghgjf  | Null           |
	
	Scenario: Verify the length of the Member last name field on the new member header page
    Given User is on Header tab of new member creation home page
    When verify length of Group ID field
	Then Member last name should accept the characters upto 80 bits length
	
	Scenario Outline: Verify the Member last name field on the new member header page
    Given User is on Header tab of new member creation home page
    When below values are entered and click on Next button
	| Master Customer Set   | Customer Name   | Client Name   | Group ID   | Member last name   |
	| <Master_Customer_Set> | <Customer_Name> | <Client_Name> | <Group_ID> | <Member_last_name> |
	Then Error message hould display
	| Error Message   |
	| <Error_Message> |
Examples:
    | Master_Customer_Set | Customer_Name    | Client_Name          | Group_ID   | Member_last_name  | Error_Message |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | hdjsfhjd          | Null          |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | 2354354           | Null          |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | #$%%^^**&         | Null          |
	
	Scenario: Verify the length of the Member first name field on the new member header page
    Given User is on Header tab of new member creation home page
    When verify length of Group ID field
	Then Member first name should accept the characters upto 80 bits length
	
	Scenario Outline: Verify the Member first name field on the new member header page
    Given User is on Header tab of new member creation home page
    When below values are entered and click on Next button
	| Master Customer Set   | Customer Name   | Client Name   | Group ID   | Member first name   |
	| <Master_Customer_Set> | <Customer_Name> | <Client_Name> | <Group_ID> | <Member_first_name> |
	Then Error message hould display
	| Error Message   |
	| <Error_Message> |
Examples:
    | Master_Customer_Set | Customer_Name    | Client_Name          | Group_ID   | Member_first_name  | Error_Message |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | hdjsfhjd           | Null          |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | 2354354            | Null          |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | #$%%^^**&          | Null          |
	
	Scenario: Verify the length of the Member middle initial field on the new member header page
    Given User is on Header tab of new member creation home page
    When verify length of Group ID field
	Then Member middle initial should accept the characters upto 1 bit length
	
	Scenario Outline: Verify the Member middle initial field on the new member header page
    Given User is on Header tab of new member creation home page
    When below values are entered and click on Next button
	| Master Customer Set   | Customer Name   | Client Name   | Group ID   | Member middle initial   |
	| <Master_Customer_Set> | <Customer_Name> | <Client_Name> | <Group_ID> | <Member_middle_initial> |
	Then Error message hould display
	| Error Message   |
	| <Error_Message> |
Examples:
    | Master_Customer_Set | Customer_Name    | Client_Name          | Group_ID   | Member_middle_initial  | Error_Message |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | g                      | Null          |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | 2                      | Null          |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | #                      | Null          |
	
	Scenario: Verify the length of the Member Date of birth field on the new member header page
    Given User is on Header tab of new member creation home page
    When verify length of Group ID field
	Then Member Date of birth should accept the characters upto 10 bits length
	
	Scenario Outline: Verify the Member Date of birth field on the new member header page
    Given User is on Header tab of new member creation home page
    When below values are entered and click on Next button
	| Master Customer Set   | Customer Name   | Client Name   | Group ID   | Member Date of birth   |
	| <Master_Customer_Set> | <Customer_Name> | <Client_Name> | <Group_ID> | <Member_Date_of_birth> |
	Then Error message hould display
	| Error Message   | Red X Error Message_DOB 	|
	| <Error_Message> | <Red_X_Error_Message_DOB> |
Examples:
  | Master_Customer_Set | Customer_Name    | Client_Name          | Group_ID   | Member_Date_of_birth  | Error_Message                                                                      | Red_X_Error_Message_DOB                                                                               |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | 6777488899            | One or more errors were encountered, please see below for more details. (AMBR0007) | The date you have entered is invalid. Please enter a valid date in the format of MMDDYYYY. (AMBR0006) |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | 45/12/2019            | One or more errors were encountered, please see below for more details. (AMBR0007) | The date you have entered is invalid. Please enter a valid date in the format of MMDDYYYY. (AMBR0006) |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | 12/23/2019            | One or more errors were encountered, please see below for more details. (AMBR0007) | The date you have entered is invalid. Please enter a valid date in the format of MMDDYYYY. (AMBR0006) |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | 12/01/2034            | Null                                                                               | Null                                                                                                  |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | sdgfhghjgj            | One or more errors were encountered, please see below for more details. (AMBR0007) | The date you have entered is invalid. Please enter a valid date in the format of MMDDYYYY. (AMBR0006) |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | 3465dgf               | One or more errors were encountered, please see below for more details. (AMBR0007) | The date you have entered is invalid. Please enter a valid date in the format of MMDDYYYY. (AMBR0006) |
	
	
	Scenario: Verify the length of the Member Deceased date field on the new member header page
    Given User is on Header tab of new member creation home page
    When verify length of Group ID field
	Then Member Deceased date should accept the characters upto 10 bits length
	
	Scenario Outline: Verify the Member Deceased date field on the new member header page
    Given User is on Header tab of new member creation home page
    When below values are entered and click on Next button
	| Master Customer Set   | Customer Name   | Client Name   | Group ID   | Member Deceased date   |
	| <Master_Customer_Set> | <Customer_Name> | <Client_Name> | <Group_ID> | <Member_Deceased_date> |
	Then Error message hould display
	| Error Message   | Red X Error Message_DD  |
	| <Error_Message> | <Red_X_Error_Message_DD |
Examples:
    | Master_Customer_Set | Customer_Name    | Client_Name          | Group_ID   | Member_Deceased_date  | Error_Message                                                                      | Red_X_Error_Message_DD                                                                                |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | 6777488899            | One or more errors were encountered, please see below for more details. (AMBR0007) | The date you have entered is invalid. Please enter a valid date in the format of MMDDYYYY. (AMBR0006) |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | 45/12/2019            | One or more errors were encountered, please see below for more details. (AMBR0007) | The date you have entered is invalid. Please enter a valid date in the format of MMDDYYYY. (AMBR0006) |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | 12/23/2019            | One or more errors were encountered, please see below for more details. (AMBR0007) | The date you have entered is invalid. Please enter a valid date in the format of MMDDYYYY. (AMBR0006) |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | 12/01/2034            | Null                                                                               | Null                                                                                                  |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | sdgfhghjgj            | One or more errors were encountered, please see below for more details. (AMBR0007) | The date you have entered is invalid. Please enter a valid date in the format of MMDDYYYY. (AMBR0006) |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | 3465dgf               | One or more errors were encountered, please see below for more details. (AMBR0007) | The date you have entered is invalid. Please enter a valid date in the format of MMDDYYYY. (AMBR0006) |
	
	Scenario: Verify the length of the Member Family size field on the new member header page
    Given User is on Header tab of new member creation home page
    When verify length of Group ID field
	Then Member Family size should accept the characters upto 2 bits length
	
	Scenario Outline: Verify the Member Family size field on the new member header page
    Given User is on Header tab of new member creation home page
    When below values are entered and click on Next button
	| Master Customer Set   | Customer Name   | Client Name   | Group ID   | Member Family size   |
	| <Master_Customer_Set> | <Customer_Name> | <Client_Name> | <Group_ID> | <Member_Family_size> |
	Then Error message hould display
	| Error Message   | Red X Error Message_Family size  |
	| <Error_Message> | <Red_X_Error_Message_Family_size |
Examples:
    | Master_Customer_Set | Customer_Name    | Client_Name          | Group_ID   | Member_Family_size | Error_Message | Red_X_Error_Message_Family_size |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | 1                  | Null          | Null                            |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | 22                 | Null          | Null                            |
	
	Scenario: Verify the length of the Member Medicare beneficiary ID field on the new member header page
    Given User is on Header tab of new member creation home page
    When verify length of Group ID field
	Then Member Medicare beneficiary ID should accept the characters upto 2 bits length
	
	Scenario Outline: Verify the Medicare beneficiary ID field on the new member header page
    Given User is on Header tab of new member creation home page
    When below values are entered and click on Next button
	| Master Customer Set   | Customer Name   | Client Name   | Group ID   | Medicare beneficiary ID   |
	| <Master_Customer_Set> | <Customer_Name> | <Client_Name> | <Group_ID> | <Medicare_beneficiary_ID> |
	Then Error message hould display
	| Error Message   | Red X Error Message_Medicare beneficiary ID  |
	| <Error_Message> | <Red_X_Error_Message_Medicare_beneficiary_ID |
Examples:
    | Master_Customer_Set | Customer_Name    | Client_Name          | Group_ID   | Medicare_beneficiary_ID | Error_Message                                                                      | Red_X_Error_Message_Medicare_beneficiary_ID |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | 13243343433             | One or more errors were encountered, please see below for more details. (AMBR0007) | Invalid MBI format. (AMBR0944)              |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | fgrdhfh2322             | One or more errors were encountered, please see below for more details. (AMBR0007) | Invalid MBI format. (AMBR0944)              |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | 7G73HJ4PT97             | Null                                                                               | Null                                        |
	
	
	Scenario: Verify the length of the Email address field on the new member header page
    Given User is on Header tab of new member creation home page
    When verify length of Group ID field
	Then Email address field should accept the characters upto 255 bits length
	
	Scenario Outline: Verify the Email address field on the new member header page
    Given User is on Header tab of new member creation home page
    When below values are entered and click on Next button
	| Master Customer Set   | Customer Name   | Client Name   | Group ID   | Email address   |
	| <Master_Customer_Set> | <Customer_Name> | <Client_Name> | <Group_ID> | <Email_address> |
	Then Error message hould display
	| Error Message   | Red X Error Message_Email address  |
	| <Error_Message> | <Red_X_Error_Message_Email_address |
Examples:
    | Master_Customer_Set | Customer_Name    | Client_Name          | Group_ID   | Email_address               | Error_Message                                                                      | Red_X_Error_Message_Email_address      |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | har``sdi.mod@dst.com        | One or more errors were encountered, please see below for more details. (AMBR0007) | Email ID format is Invalid. (AMBR0009) |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | har~~sdi.mod@dst.com        | One or more errors were encountered, please see below for more details. (AMBR0007) | Email ID format is Invalid. (AMBR0009) |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | har}}sdi.mod@dst.com        | One or more errors were encountered, please see below for more details. (AMBR0007) | Email ID format is Invalid. (AMBR0009) |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | har||sdi.mod@dst.com        | One or more errors were encountered, please see below for more details. (AMBR0007) | Email ID format is Invalid. (AMBR0009) |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | har!!sdi.mod@dst.com        | One or more errors were encountered, please see below for more details. (AMBR0007) | Email ID format is Invalid. (AMBR0009) |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | har@@sdi.mod@dst.com        | One or more errors were encountered, please see below for more details. (AMBR0007) | Email ID format is Invalid. (AMBR0009) |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | har##sdi.mod@dst.com        | One or more errors were encountered, please see below for more details. (AMBR0007) | Email ID format is Invalid. (AMBR0009) |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | har$$sdi.mod@dst.com        | One or more errors were encountered, please see below for more details. (AMBR0007) | Email ID format is Invalid. (AMBR0009) |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | har%%sdi.mod@dst.com        | One or more errors were encountered, please see below for more details. (AMBR0007) | Email ID format is Invalid. (AMBR0009) |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | har^^sdi.mod@dst.com        | One or more errors were encountered, please see below for more details. (AMBR0007) | Email ID format is Invalid. (AMBR0009) |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | har&&sdi.mod@dst.com        | One or more errors were encountered, please see below for more details. (AMBR0007) | Email ID format is Invalid. (AMBR0009) |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | har**sdi.mod@dst.com        | One or more errors were encountered, please see below for more details. (AMBR0007) | Email ID format is Invalid. (AMBR0009) |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | har++sdi.mod@dst.com        | One or more errors were encountered, please see below for more details. (AMBR0007) | Email ID format is Invalid. (AMBR0009) |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | har--sdi.mod@dst.com        | One or more errors were encountered, please see below for more details. (AMBR0007) | Email ID format is Invalid. (AMBR0009) |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | har==sdi.mod@dst.com        | One or more errors were encountered, please see below for more details. (AMBR0007) | Email ID format is Invalid. (AMBR0009) |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | har''sdi.mod@dst.com        | One or more errors were encountered, please see below for more details. (AMBR0007) | Email ID format is Invalid. (AMBR0009) |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | har^%&sdi.mod@dst.com       | Null                                                                               | Null                                   |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | harisha.modugula@dst56.com  | Null                                                                               | Null                                   |
	
	
	Scenario: Verify the length of the Address line 1 on the new member header page under Primary address section
    Given User is on Header tab of new member creation home page
    When verify length of Address line 1 field
	Then Address line 1 should accept the characters upto 50 bits length
	
	Scenario Outline: Verify the Address line 1 field on the new member header page under Primary address section
    Given User is on Header tab of new member creation home page
    When below values are entered and click on Next button
	| Master Customer Set   | Customer Name   | Client Name   | Group ID   | Address line 1   |
	| <Master_Customer_Set> | <Customer_Name> | <Client_Name> | <Group_ID> | <Address_line_1> |
	Then Error message hould display
	| Error Message   | Red X Error Address line 1   |
	| <Error_Message> | <Red_X_Error_Address_line_1> |
Examples:
    | Master_Customer_Set | Customer_Name    | Client_Name          | Group_ID   | Address_line_1  | Error_Message | Red_X_Error_Message_Address_line_1  |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | 13243343433     | Null          | Null                                |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | fgrdhfh2322     | Null          | Null                                |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | @#$$$@#%^Y&*    | Null          | Null                                |
	
	Scenario: Verify the length of the Address line 2 on the new member header page under Primary address section
    Given User is on Header tab of new member creation home page
    When verify length of Address line 2 field
	Then Address line 2 should accept the characters upto 50 bits length
	
	Scenario Outline: Verify the Address line 2 field on the new member header page under Primary address section
    Given User is on Header tab of new member creation home page
    When below values are entered and click on Next button
	| Master Customer Set   | Customer Name   | Client Name   | Group ID   | Address line 2   |
	| <Master_Customer_Set> | <Customer_Name> | <Client_Name> | <Group_ID> | <Address_line_2> |
	Then Error message hould display
	| Error Message   | Red X Error Address line 1   |
	| <Error_Message> | <Red_X_Error_Address_line_1> |
Examples:
    | Master_Customer_Set | Customer_Name    | Client_Name          | Group_ID   | Address_line_2  | Error_Message | Red_X_Error_Message_Address_line_2  |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | 13243343433     | Null          | Null                                |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | fgrdhfh2322     | Null          | Null                                |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | @#$$$@#%^Y&*    | Null          | Null                                |
	
	
	Scenario: Verify the length of the Address line 3 on the new member header page under Primary address section
    Given User is on Header tab of new member creation home page
    When verify length of Address line 3 field
	Then Address line 3 should accept the characters upto 50 bits length
	
	Scenario Outline: Verify the Address line 3 field on the new member header page under Primary address section
    Given User is on Header tab of new member creation home page
    When below values are entered and click on Next button
	| Master Customer Set   | Customer Name   | Client Name   | Group ID   | Address line 3   |
	| <Master_Customer_Set> | <Customer_Name> | <Client_Name> | <Group_ID> | <Address_line_3> |
	Then Error message hould display
	| Error Message   | Red X Error Address line 1   |
	| <Error_Message> | <Red_X_Error_Address_line_1> |
Examples:
    | Master_Customer_Set | Customer_Name    | Client_Name          | Group_ID   | Address_line_3  | Error_Message | Red_X_Error_Message_Address_line_3  |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | 13243343433     | Null          | Null                                |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | fgrdhfh2322     | Null          | Null                                |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | @#$$$@#%^Y&*    | Null          | Null                                |
	
	
	Scenario: Verify the length of the City on the new member header page under Primary address section
    Given User is on Header tab of new member creation home page
    When verify length of City field
	Then City should accept the characters upto 35 bits length
	
	Scenario Outline: Verify the City field on the new member header page under Primary address section
    Given User is on Header tab of new member creation home page
    When below values are entered and click on Next button
	| Master Customer Set   | Customer Name   | Client Name   | Group ID   | City   |
	| <Master_Customer_Set> | <Customer_Name> | <Client_Name> | <Group_ID> | <City> |
	Then Error message hould display
	| Error Message   | Red X Error City   |
	| <Error_Message> | <Red_X_Error_City> |
Examples:
    | Master_Customer_Set | Customer_Name    | Client_Name          | Group_ID   | City            | Error_Message | Red_X_Error_Message_City  |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | 13243343433     | Null          | Null                      |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | fgrdhfh2322     | Null          | Null                      |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | @#$$$@#%^Y&*    | Null          | Null                      |
	
	
	Scenario: Verify the length of the Zip code field on the new member header page under Primary address section
    Given User is on Header tab of new member creation home page
    When verify length of Zip code field
	Then Zip code field should be displayed as 2 seperate edit text fields with 5 bits and 4 bits length.
	
	Scenario: Verify the Zip code field on the new member header page under Primary address section
    Given User is on Header tab of new member creation home page
    When verify Zip code field
	Then Zip code field should accept numeric values alone to enter
	
	Scenario: Verify the Postal code field on the new member header page under Primary address section
    Given User is on Header tab of new member creation home page
    When verify Postal code field
	Then Postal code field should be greyed out
	
	
	Scenario Outline: Verify the Domestic phone number field on the new member header page under Primary address section
    Given User is on Header tab of new member creation home page
    When verify Domestic phone number field
	Then Domestic phone number field should be in below format
	| Domestic phone number   |
	| <Domestic_phone_number> |
Examples:
    | Domestic_phone_number  |
	| (344)565-677           |
	
	
	Scenario: Verify the length of the International phone number field on the new member header page under Primary address section
    Given User is on Header tab of new member creation home page
    When verify length of International phone number field
	Then International phone number field should allow upto 20 bits length.
	
	Scenario Outline: Verify the International phone number field on the new member header page under Primary address section
    Given User is on Header tab of new member creation home page
    When below values are entered and click on Next button
	| Master Customer Set   | Customer Name   | Client Name   | Group ID   | International phone number   |
	| <Master_Customer_Set> | <Customer_Name> | <Client_Name> | <Group_ID> | <International_phone_number> |
	Then Error message hould display
	| Error Message   | Red X Error_International phone number   |
	| <Error_Message> | <Red_X_Error_International_phone_number> |
Examples:
    | Master_Customer_Set | Customer_Name    | Client_Name          | Group_ID   | International_phone_number  | Error_Message | Red_X_Error_Message_International_phone_number  |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | 13243343433                 | Null          | Null                                            |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | fgrdhfh2322                 | Null          | Null                                            |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | @#$$$@#%^Y&*                | Null          | Null                                            |
	
	
	Scenario: Verify the length of the Address line 1 on the new member header page under Secondary address section
    Given User is on Header tab of new member creation home page
    When verify length of Address line 1 field
	Then Address line 1 should accept the characters upto 50 bits length
	
	Scenario Outline: Verify the Address line 1 field on the new member header page under Secondary address section
    Given User is on Header tab of new member creation home page
    When below values are entered and click on Next button
	| Master Customer Set   | Customer Name   | Client Name   | Group ID   | Address line 1   |
	| <Master_Customer_Set> | <Customer_Name> | <Client_Name> | <Group_ID> | <Address_line_1> |
	Then Error message hould display
	| Error Message   | Red X Error Address line 1   |
	| <Error_Message> | <Red_X_Error_Address_line_1> |
Examples:
    | Master_Customer_Set | Customer_Name    | Client_Name          | Group_ID   | Address_line_1  | Error_Message | Red_X_Error_Message_Address_line_1  |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | 13243343433     | Null          | Null                                |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | fgrdhfh2322     | Null          | Null                                |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | @#$$$@#%^Y&*    | Null          | Null                                |
	
	Scenario: Verify the length of the Address line 2 on the new member header page under Secondary address section
    Given User is on Header tab of new member creation home page
    When verify length of Address line 2 field
	Then Address line 2 should accept the characters upto 50 bits length
	
	Scenario Outline: Verify the Address line 2 field on the new member header page under Secondary address section
    Given User is on Header tab of new member creation home page
    When below values are entered and click on Next button
	| Master Customer Set   | Customer Name   | Client Name   | Group ID   | Address line 2   |
	| <Master_Customer_Set> | <Customer_Name> | <Client_Name> | <Group_ID> | <Address_line_2> |
	Then Error message hould display
	| Error Message   | Red X Error Address line 1   |
	| <Error_Message> | <Red_X_Error_Address_line_1> |
Examples:
    | Master_Customer_Set | Customer_Name    | Client_Name          | Group_ID   | Address_line_2  | Error_Message | Red_X_Error_Message_Address_line_2  |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | 13243343433     | Null          | Null                                |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | fgrdhfh2322     | Null          | Null                                |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | @#$$$@#%^Y&*    | Null          | Null                                |
	
	
	Scenario: Verify the length of the Address line 3 on the new member header page under Secondary address section
    Given User is on Header tab of new member creation home page
    When verify length of Address line 3 field
	Then Address line 3 should accept the characters upto 50 bits length
	
	Scenario Outline: Verify the Address line 3 field on the new member header page under Secondary address section
    Given User is on Header tab of new member creation home page
    When below values are entered and click on Next button
	| Master Customer Set   | Customer Name   | Client Name   | Group ID   | Address line 3   |
	| <Master_Customer_Set> | <Customer_Name> | <Client_Name> | <Group_ID> | <Address_line_3> |
	Then Error message hould display
	| Error Message   | Red X Error Address line 1   |
	| <Error_Message> | <Red_X_Error_Address_line_1> |
Examples:
    | Master_Customer_Set | Customer_Name    | Client_Name          | Group_ID   | Address_line_3  | Error_Message | Red_X_Error_Message_Address_line_3  |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | 13243343433     | Null          | Null                                |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | fgrdhfh2322     | Null          | Null                                |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | @#$$$@#%^Y&*    | Null          | Null                                |
	
	
	Scenario: Verify the length of the City on the new member header page under Secondary address section
    Given User is on Header tab of new member creation home page
    When verify length of City field
	Then City should accept the characters upto 35 bits length
	
	Scenario Outline: Verify the City field on the new member header page under Secondary address section
    Given User is on Header tab of new member creation home page
    When below values are entered and click on Next button
	| Master Customer Set   | Customer Name   | Client Name   | Group ID   | City   |
	| <Master_Customer_Set> | <Customer_Name> | <Client_Name> | <Group_ID> | <City> |
	Then Error message hould display
	| Error Message   | Red X Error City   |
	| <Error_Message> | <Red_X_Error_City> |
Examples:
    | Master_Customer_Set | Customer_Name    | Client_Name          | Group_ID   | City            | Error_Message | Red_X_Error_Message_City  |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | 13243343433     | Null          | Null                      |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | fgrdhfh2322     | Null          | Null                      |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | @#$$$@#%^Y&*    | Null          | Null                      |
	
	
	Scenario: Verify the length of the Zip code field on the new member header page under Secondary address section
    Given User is on Header tab of new member creation home page
    When verify length of Zip code field
	Then Zip code field should be displayed as 2 seperate edit text fields with 5 bits and 4 bits length.
	
	Scenario: Verify the Zip code field on the new member header page under Secondary address section
    Given User is on Header tab of new member creation home page
    When verify Zip code field
	Then Zip code field should accept numeric values alone to enter
	
	Scenario: Verify the Postal code field on the new member header page under Secondary address section
    Given User is on Header tab of new member creation home page
    When verify Postal code field
	Then Postal code field should be greyed out
	
	
	Scenario Outline: Verify the Domestic phone number field on the new member header page under Secondary address section
    Given User is on Header tab of new member creation home page
    When verify Domestic phone number field
	Then Domestic phone number field should be in below format
	| Domestic phone number   |
	| <Domestic_phone_number> |
Examples:
    | Domestic_phone_number  |
	| (344)565-677           |
	
	
	Scenario: Verify the length of the International phone number field on the new member header page under Secondary address section
    Given User is on Header tab of new member creation home page
    When verify length of International phone number field
	Then International phone number field should allow upto 20 bits length.
	
	Scenario Outline: Verify the International phone number field on the new member header page under Secondary address section
    Given User is on Header tab of new member creation home page
    When below values are entered and click on Next button
	| Master Customer Set   | Customer Name   | Client Name   | Group ID   | International phone number   |
	| <Master_Customer_Set> | <Customer_Name> | <Client_Name> | <Group_ID> | <International_phone_number> |
	Then Error message hould display
	| Error Message   | Red X Error_International phone number   |
	| <Error_Message> | <Red_X_Error_International_phone_number> |
Examples:
    | Master_Customer_Set | Customer_Name    | Client_Name          | Group_ID   | International_phone_number  | Error_Message | Red_X_Error_Message_International_phone_number  |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | 13243343433                 | Null          | Null                                            |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | fgrdhfh2322                 | Null          | Null                                            |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | @#$$$@#%^Y&*                | Null          | Null                                            |
	
	Scenario: Verify the length of the Last name field on the new member header page under Card Holder Name section
    Given User is on Header tab of new member creation home page
    When verify length of Last name field
	Then Last name field should allow upto 25 bits length.
	
	Scenario Outline: Verify the Last name field on the new member header page under Card Holder Name section
    Given User is on Header tab of new member creation home page
    When below values are entered and click on Next button
	| Master Customer Set   | Customer Name   | Client Name   | Group ID   | Last name   |
	| <Master_Customer_Set> | <Customer_Name> | <Client_Name> | <Group_ID> | <Last_name> |
	Then Error message hould display
	| Error Message   | Red X Error_Last name   |
	| <Error_Message> | <Red_X_Error_Last_name> |
Examples:
    | Master_Customer_Set | Customer_Name    | Client_Name          | Group_ID   | Last_name      | Error_Message | Red_X_Error_Message_Last_name  |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | 13243343433    | Null          | Null                           |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | fgrdhfh2322    | Null          | Null                           |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | @#$$$@#%^Y&*   | Null          | Null                           |
	
	Scenario: Verify the length of the First name field on the new member header page under Card Holder Name section
    Given User is on Header tab of new member creation home page
    When verify length of First name field
	Then First name field should allow upto 25 bits length.
	
	Scenario Outline: Verify the First name field on the new member header page under Card Holder Name section
    Given User is on Header tab of new member creation home page
    When below values are entered and click on Next button
	| Master Customer Set   | Customer Name   | Client Name   | Group ID   | First name   |
	| <Master_Customer_Set> | <Customer_Name> | <Client_Name> | <Group_ID> | <First_name> |
	Then Error message hould display
	| Error Message   | Red X Error_First name   |
	| <Error_Message> | <Red_X_Error_First_name> |
Examples:
    | Master_Customer_Set | Customer_Name    | Client_Name          | Group_ID   | First_name     | Error_Message | Red_X_Error_Message_First_name  |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | 13243343433    | Null          | Null                            |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | fgrdhfh2322    | Null          | Null                            |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | @#$$$@#%^Y&*   | Null          | Null                            |
	
	Scenario: Verify the length of the Middle Initial field on the new member header page under Card Holder Name section
    Given User is on Header tab of new member creation home page
    When verify length of Middle Initial field
	Then Middle Initial field should allow upto 1 bit length.
	
	Scenario Outline: Verify the Middle Initial field on the new member header page under Card Holder Name section
    Given User is on Header tab of new member creation home page
    When below values are entered and click on Next button
	| Master Customer Set   | Customer Name   | Client Name   | Group ID   | Middle Initial   |
	| <Master_Customer_Set> | <Customer_Name> | <Client_Name> | <Group_ID> | <Middle_Initial> |
	Then Error message hould display
	| Error Message   | Red X Error_Middle Initial   |
	| <Error_Message> | <Red_X_Error_Middle_Initial> |
Examples:
    | Master_Customer_Set | Customer_Name    | Client_Name          | Group_ID   | Middle_Initial | Error_Message | Red_X_Error_Message_Middle_Initial  |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | 1              | Null          | Null                                |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | e              | Null          | Null                                |
	| Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | sdfdgfghf  | @              | Null          | Null                                |
	
	
	Scenario Outline: Verifying the new member creation
	Given the User is on new member creation home page
	When below values are entered and click on Next button
	| Tracking ID   | Master customer set   | Customer name   | Client name   | Group ID   | Member ID   | Member last name   | Member first name   | Date of birth   | Gender   |
  | <Tracking_ID> | <Master_customer_set> | <Customer_name> | <Client_name> |	<Group_ID> | <Member_ID> | <Member_last_name> | <Member_first_name> | <Date_of_birth> | <Gender> |
	Then Details tab of Member creation page should display
Examples: 
	| Tracking_ID | Master_customer_set | Customer_name    | Client_name          |	Group_ID | Member_ID   | Member_last_name | Member_first_name | Date_of_birth | Gender |
	| 12436456    | Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | 123966   | 52643784801 | MM               | HH                | 01/09/1968    | Female | 
	
	
	Scenario: Verify if the data displayed against the fields displayed on the new member creation screen
    Given User is on Details tab of New member creation home page
    When verify the data displayed against fields on new mwmber creation page
	Then data entered in Header tab for the fields should be populated against Master Customer Set, Customer Name, Client Name, External Group ID, Internal Group ID, Member ID, Member Last First, Date of birth, Gender, Active effective date range and Test fields 
	
	
	Scenario Outline: Verifying the Cancel button functionality
	Given the User is on new member creation home page
	When below values are entered and click on Cancel button
	| Tracking ID   | Master customer set   | Customer name   | Client name   | Group ID   | Member ID   | Member last name   | Member first name   | Date of birth   | Gender   |
  | <Tracking_ID> | <Master_customer_set> | <Customer_name> | <Client_name> |	<Group_ID> | <Member_ID> | <Member_last_name> | <Member_first_name> | <Date_of_birth> | <Gender> |      
	Then Pop up window with Yes and No buttons should dispaly
	| Pop up Message   |
	| <Pop_up_Message> |
	
Examples: 
	| Tracking_ID | Master_customer_set | Customer_name    | Client_name          |	Group_ID | Member_ID   | Member_last_name | Member_first_name | Date_of_birth | Gender | Pop_up_Message                                                                 |
	| 12436456    | Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | 123966   | 52643784801 | MM               | HH                | 01/09/1968    | Female | All updates since your last save will be lost. Are you sure you want to exit?  |
	
	Scenario: Verifying the Cancel button functionality
	Given the Pop up screen is displayed on the member home screen
	When click on Yes button
	Then Member home screen should display
	
	Scenario: Verifying the Cancel button functionality
	Given the Pop up screen is displayed on the member home screen
	When click on No button
	Then all the details entered in the new member creation screen should retain
	
	Scenario: Verifying the Close Window link functionality
	Given Uswer is on new member creation screen
	When click on Close Window link
	Then Member home page tab should be closed
	
	Scenario Outline: Verifying the Member Home link functionality
	Given the User is on new member creation screen
	When below values are entered and click on Member Home link displayed at the top left left corner of the page
	| Tracking ID   | Master customer set   | Customer name   | Client name   | Group ID   | Member ID   | Member last name   | Member first name   | Date of birth   | Gender   |
  | <Tracking_ID> | <Master_customer_set> | <Customer_name> | <Client_name> |	<Group_ID> | <Member_ID> | <Member_last_name> | <Member_first_name> | <Date_of_birth> | <Gender> |
	          
	Then Pop up window with Yes and No buttons should dispaly
	| Pop up Message   |
	| <Pop_up_Message> |
	
Examples: 
	| Tracking_ID | Master_customer_set | Customer_name    | Client_name          |	Group_ID | Member_ID   | Member_last_name | Member_first_name | Date_of_birth | Gender | Pop_up_Message                                                                 |
	| 12436456    | Qtp_Master_1        | 366-U0366AMERIHE | 00006-ANGIE'S CLIENT | 123966   | 52643784801 | MM               | HH                | 01/09/1968    | Female | All updates since your last save will be lost. Are you sure you want to exit?  |
	
	Scenario: Verifying the Cancel button functionality
	Given the Pop up screen is displayed on the new member creation home screen
	When click on Yes button
	Then Member home screen should display
	
	Scenario: Verifying the Cancel button functionality
	Given the Pop up screen is displayed on the new member creation home screen
	When click on No button
	Then all the details entered in the new member creation screen should retain
	
	
	
	
	
	

	
	
	
	
	
  