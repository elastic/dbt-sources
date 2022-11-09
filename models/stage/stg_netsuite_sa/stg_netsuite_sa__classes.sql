
with source as (

    select * from {{ source('raw_netsuite_sa', 'classes') }}

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
        is_including_child_subs

    from source

)

select * from renamed
