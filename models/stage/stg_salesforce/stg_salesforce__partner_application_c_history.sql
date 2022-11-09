
with source as (

    select * from {{ source('raw_salesforce', 'partner_application_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        city_c,
        company_c,
        company_website_c,
        country_c,
        created_by_id,
        created_date,
        currency_iso_code,
        current_usage_description_c,
        description_c,
        email_c,
        engagements_c,
        first_name_c,
        geographical_scope_c,
        has_elastic_c,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_name_c,
        last_referenced_date,
        last_viewed_date,
        name,
        number_of_employees_c,
        other_partnerships_c,
        owner_id,
        partner_interest_area_multi_c,
        phone_c,
        postal_code_c,
        primary_revenue_source_c,
        state_c,
        status_c,
        street_address_c,
        system_modstamp,
        title_c,
        type_c,
        value_proposition_for_partner_c,
        value_proposition_to_partner_c,
        vertical_focus_area_c

    from source

)

select * from renamed
