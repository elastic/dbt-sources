
with source as (

    select * from {{ source('raw_netsuite_sa', 'departments') }}

),

renamed as (

    select
        department_id,
        _fivetran_synced,
        date_last_modified,
        department_extid,
        full_name,
        isinactive,
        name,
        parent_id,
        is_including_child_subs,
        _fivetran_deleted,
        date_deleted

    from source

)

select * from renamed
