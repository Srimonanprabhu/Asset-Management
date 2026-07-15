@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Asset Request'
@Metadata.ignorePropagatedAnnotations: true

define view entity ZI_ASSET_REQUEST
  as select from zasset_request

  association to parent ZI_ASSET_MASTER as _Asset
    on $projection.AssetId = _Asset.AssetId

{
    key request_id        as RequestId,
        asset_id          as AssetId,
        priority          as Priority,
        request_date      as RequestDate,
        request_status    as RequestStatus,

        _Asset
}
