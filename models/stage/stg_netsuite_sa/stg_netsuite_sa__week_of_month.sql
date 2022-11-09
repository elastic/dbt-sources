
with source as (

    select * from {{ source('raw_netsuite_sa', 'week_of_month') }}

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
        week_of_month_extid

    from source

)

select * from renamed
