
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_order_transaction_map_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        jbcxm_active_c,
        jbcxm_display_order_c,
        jbcxm_order_type_c,
        jbcxm_transaction_type_c,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
