
with source as (

    select * from {{ source('raw_salesforce', 'product_version_map_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        externally_visible_c,
        generalised_version_c,
        is_deleted,
        is_not_product_c,
        last_modified_by_id,
        last_modified_date,
        name,
        setup_owner_id,
        system_modstamp,
        version_c

    from source

)

select * from renamed
