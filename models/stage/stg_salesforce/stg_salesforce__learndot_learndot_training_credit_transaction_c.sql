
with source as (

    select * from {{ source('raw_salesforce', 'learndot_learndot_training_credit_transaction_c') }}

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
        learndot_amount_c,
        learndot_authorized_by_c,
        learndot_balance_c,
        learndot_credit_expiry_c,
        learndot_expiry_amount_c,
        learndot_id_c,
        learndot_learndot_created_c,
        learndot_learndot_modified_c,
        learndot_learndot_order_id_c,
        learndot_learndot_training_credit_account_c,
        learndot_purchased_by_c,
        learndot_redeemed_by_c,
        learndot_value_amount_c,
        learndot_value_currency_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
