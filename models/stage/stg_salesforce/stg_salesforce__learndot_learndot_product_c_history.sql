
with source as (

    select * from {{ source('raw_salesforce', 'learndot_learndot_product_c_history') }}

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
        learndot_amount_c,
        learndot_currency_c,
        learndot_custom_field_10_c,
        learndot_custom_field_1_c,
        learndot_custom_field_2_c,
        learndot_custom_field_3_c,
        learndot_custom_field_4_c,
        learndot_custom_field_5_c,
        learndot_custom_field_6_c,
        learndot_custom_field_7_c,
        learndot_custom_field_8_c,
        learndot_custom_field_9_c,
        learndot_id_c,
        learndot_name_c,
        learndot_status_c,
        learndot_type_c,
        name,
        owner_id,
        price_book_c,
        product_c,
        system_modstamp

    from source

)

select * from renamed
