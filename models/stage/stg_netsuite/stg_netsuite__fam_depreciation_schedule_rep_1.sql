
with source as (

    select * from {{ source('raw_netsuite', 'fam_depreciation_schedule_rep_1') }}

),

renamed as (

    select
        alternate_method,
        assets_to_include,
        date_created,
        end_date,
        fam_depreciation_schedule_r_ex,
        fam_depreciation_schedule_r_id,
        is_inactive,
        last_modified_date,
        parent_id,
        report_type,
        start_date

    from source

)

select * from renamed
