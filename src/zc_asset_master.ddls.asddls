@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Asset Master'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_ASSET_MASTER as projection on ZI_ASSET_MASTER
{
    key AssetId,
    AssetName,
    Category,
    PurchaseDate,
    Location,
    Status,
    /* Associations */
    _Request : redirected to composition child ZC_ASSET_REQUEST
}
