
with source as (

    select * from {{ source('raw_netsuite_sa', 'negative_line_type') }}

),

renamed as (

    select
        negative_line_type_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        negative_line_type_extid,
        negative_line_type_name,
        parent_id

    from source

)

select * from renamed
