
with source as (

    select * from {{ source('raw_salesforce', 'pse_filter_c') }}

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
        pse_custom_filter_arguments_c,
        pse_custom_filter_handler_c,
        pse_field_c,
        pse_filter_set_c,
        pse_is_active_c,
        pse_operator_c,
        pse_value_c,
        system_modstamp,
        pse_filter_set_sobject_c

    from source

)

select * from renamed
