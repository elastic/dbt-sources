
with source as (

    select * from {{ source('raw_salesforce', 'wm_4_sf_3_walk_me_license_c_history') }}

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
        last_modified_by_id,
        last_modified_date,
        name,
        setup_owner_id,
        system_modstamp,
        wm_4_sf_3_cus_env_c,
        wm_4_sf_3_env_c,
        wm_4_sf_3_ext_c,
        wm_4_sf_3_is_mobile_ui_classic_c,
        wm_4_sf_3_license_id_c,
        wm_4_sf_3_mode_c,
        wm_4_sf_3_param_c,
        wm_4_sf_3_pre_packaged_c,
        wm_4_sf_3_qa_mode_c,
        wm_4_sf_3_self_hosted_c,
        wm_4_sf_3_test_account_c,
        wm_4_sf_3_user_email_c,
        wm_4_sf_3_user_identifier_field_c,
        wm_4_sf_3_walk_me_mobile_env_c

    from source

)

select * from renamed
