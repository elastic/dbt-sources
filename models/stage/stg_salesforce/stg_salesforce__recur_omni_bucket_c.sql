
with source as (

    select * from {{ source('raw_salesforce', 'recur_omni_bucket_c') }}

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
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        recur_omni_bucket_name_c,
        recur_omni_omni_channel_c,
        recur_omni_remarks_c,
        recur_omni_send_datetime_c,
        recur_omni_template_message_c,
        system_modstamp

    from source

)

select * from renamed
