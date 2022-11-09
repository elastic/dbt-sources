
with source as (

    select * from {{ source('raw_netsuite', 'fam_report') }}

),

renamed as (

    select
        alternate_method,
        assets_to_include,
        date_created,
        end_date,
        fam_report_extid,
        fam_report_id,
        fam_report_name,
        is_inactive,
        last_modified_date,
        parent_id,
        report_type,
        start_date

    from source

)

select * from renamed
