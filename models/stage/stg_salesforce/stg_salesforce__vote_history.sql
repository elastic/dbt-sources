
with source as (

    select * from {{ source('raw_salesforce', 'vote_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        parent_id,
        system_modstamp,
        type

    from source

)

select * from renamed
