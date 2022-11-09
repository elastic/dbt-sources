
with source as (

    select * from {{ source('raw_salesforce', 'note') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        body,
        created_by_id,
        created_date,
        is_deleted,
        is_private,
        last_modified_by_id,
        last_modified_date,
        owner_id,
        parent_id,
        system_modstamp,
        title

    from source

)

select * from renamed
