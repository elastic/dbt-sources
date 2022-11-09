
with source as (

    select * from {{ source('raw_netsuite', 'apm_db_setup_record_pages') }}

),

renamed as (

    select
        apm_db_operation,
        apm_db_record_type,
        apm_db_setup_record_pages_exti,
        apm_db_setup_record_pages_id,
        apm_db_user_id,
        date_created,
        is_inactive,
        last_modified_date,
        parent_id

    from source

)

select * from renamed
