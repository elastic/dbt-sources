
with source as (

    select * from {{ source('raw_salesforce', 'learndot_learndot_account_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        account_c,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        learndot_city_c,
        learndot_country_alpha_2_code_c,
        learndot_country_name_c,
        learndot_created_in_learndot_c,
        learndot_custom_field_10_c,
        learndot_custom_field_1_c,
        learndot_custom_field_2_c,
        learndot_custom_field_3_c,
        learndot_custom_field_4_c,
        learndot_custom_field_5_c,
        learndot_custom_field_6_c,
        learndot_custom_field_7_c,
        learndot_custom_field_8_c,
        learndot_custom_field_9_c,
        learndot_external_id_c,
        learndot_fax_c,
        learndot_id_c,
        learndot_modified_in_learndot_c,
        learndot_phone_c,
        learndot_postal_code_c,
        learndot_region_c,
        learndot_salesforce_account_c,
        learndot_tax_id_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
