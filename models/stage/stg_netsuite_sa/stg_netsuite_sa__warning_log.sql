
with source as (

    select * from {{ source('raw_netsuite_sa', 'warning_log') }}

),

renamed as (

    select
        warning_log_id,
        _fivetran_deleted,
        _fivetran_synced,
        change_request_id,
        date_0,
        date_created,
        date_deleted,
        error_details,
        is_inactive,
        last_modified_date,
        parent_id,
        target_account,
        warning_log_extid,
        warning_log_name

    from source

)

select * from renamed
