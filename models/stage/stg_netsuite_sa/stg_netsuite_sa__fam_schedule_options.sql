
with source as (

    select * from {{ source('raw_netsuite_sa', 'fam_schedule_options') }}

),

renamed as (

    select
        list_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        fam_schedule_options_extid,
        is_record_inactive,
        last_modified_date,
        list_item_name

    from source

)

select * from renamed
