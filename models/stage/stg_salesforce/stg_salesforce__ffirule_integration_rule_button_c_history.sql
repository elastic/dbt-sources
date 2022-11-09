
with source as (

    select * from {{ source('raw_salesforce', 'ffirule_integration_rule_button_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffirule_detail_page_button_c,
        ffirule_integration_rule_c,
        ffirule_list_button_c,
        ffirule_list_object_c,
        ffirule_list_object_source_idfield_c,
        ffirule_visualforce_page_c,
        id,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
