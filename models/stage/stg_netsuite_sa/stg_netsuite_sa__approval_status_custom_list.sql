
with source as (

    select * from {{ source('raw_netsuite_sa', 'approval_status_custom_list') }}

),

renamed as (

    select
        list_id,
        _fivetran_deleted,
        _fivetran_synced,
        approval_status_custom_list_ex,
        date_created,
        date_deleted,
        is_record_inactive,
        last_modified_date,
        list_item_name

    from source

)

select * from renamed
