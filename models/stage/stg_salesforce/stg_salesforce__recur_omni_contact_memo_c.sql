
with source as (

    select * from {{ source('raw_salesforce', 'recur_omni_contact_memo_c') }}

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
        recur_omni_memo_c,
        recur_omni_target_contact_object_api_name_c,
        recur_omni_target_contact_record_id_c,
        recur_omni_title_c,
        system_modstamp

    from source

)

select * from renamed
