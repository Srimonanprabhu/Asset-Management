@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Asset Master'
@Metadata.ignorePropagatedAnnotations: true

define root view entity ZI_ASSET_MASTER
  as select from zasset_master

   composition [0..*] of ZI_ASSET_REQUEST as _Request

{
    key asset_id       as AssetId,
        asset_name     as AssetName,
        category       as Category,
        purchase_date  as PurchaseDate,
        location       as Location,
        status         as Status,

        _Request
}
