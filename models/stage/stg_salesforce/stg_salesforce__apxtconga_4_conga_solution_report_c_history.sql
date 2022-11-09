
with source as (

    select * from {{ source('raw_salesforce', 'apxtconga_4_conga_solution_report_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        apxtconga_4_alias_c,
        apxtconga_4_comments_c,
        apxtconga_4_conga_solution_c,
        apxtconga_4_pv_0_c,
        apxtconga_4_pv_1_c,
        apxtconga_4_pv_2_c,
        apxtconga_4_report_id_c,
        apxtconga_4_report_id_link_c,
        apxtconga_4_report_name_c,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
