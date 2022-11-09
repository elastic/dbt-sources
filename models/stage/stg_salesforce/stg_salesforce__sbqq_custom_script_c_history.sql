
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_custom_script_c_history') }}

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
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        sbqq_account_fields_c,
        sbqq_code_c,
        sbqq_group_fields_c,
        sbqq_opportunity_fields_c,
        sbqq_product_fields_c,
        sbqq_quote_fields_c,
        sbqq_quote_line_fields_c,
        sbqq_transpiled_code_c,
        system_modstamp,
        sbqq_consumption_rate_fields_c,
        sbqq_consumption_schedule_fields_c

    from source

)

select * from renamed
