
with source as (

    select * from {{ source('raw_salesforce', 'asset_relationship_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        asset_id,
        asset_relationship_number,
        created_by_id,
        created_date,
        currency_iso_code,
        from_date,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        related_asset_id,
        relationship_type,
        system_modstamp,
        to_date

    from source

)

select * from renamed
