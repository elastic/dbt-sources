
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_sponsor_tracking_c_history') }}

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
        jbcxm_account_c,
        jbcxm_changed_info_c,
        jbcxm_contact_c,
        jbcxm_customer_info_c,
        jbcxm_is_changed_c,
        jbcxm_is_relationship_c,
        jbcxm_last_change_details_c,
        jbcxm_last_change_modified_by_c,
        jbcxm_last_change_modified_date_c,
        jbcxm_linked_in_url_c,
        jbcxm_photo_url_c,
        jbcxm_relationship_c,
        jbcxm_relationship_contact_c,
        jbcxm_social_profile_c,
        jbcxm_sponsor_full_name_c,
        jbcxm_status_c,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
