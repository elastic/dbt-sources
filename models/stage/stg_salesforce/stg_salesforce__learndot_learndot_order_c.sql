
with source as (

    select * from {{ source('raw_salesforce', 'learndot_learndot_order_c') }}

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
        learndot_affiliate_code_c,
        learndot_created_in_learndot_c,
        learndot_id_c,
        learndot_learndot_account_c,
        learndot_learndot_contact_c,
        learndot_learndot_payment_c,
        learndot_modified_in_learndot_c,
        learndot_status_c,
        learndot_total_c,
        learndot_total_discount_amount_c,
        learndot_total_tax_amount_c,
        name,
        opportunity_c,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
