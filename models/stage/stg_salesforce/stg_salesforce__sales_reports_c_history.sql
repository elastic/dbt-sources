
with source as (

    select * from {{ source('raw_salesforce', 'sales_reports_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        report_1_emails_c,
        report_1_link_c,
        report_1_name_c,
        report_2_emails_c,
        report_2_link_c,
        report_2_name_c,
        report_3_emails_c,
        report_3_link_c,
        report_3_name_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed