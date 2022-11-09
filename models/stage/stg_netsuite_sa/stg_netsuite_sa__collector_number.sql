
with source as (

    select * from {{ source('raw_netsuite_sa', 'collector_number') }}

),

renamed as (

    select
        collector_number_id,
        _fivetran_deleted,
        _fivetran_synced,
        collector_number_extid,
        collector_number_name,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id

    from source

)

select * from renamed
