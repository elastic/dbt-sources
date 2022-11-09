
with source as (

    select * from {{ source('raw_salesforce', 'ffrr_recognition_view_tab_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffrr_active_c,
        ffrr_currency_name_c,
        ffrr_group_name_c,
        ffrr_grouping_criteria_json_c,
        ffrr_process_use_in_contract_records_c,
        ffrr_recognition_date_c,
        ffrr_recognition_view_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
