
with source as (

    select * from {{ source('raw_netsuite_sa', 'uplift_types_history') }}

),

renamed as (

    select
        uplift_types_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        uplift,
        uplift_types_extid,
        uplift_types_name,
        partition_date

    from source

)

select * from renamed
