
with source as (

    select * from {{ source('raw_netsuite_sa', 'apm_db_setup_general_history') }}

),

renamed as (

    select
        apm_db_setup_general_id,
        _fivetran_deleted,
        _fivetran_synced,
        apm_db_general_user_id,
        apm_db_histogram_interval,
        apm_db_record_tiles,
        apm_db_setup_general_extid,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        partition_date

    from source

)

select * from renamed
