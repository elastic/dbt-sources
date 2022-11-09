
with source as (

    select * from {{ source('raw_netsuite_sa', 'record_status') }}

),

renamed as (

    select
        record_status_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        record_status_extid,
        record_status_name,
        record_type

    from source

)

select * from renamed
