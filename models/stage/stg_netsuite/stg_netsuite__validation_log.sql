
with source as (

    select * from {{ source('raw_netsuite', 'validation_log') }}

),

renamed as (

    select
        autoclear_matching_report,
        data_link,
        date_created,
        is_inactive,
        last_modified_date,
        parent_id,
        resolution_description,
        resolved,
        result_json,
        test_0,
        test_difference,
        validation_log_extid,
        validation_log_id,
        validation_report_id,
        variance_count

    from source

)

select * from renamed
