
with source as (

    select * from {{ source('raw_salesforce', 'setup_entity_access') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        parent_id,
        setup_entity_id,
        setup_entity_type,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
