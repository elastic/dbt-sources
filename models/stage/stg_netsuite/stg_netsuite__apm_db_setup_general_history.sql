
with source as (

    select * from {{ source('raw_netsuite', 'apm_db_setup_general_history') }}

),

renamed as (

    select
        apm_db_general_user_id,
        apm_db_histogram_interval,
        apm_db_record_tiles,
        apm_db_setup_general_extid,
        apm_db_setup_general_id,
        date_created,
        is_inactive,
        last_modified_date,
        parent_id

    from source

)

select * from renamed
