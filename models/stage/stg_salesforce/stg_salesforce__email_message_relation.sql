
with source as (

    select * from {{ source('raw_salesforce', 'email_message_relation') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        email_message_id,
        is_deleted,
        relation_address,
        relation_id,
        relation_object_type,
        relation_type,
        system_modstamp

    from source

)

select * from renamed
