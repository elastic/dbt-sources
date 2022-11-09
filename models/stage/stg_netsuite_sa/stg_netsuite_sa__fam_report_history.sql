
with source as (

    select * from {{ source('raw_netsuite_sa', 'fam_report_history') }}

),

renamed as (

    select
        fam_report_id,
        _fivetran_deleted,
        _fivetran_synced,
        alternate_method,
        assets_to_include,
        date_created,
        date_deleted,
        end_date,
        fam_report_extid,
        fam_report_name,
        is_inactive,
        last_modified_date,
        parent_id,
        report_type,
        start_date,
        partition_date

    from source

)

select * from renamed
