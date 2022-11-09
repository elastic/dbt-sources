
with source as (

    select * from {{ source('raw_salesforce', 'consumption_schedule') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        billing_term,
        billing_term_unit,
        created_by_id,
        created_date,
        currency_iso_code,
        description,
        is_active,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        matching_attribute,
        name,
        number_of_rates,
        owner_id,
        rating_method,
        sbqq_category_c,
        system_modstamp,
        type,
        unit_of_measure

    from source

)

select * from renamed
