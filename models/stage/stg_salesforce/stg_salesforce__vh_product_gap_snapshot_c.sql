
with source as (

    select * from {{ source('raw_salesforce', 'vh_product_gap_snapshot_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp,
        vh_product_gap_count_c,
        vh_product_gap_status_c,
        vh_snapshot_date_c

    from source

)

select * from renamed
