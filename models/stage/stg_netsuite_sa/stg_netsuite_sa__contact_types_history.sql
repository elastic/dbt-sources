
with source as (

    select * from {{ source('raw_netsuite_sa', 'contact_types_history') }}

),

renamed as (

    select
        contact_id,
        fivetran_index,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        date_last_modified,
        isinactive,
        name,
        owner_id,
        parent_id,
        shared_0,
        partition_date

    from source

)

select * from renamed
