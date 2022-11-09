
with source as (

    select * from {{ source('raw_salesforce', 'accepted_event_relation_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        account_id,
        created_by_id,
        created_date,
        event_id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        relation_id,
        responded_date,
        response,
        system_modstamp,
        type,
        _fivetran_deleted

    from source

)

select * from renamed
