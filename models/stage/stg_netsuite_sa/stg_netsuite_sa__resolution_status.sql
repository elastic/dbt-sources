
with source as (

    select * from {{ source('raw_netsuite_sa', 'resolution_status') }}

),

renamed as (

    select
        resolution_status_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        resolution_status_extid,
        resolution_status_name

    from source

)

select * from renamed
