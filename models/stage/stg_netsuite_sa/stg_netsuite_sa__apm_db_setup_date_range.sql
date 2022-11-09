
with source as (

    select * from {{ source('raw_netsuite_sa', 'apm_db_setup_date_range') }}

),

renamed as (

    select
        apm_db_setup_date_range_id,
        _fivetran_deleted,
        _fivetran_synced,
        apm_db_date_range_end_date,
        apm_db_date_range_end_time,
        apm_db_date_range_start_date,
        apm_db_date_range_start_time,
        apm_db_setup_date_range_extid,
        apm_db_user_id,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id

    from source

)

select * from renamed
