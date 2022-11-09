
with source as (

    select * from {{ source('raw_salesforce', 'custom_brand_asset_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        asset_category,
        asset_source_id,
        created_by_id,
        created_date,
        custom_brand_id,
        last_modified_by_id,
        last_modified_date,
        text_asset,
        _fivetran_deleted

    from source

)

select * from renamed
