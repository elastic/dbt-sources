
with source as (

    select * from {{ source('raw_salesforce', 'network_moderation') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        entity_id,
        moderation_type,
        network_id,
        note,
        visibility,
        _fivetran_deleted

    from source

)

select * from renamed
