
with source as (

    select * from {{ source('raw_netsuite_sa', 'validation_log') }}

),

renamed as (

    select
        validation_log_id,
        _fivetran_deleted,
        _fivetran_synced,
        autoclear_matching_report,
        data_link,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        resolution_description,
        resolved,
        result_json,
        test_0,
        test_difference,
        validation_log_extid,
        validation_report_id,
        variance_count

    from source

)

select * from renamed
