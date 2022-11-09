
with source as (

    select * from {{ source('raw_netsuite', 'data_validation_report_history') }}

),

renamed as (

    select
        data_validation_report_extid,
        data_validation_report_id,
        date_created,
        is_inactive,
        last_modified_date,
        parent_id,
        status_id,
        test_comments

    from source

)

select * from renamed
