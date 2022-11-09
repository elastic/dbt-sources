
with source as (

    select * from {{ source('raw_netsuite_sa', 'dnd_file_html_history') }}

),

renamed as (

    select
        dnd_file_html_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        dnd_file_html_extid,
        file_codes,
        is_inactive,
        last_modified_date,
        parent_id,
        partition_date

    from source

)

select * from renamed
