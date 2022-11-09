
with source as (

    select * from {{ source('raw_salesforce', 'tag_definition_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        is_deleted,
        last_modified_by_id,
        name,
        system_modstamp,
        type,
        _fivetran_deleted

    from source

)

select * from renamed
