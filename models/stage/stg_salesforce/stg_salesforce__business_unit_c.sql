
with source as (

    select * from {{ source('raw_salesforce', 'business_unit_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        company_c,
        created_by_id,
        created_date,
        currency_iso_code,
        customer_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        lead_executive_c,
        name,
        notes_c,
        number_of_employees_c,
        opportunity_c,
        owner_id,
        revenue_c,
        revenue_growth_rate_c,
        system_modstamp,
        using_elk_c

    from source

)

select * from renamed
