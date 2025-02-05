//Description
@EndUserText.label: 'Unit of Measaure Value Help'
//DCL
@AccessControl.authorizationCheck: #NOT_REQUIRED
//VDM Layer
@VDM.viewType: #COMPOSITE
//Data Category
@ObjectModel.dataCategory: #VALUE_HELP
@ObjectModel.usageType:{
    serviceQuality: #A,
    dataClass: #MASTER,
    sizeCategory: #L
}
//Analytical
@Analytics.dataCategory: #DIMENSION
// Value Help as Drop Down
@ObjectModel.resultSet.sizeCategory: #XS
define view entity ZVKS_I_UnitofMeasureVH
  as select from I_UnitOfMeasureText
{
  key Language,
  key UnitOfMeasure,
      UnitOfMeasureLongName
}
