@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ABH RAP Department Projection'
@Metadata.allowExtensions: true

define root view entity ZC_ABH_DEPT
  provider contract transactional_query
  as projection on ZI_ABH_DEPT
{
  @EndUserText.label: 'Department ID'
  key DepartmentId,

  @EndUserText.label: 'Department Name'
  DepartmentName,

  @EndUserText.label: 'Location'
  Location,

  @EndUserText.label: 'Created By'
  CreatedBy,

  @EndUserText.label: 'Created At'
  CreatedAt,

  @EndUserText.label: 'Last Changed By'
  LastChangedBy,

  @EndUserText.label: 'Last Changed At'
  LastChangedAt,

  _Employee : redirected to composition child ZC_ABH_EMP
}
