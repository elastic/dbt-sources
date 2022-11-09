
with source as (

    select * from {{ source('raw_netsuite_sa', 'ach_ep_migration_recordtype') }}

),

renamed as (

    select
        list_id,
        _fivetran_deleted,
        _fivetran_synced,
        ach_ep_migration_recordtype_ex,
        date_created,
        date_deleted,
        is_record_inactive,
        last_modified_date,
        list_item_name

    from source

)

select * from renamed
