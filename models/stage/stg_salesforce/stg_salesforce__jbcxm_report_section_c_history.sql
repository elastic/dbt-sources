
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_report_section_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        jbcxm_display_order_c,
        jbcxm_parent_section_c,
        jbcxm_report_c,
        jbcxm_title_c,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
