@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Products'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZVKS_A_Products
  //provider contract transactional_interface //Not for API View
  as projection on ZVKS_R_ProductsTP
  /* Foreign Key Association(s) */
  association [1..1] to I_Currency      as _Currency               on $projection.Currency = _Currency.Currency
  association [1..1] to I_UnitOfMeasure as _BaseUnitOfMeasure      on $projection.BaseUnitOfMeasure = _BaseUnitOfMeasure.UnitOfMeasure
  association [1..1] to I_UnitOfMeasure as _DimensionUnitOfMeasure on $projection.DimensionUnitOfMeasure = _DimensionUnitOfMeasure.UnitOfMeasure
  association [1..1] to I_UnitOfMeasure as _WeightUnitOfMeasure    on $projection.WeightUnitOfMeasure = _WeightUnitOfMeasure.UnitOfMeasure
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
      BaseUoMName,              //<- Remove
        
      @Semantics.quantity.unitOfMeasure: 'DimensionUnitOfMeasure'
      Height,
      @Semantics.quantity.unitOfMeasure: 'DimensionUnitOfMeasure'
      Width,
      @Semantics.quantity.unitOfMeasure: 'DimensionUnitOfMeasure'
      Depth,
      DimensionUnitOfMeasure,

      //-> Remove
      DimensionUoMName,        
        
      @Semantics.quantity.unitOfMeasure: 'WeightUnitOfMeasure'
      Weight,
      WeightUnitOfMeasure,
      WeightUoMName,        //<- Remove
      
      ManufacturerID,
      ManufacturerFullName,       //<- Remove
      
      SupplierID,
      SupplierFullName,       //<- Remove

      ExpiryDate,
      BlockedForProcurement,

      /*Administrative Fields*/

      CreatedBy,
      CreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt, //Local ETag
      LastChangedAt, //Total ETag

      /* Public Associations */
      _Currency,
      _BaseUnitOfMeasure,
      _DimensionUnitOfMeasure,
      _WeightUnitOfMeasure

}
