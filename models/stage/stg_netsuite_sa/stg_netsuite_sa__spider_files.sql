
with source as (

    select * from {{ source('raw_netsuite_sa', 'spider_files') }}

),

renamed as (

    select
        spider_files_id,
        _fivetran_deleted,
        _fivetran_synced,
        change_request_id,
        customization_ids,
        date_created,
        date_deleted,
        file_0,
        is_inactive,
        last_modified_date,
        parent_id,
        spider_files_extid,
        spider_status_id

    from source

)

select * from renamed
