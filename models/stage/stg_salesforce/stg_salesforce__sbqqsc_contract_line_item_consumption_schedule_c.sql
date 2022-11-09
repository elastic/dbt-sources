
with source as (

    select * from {{ source('raw_salesforce', 'sbqqsc_contract_line_item_consumption_schedule_c') }}

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
        name,
        sbqqsc_billing_term_c,
        sbqqsc_billing_term_unit_c,
        sbqqsc_category_c,
        sbqqsc_contract_line_item_c,
        sbqqsc_rating_method_c,
        sbqqsc_type_c,
        system_modstamp

    from source

)

select * from renamed
