
with source as (

    select * from {{ source('raw_salesforce', 'google_doc') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        parent_id,
        system_modstamp,
        url

    from source

)

select * from renamed
