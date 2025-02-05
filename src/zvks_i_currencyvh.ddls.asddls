//Description
@EndUserText.label: 'Currency Value Help'
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
define view entity ZVKS_I_CurrencyVH
  as select from I_CurrencyText
{
  key Language,
  key Currency,
      CurrencyName
}
