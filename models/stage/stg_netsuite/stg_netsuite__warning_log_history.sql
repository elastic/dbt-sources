
with source as (

    select * from {{ source('raw_netsuite', 'warning_log_history') }}

),

renamed as (

    select
        change_request_id,
        date_0,
        date_created,
        error_details,
        is_inactive,
        last_modified_date,
        parent_id,
        target_account,
        warning_log_extid,
        warning_log_id,
        warning_log_name

    from source

)

select * from renamed
