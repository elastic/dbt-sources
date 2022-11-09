
with source as (

    select * from {{ source('raw_salesforce', 'event_relation') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        account_id,
        created_by_id,
        created_date,
        event_id,
        is_deleted,
        is_invitee,
        is_parent,
        is_what,
        last_modified_by_id,
        last_modified_date,
        relation_id,
        responded_date,
        response,
        status,
        system_modstamp

    from source

)

select * from renamed
