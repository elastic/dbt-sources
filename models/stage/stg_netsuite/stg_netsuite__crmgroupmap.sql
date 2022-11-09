
with source as (

    select * from {{ source('raw_netsuite', 'crmgroupmap') }}

),

renamed as (

    select
        entity_id,
        group_id,
        is_primary

    from source

)

select * from renamed
