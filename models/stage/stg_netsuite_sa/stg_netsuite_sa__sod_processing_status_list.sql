
with source as (

    select * from {{ source('raw_netsuite_sa', 'sod_processing_status_list') }}

),

renamed as (

    select
        list_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_record_inactive,
        last_modified_date,
        list_item_name,
        sod_processing_status_list_ext

    from source

)

select * from renamed
