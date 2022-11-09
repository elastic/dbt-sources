
with source as (

    select * from {{ source('raw_salesforce', 'qualtrics_log_message_c') }}

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
        owner_id,
        qualtrics_type_c,
        system_modstamp,
        qualtrics_error_message_c,
        qualtrics_error_code_c,
        qualtrics_stack_trace_c

    from source

)

select * from renamed
