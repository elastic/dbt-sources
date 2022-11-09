
with source as (

    select * from {{ source('raw_salesforce', 'recur_omni_conversation_transfer_history_c') }}

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
        recur_omni_conversation_c,
        recur_omni_transfer_message_c,
        recur_omni_transfer_to_queue_c,
        system_modstamp

    from source

)

select * from renamed
