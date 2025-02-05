//Description
@EndUserText.label: 'Products'
//DCL
@AccessControl.authorizationCheck: #NOT_REQUIRED
//VDM Layer
@VDM.viewType: #TRANSACTIONAL
//Performance
@ObjectModel.usageType:{
    serviceQuality: #A,
    dataClass: #MASTER,
    sizeCategory: #L
}
define root view entity ZVKS_R_ProductsTP
  as select from ZVKS_R_Products
{
  key ProductID,
      ProductName,
      Category,
      SubCategory,
      @Semantics.amount.currencyCode: 'Currency'
      UnitPrice,
      Currency,
      Rating,
      @Semantics.quantity.unitOfMeasure: 'BaseUnitOfMeasure'
      MaximumQuantity,
      @Semantics.quantity.unitOfMeasure: 'BaseUnitOfMeasure'
      MinimumQuantity,
      @Semantics.quantity.unitOfMeasure: 'BaseUnitOfMeasure'
      ActualQuantity,
      BaseUnitOfMeasure,
      _BaseUnitOfMeasure._Text[1:Language = $session.system_language ].UnitOfMeasureLongName      as BaseUoMName,
      @Semantics.quantity.unitOfMeasure: 'DimensionUnitOfMeasure'
      Height,
      @Semantics.quantity.unitOfMeasure: 'DimensionUnitOfMeasure'
      Width,
      @Semantics.quantity.unitOfMeasure: 'DimensionUnitOfMeasure'
      Depth,
      DimensionUnitOfMeasure,
      _DimensionUnitOfMeasure._Text[1:Language = $session.system_language ].UnitOfMeasureLongName as DimensionUoMName,
      @Semantics.quantity.unitOfMeasure: 'WeightUnitOfMeasure'
      Weight,
      WeightUnitOfMeasure,
      _WeightUnitOfMeasure._Text[1:Language = $session.system_language ].UnitOfMeasureLongName    as WeightUoMName,
      ManufacturerID,

      concat_with_space(
        concat_with_space(
          concat_with_space(
              concat_with_space(
                  _Manufacturer.Prefix,
                  _Manufacturer.FirstName,
                  1 ),
              _Manufacturer.MiddleName, 1 ),
          _Manufacturer.LastName, 1),
        _Manufacturer.Suffix, 1 )                                                                 as ManufacturerFullName,

      SupplierID,

      concat_with_space(
        concat_with_space(
          concat_with_space(
              concat_with_space(
                  _Supplier.Prefix,
                  _Supplier.FirstName,
                  1 ),
              _Supplier.MiddleName, 1 ),
          _Supplier.LastName, 1),
        _Supplier.Suffix, 1 )                                                                     as SupplierFullName,

      ExpiryDate,
      BlockedForProcurement,

      /*Administrative Fields*/

      //Check if the annotations are required on BO View, or only on Consumption View it is enough.

      //@Semantics.user.createdBy: true
      CreatedBy,
      //@Semantics.systemDateTime.createdAt: true
      CreatedAt,
      //@Semantics.user.localInstanceLastChangedBy: true
      LocalLastChangedBy,
      //@Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt, //Local ETag
      //@Semantics.systemDateTime.lastChangedAt: true
      LastChangedAt //Total ETag

}
