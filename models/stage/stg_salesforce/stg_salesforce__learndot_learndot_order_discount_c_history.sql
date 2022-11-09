
with source as (

    select * from {{ source('raw_salesforce', 'learndot_learndot_order_discount_c_history') }}

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
        learndot_activation_c,
        learndot_amount_c,
        learndot_coupon_code_c,
        learndot_created_c,
        learndot_currency_c,
        learndot_description_c,
        learndot_discount_rule_id_c,
        learndot_discount_valid_from_c,
        learndot_discount_valid_until_c,
        learndot_enabled_c,
        learndot_id_c,
        learndot_order_c,
        learndot_order_line_c,
        learndot_percentage_discount_c,
        learndot_uses_per_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
