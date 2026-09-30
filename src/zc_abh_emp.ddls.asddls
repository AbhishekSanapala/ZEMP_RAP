@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ABH RAP Employee Projection'
@Metadata.allowExtensions: true

define view entity ZC_ABH_EMP
  as projection on ZI_ABH_EMP
{
  @EndUserText.label: 'Employee ID'
key EmployeeId,

@EndUserText.label: 'First Name'
FirstName,

@EndUserText.label: 'Last Name'
LastName,

@EndUserText.label: 'Email'
Email,

@EndUserText.label: 'Designation'
Designation,

@EndUserText.label: 'Salary'
Salary,

@EndUserText.label: 'Joining Date'
JoiningDate,

@EndUserText.label: 'Department ID'
DepartmentId,

@EndUserText.label: 'Status'
Status,

@EndUserText.label: 'Created By'
CreatedBy,

@EndUserText.label: 'Created At'
CreatedAt,

@EndUserText.label: 'Last Changed By'
LastChangedBy,

@EndUserText.label: 'Last Changed At'
LastChangedAt,

_Department : redirected to parent ZC_ABH_DEPT
  
}
