@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ABH RAP Employee'

define view entity ZI_ABH_EMP
  as select from zabh_rap_emp

  association to parent ZI_ABH_DEPT as _Department
    on $projection.DepartmentId = _Department.DepartmentId
{
  @EndUserText.label: 'Employee ID'
  key employee_id       as EmployeeId,

  @EndUserText.label: 'First Name'
      first_name        as FirstName,
      
  @EndUserText.label: 'Last Name'
      last_name         as LastName,
      
  @EndUserText.label: 'Email'
      email             as Email,
      
  @EndUserText.label: 'Designation'
      designation       as Designation,
      
  @EndUserText.label: 'Salary'
      salary            as Salary,
      
  @EndUserText.label: 'Joining Date'
      joining_date      as JoiningDate,
      
  @EndUserText.label: 'Department ID'
      department_id     as DepartmentId,
      
  @EndUserText.label: 'Status'
      status            as Status,

  @EndUserText.label: 'Created By'
      created_by        as CreatedBy,
      
  @EndUserText.label: 'Created At'
      created_at        as CreatedAt,
      
  @EndUserText.label: 'Last Changed By'
      last_changed_by   as LastChangedBy,
      
  @EndUserText.label: 'Last Changed At'
      last_changed_at   as LastChangedAt,

      _Department
}
