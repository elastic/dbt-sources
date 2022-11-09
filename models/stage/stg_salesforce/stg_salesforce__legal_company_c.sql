
with source as (

    select * from {{ source('raw_salesforce', 'legal_company_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        city_c,
        company_category_c,
        company_group_c,
        company_status_c,
        company_type_c,
        conga_company_number_c,
        created_by_id,
        created_date,
        currency_iso_code,
        exclude_from_conga_sync_c,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        phone_c,
        postal_code_c,
        state_c,
        street_c,
        system_modstamp,
        website_url_c,
        last_referenced_date,
        last_viewed_date

    from source

)

select * from renamed
