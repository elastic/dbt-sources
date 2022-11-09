
with source as (

    select * from {{ source('raw_salesforce', 'sbqqsc_contract_line_item_consumption_rate_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        sbqqsc_contract_line_item_consumption_schedule_c,
        sbqqsc_lower_bound_c,
        sbqqsc_price_c,
        sbqqsc_pricing_method_c,
        sbqqsc_processing_order_c,
        system_modstamp

    from source

)

select * from renamed
