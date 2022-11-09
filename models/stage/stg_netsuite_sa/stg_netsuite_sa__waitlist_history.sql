
with source as (

    select * from {{ source('raw_netsuite_sa', 'waitlist_history') }}

),

renamed as (

    select
        waitlist_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        eventid,
        is_inactive,
        item_id,
        last_modified_date,
        parent_id,
        userid_id,
        waitlist_extid,
        waitlist_name,
        partition_date

    from source

)

select * from renamed
