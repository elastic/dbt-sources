
with source as (

    select * from {{ source('raw_netsuite', 'dnd_file_html_history') }}

),

renamed as (

    select
        date_created,
        dnd_file_html_extid,
        dnd_file_html_id,
        file_codes,
        is_inactive,
        last_modified_date,
        parent_id

    from source

)

select * from renamed
