
with source as (

    select * from {{ source('raw_salesforce', 'reg_online_reg_online_contact_c_history') }}

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
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        reg_online_city_c,
        reg_online_company_c,
        reg_online_country_c,
        reg_online_custom_fields_c,
        reg_online_email_c,
        reg_online_fax_c,
        reg_online_first_name_c,
        reg_online_last_name_c,
        reg_online_merged_c,
        reg_online_mobile_phone_c,
        reg_online_phone_c,
        reg_online_postal_code_c,
        reg_online_salutation_c,
        reg_online_state_c,
        reg_online_street_c,
        reg_online_title_c,
        system_modstamp

    from source

)

select * from renamed
