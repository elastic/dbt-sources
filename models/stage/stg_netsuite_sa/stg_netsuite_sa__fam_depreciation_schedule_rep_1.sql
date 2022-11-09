
with source as (

    select * from {{ source('raw_netsuite_sa', 'fam_depreciation_schedule_rep_1') }}

),

renamed as (

    select
        fam_depreciation_schedule_r_id,
        _fivetran_deleted,
        _fivetran_synced,
        alternate_method,
        assets_to_include,
        date_created,
        date_deleted,
        end_date,
        fam_depreciation_schedule_r_ex,
        is_inactive,
        last_modified_date,
        parent_id,
        report_type,
        start_date

    from source

)

select * from renamed
