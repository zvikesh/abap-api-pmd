//Description
@EndUserText.label: 'Business Partner Value Help'
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

define view entity ZVKS_I_BusinessPartnerVH 
as select from ZVKS_R_BusinessPartner
{
    key PartnerID,
    key PartnerType,
    Prefix,
    FirstName,
    MiddleName,
    LastName,
    Suffix,
    NickName,
    Phone,
    Email,
    City,
    Street,
    Region,
    Country,
    ZipCode,
    CreatedBy,
    CreatedAt,
    LocalLastChangedBy,
    LocalLastChangedAt,
    LastChangedAt
}
