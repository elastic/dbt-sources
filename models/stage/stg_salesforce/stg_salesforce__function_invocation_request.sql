
with source as (

    select * from {{ source('raw_salesforce', 'function_invocation_request') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        callback_status,
        created_by_id,
        created_date,
        currency_iso_code,
        execution_time,
        extended_response,
        function_name,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        owner_id,
        response_content_type,
        response_length,
        response_name,
        response_uncompressed_length,
        stack_trace,
        status,
        system_modstamp

    from source

)

select * from renamed
