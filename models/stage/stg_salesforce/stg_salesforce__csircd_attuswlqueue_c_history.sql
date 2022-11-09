
with source as (

    select * from {{ source('raw_salesforce', 'csircd_attuswlqueue_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        csircd_atbatchid_c,
        csircd_attusid_c,
        csircd_city_c,
        csircd_company_name_c,
        csircd_country_c,
        csircd_date_sent_c,
        csircd_edit_type_c,
        csircd_first_name_c,
        csircd_last_name_c,
        csircd_postal_code_c,
        csircd_sfid_c,
        csircd_state_c,
        csircd_street_address_c,
        currency_iso_code,
        id,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
