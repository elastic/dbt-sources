
with source as (

    select * from {{ source('raw_netsuite', 'fam_schedule_options_history') }}

),

renamed as (

    select
        date_created,
        fam_schedule_options_extid,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name

    from source

)

select * from renamed
