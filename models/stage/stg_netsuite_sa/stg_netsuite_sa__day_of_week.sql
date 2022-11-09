
with source as (

    select * from {{ source('raw_netsuite_sa', 'day_of_week') }}

),

renamed as (

    select
        list_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        day_of_week_extid,
        is_record_inactive,
        last_modified_date,
        list_item_name

    from source

)

select * from renamed
