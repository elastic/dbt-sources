
with source as (

    select * from {{ source('raw_netsuite', 'fam_report_template_history') }}

),

renamed as (

    select
        customization,
        date_created,
        fam_report_template_extid,
        fam_report_template_id,
        fam_report_template_name,
        is_inactive,
        last_modified_date,
        parent_id,
        report_type_id,
        template_file

    from source

)

select * from renamed
