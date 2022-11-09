
with source as (

    select * from {{ source('raw_salesforce', 'forecasting_category_mapping_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        forecasting_item_category,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        source_category,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
