
with source as (

    select * from {{ source('raw_salesforce', 'vh_development_item_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        system_modstamp,
        vh_completed_c,
        vh_key_c,
        vh_link_c,
        vh_name_c,
        vh_product_gap_c,
        vh_size_c,
        vh_source_c,
        vh_sync_status_c,
        vh_type_c,
        development_item_created_by_workday_id_c

    from source

)

select * from renamed
