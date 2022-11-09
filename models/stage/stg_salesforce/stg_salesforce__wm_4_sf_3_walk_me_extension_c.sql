
with source as (

    select * from {{ source('raw_salesforce', 'wm_4_sf_3_walk_me_extension_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        setup_owner_id,
        system_modstamp,
        wm_4_sf_3_cta_image_path_c,
        wm_4_sf_3_customer_name_c,
        wm_4_sf_3_extension_guid_c,
        wm_4_sf_3_extension_profile_c,
        wm_4_sf_3_qa_mode_c

    from source

)

select * from renamed
