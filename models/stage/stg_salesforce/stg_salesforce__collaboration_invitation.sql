
with source as (

    select * from {{ source('raw_salesforce', 'collaboration_invitation') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        invited_user_email,
        invited_user_email_normalized,
        inviter_id,
        last_modified_by_id,
        last_modified_date,
        optional_message,
        parent_id,
        shared_entity_id,
        status,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
