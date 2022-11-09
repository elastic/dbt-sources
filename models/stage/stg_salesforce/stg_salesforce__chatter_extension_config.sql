
with source as (

    select * from {{ source('raw_salesforce', 'chatter_extension_config') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        can_create,
        can_read,
        chatter_extension_id,
        created_by_id,
        created_date,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        network_id,
        position,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
