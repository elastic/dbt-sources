
with source as (

    select * from {{ source('raw_salesforce', 'learndot_learndot_transaction_interface_c_history') }}

),

renamed as (

    select
        partitiontime,
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
        learndot_id_c,
        learndot_learndot_account_c,
        learndot_learndot_catalog_item_c,
        learndot_learndot_contact_c,
        learndot_learndot_order_c,
        learndot_learndot_order_discount_2_c,
        learndot_learndot_order_discount_c,
        learndot_learndot_order_line_c,
        learndot_learndot_payment_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
