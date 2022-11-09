
with source as (

    select * from {{ source('raw_salesforce', 'asset_action_source') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        actual_tax,
        adjustment_amount,
        asset_action_id,
        asset_action_source_number,
        created_by_id,
        created_date,
        currency_iso_code,
        end_date,
        estimated_tax,
        external_reference,
        external_reference_data_source,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        product_amount,
        quantity,
        reference_entity_item_id,
        start_date,
        subtotal,
        system_modstamp,
        transaction_date

    from source

)

select * from renamed
