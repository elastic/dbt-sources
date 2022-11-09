
with source as (

    select * from {{ source('raw_netsuite_sa', 'data_validation_report_history') }}

),

renamed as (

    select
        data_validation_report_id,
        _fivetran_deleted,
        _fivetran_synced,
        data_validation_report_extid,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        status_id,
        test_comments,
        partition_date

    from source

)

select * from renamed
