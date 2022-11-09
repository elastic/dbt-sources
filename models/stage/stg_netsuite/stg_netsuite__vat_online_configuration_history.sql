
with source as (

    select * from {{ source('raw_netsuite', 'vat_online_configuration_history') }}

),

renamed as (

    select
        country_code,
        date_created,
        help_text,
        ismandatory,
        isvisible,
        is_inactive,
        is_new_tax_filing,
        is_nondeductible,
        label,
        last_modified_date,
        name,
        parent_id,
        product,
        subsidiary_id,
        tab_order,
        type_0,
        value_0,
        vat_online_configuration_extid,
        vat_online_configuration_id

    from source

)

select * from renamed
