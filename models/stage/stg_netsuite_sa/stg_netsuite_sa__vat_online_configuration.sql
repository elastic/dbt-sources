
with source as (

    select * from {{ source('raw_netsuite_sa', 'vat_online_configuration') }}

),

renamed as (

    select
        vat_online_configuration_id,
        _fivetran_deleted,
        _fivetran_synced,
        country_code,
        date_created,
        date_deleted,
        help_text,
        is_inactive,
        is_new_tax_filing,
        is_nondeductible,
        ismandatory,
        isvisible,
        label,
        last_modified_date,
        name,
        parent_id,
        product,
        subsidiary_id,
        tab_order,
        type_0,
        value_0,
        vat_online_configuration_extid

    from source

)

select * from renamed
