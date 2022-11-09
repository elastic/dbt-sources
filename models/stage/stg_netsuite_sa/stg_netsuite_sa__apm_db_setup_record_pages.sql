
with source as (

    select * from {{ source('raw_netsuite_sa', 'apm_db_setup_record_pages') }}

),

renamed as (

    select
        apm_db_setup_record_pages_id,
        _fivetran_deleted,
        _fivetran_synced,
        apm_db_operation,
        apm_db_record_type,
        apm_db_setup_record_pages_exti,
        apm_db_user_id,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id

    from source

)

select * from renamed
