
with source as (

    select * from {{ source('raw_salesforce', 'asset_action') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        action_date,
        actual_tax_change,
        adjustment_amount_change,
        amount,
        asset_action_number,
        asset_id,
        category,
        category_enum,
        created_by_id,
        created_date,
        currency_iso_code,
        estimated_tax_change,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        mrr_change,
        product_amount_change,
        quantity_change,
        subtotal_change,
        system_modstamp,
        total_amount,
        total_cancellations_amount,
        total_cross_sells_amount,
        total_downsells_amount,
        total_initial_sale_amount,
        total_mrr,
        total_other_amount,
        total_quantity,
        total_renewals_amount,
        total_terms_and_conditions_amount,
        total_transfers_amount,
        total_upsells_amount,
        type

    from source

)

select * from renamed
