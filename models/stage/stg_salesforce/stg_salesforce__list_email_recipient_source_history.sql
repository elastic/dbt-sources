
with source as (

    select * from {{ source('raw_salesforce', 'list_email_recipient_source_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        list_email_id,
        name,
        source_list_id,
        source_type,
        system_modstamp

    from source

)

select * from renamed
