
with source as (

    select * from {{ source('raw_salesforce', 'community_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        description,
        is_active,
        is_published,
        last_modified_by_id,
        last_modified_date,
        name,
        network_id,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
