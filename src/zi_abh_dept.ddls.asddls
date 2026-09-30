@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ABH RAP Department'

define root view entity ZI_ABH_DEPT
  as select from zabh_rap_dept

  composition [0..*] of ZI_ABH_EMP as _Employee
{
  @EndUserText.label: 'Department ID'
  key department_id                as DepartmentId,
  
  @EndUserText.label: 'Department Name'
      department_name              as DepartmentName,
      
  @EndUserText.label: 'Location'
      location                     as Location,

  @EndUserText.label: 'Created By'
      created_by                   as CreatedBy,
      
  @EndUserText.label: 'Created At'
      created_at                   as CreatedAt,
      
  @EndUserText.label: 'Last Changed By'
      last_changed_by              as LastChangedBy,
      
  @EndUserText.label: 'Last Changed At'
      last_changed_at              as LastChangedAt,

      _Employee
}
