
with source as (

    select * from {{ source('raw_salesforce', 'hs_conversations_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        conversation_id_c,
        converted_to_case_c,
        created_by_id,
        created_date,
        currency_iso_code,
        customer_not_found_c,
        error_message_c,
        errored_c,
        id_of_converted_case_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
