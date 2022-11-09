
with source as (

    select * from {{ source('raw_salesforce', 'csircd_attuswdsflookup_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        csircd_address_type_c,
        csircd_comment_c,
        csircd_company_c,
        csircd_contact_c,
        csircd_last_reviewed_c,
        csircd_list_date_c,
        csircd_list_description_c,
        csircd_lookup_by_c,
        csircd_name_searched_c,
        csircd_number_of_hits_c,
        csircd_result_node_c,
        csircd_review_status_c,
        csircd_search_city_c,
        csircd_search_country_c,
        csircd_search_postal_code_c,
        csircd_search_state_c,
        csircd_search_street_c,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp,
        csircd_status_c,
        csircd_status_value_c

    from source

)

select * from renamed
