
with source as (

    select * from {{ source('raw_netsuite_sa', 'classes_history') }}

),

renamed as (

    select
        class_id,
        _fivetran_synced,
        class_extid,
        date_last_modified,
        full_name,
        isinactive,
        name,
        parent_id,
        _fivetran_deleted,
        date_deleted,
        is_including_child_subs,
        partition_date

    from source

)

select * from renamed
