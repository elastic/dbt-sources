
with source as (

    select * from {{ source('raw_salesforce', 'quote_handler_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        agreement_field_c,
        agreement_priority_c,
        compare_field_list_to_name_c,
        compare_msa_field_to_name_c,
        created_by_id,
        created_date,
        currency_iso_code,
        defining_field_list_c,
        is_active_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        setup_owner_id,
        system_modstamp,
        term_condition_field_c,
        term_print_order_c

    from source

)

select * from renamed
