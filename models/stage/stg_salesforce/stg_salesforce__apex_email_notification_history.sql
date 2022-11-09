
with source as (

    select * from {{ source('raw_salesforce', 'apex_email_notification_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        email,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        system_modstamp,
        user_id,
        _fivetran_deleted

    from source

)

select * from renamed
