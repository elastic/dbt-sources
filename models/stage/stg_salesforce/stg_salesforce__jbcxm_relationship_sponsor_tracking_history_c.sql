
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_relationship_sponsor_tracking_history_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        jbcxm_account_c,
        jbcxm_changed_attribute_c,
        jbcxm_contact_c,
        jbcxm_contact_value_c,
        jbcxm_customer_info_c,
        jbcxm_new_value_c,
        jbcxm_previous_value_c,
        jbcxm_relationship_c,
        jbcxm_relationship_contact_c,
        jbcxm_sponsor_tracking_c,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
