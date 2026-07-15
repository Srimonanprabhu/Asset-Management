@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Asset Request'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_ASSET_REQUEST as projection on ZI_ASSET_REQUEST
{
    key RequestId,
    AssetId,
    Priority,
    RequestDate,
    RequestStatus,
    /* Associations */
    _Asset : redirected to parent ZC_ASSET_MASTER
}
