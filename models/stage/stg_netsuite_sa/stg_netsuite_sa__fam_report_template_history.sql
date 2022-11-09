
with source as (

    select * from {{ source('raw_netsuite_sa', 'fam_report_template_history') }}

),

renamed as (

    select
        fam_report_template_id,
        _fivetran_deleted,
        _fivetran_synced,
        customization,
        date_created,
        date_deleted,
        fam_report_template_extid,
        fam_report_template_name,
        is_inactive,
        last_modified_date,
        parent_id,
        report_type_id,
        template_file,
        partition_date

    from source

)

select * from renamed
