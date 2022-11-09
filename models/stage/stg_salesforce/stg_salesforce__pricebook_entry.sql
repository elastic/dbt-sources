
with source as (

    select * from {{ source('raw_salesforce', 'pricebook_entry') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_active,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        pricebook_2_id,
        product_2_id,
        product_code,
        system_modstamp,
        unit_price,
        use_standard_price,
        is_archived

    from source

)

select * from renamed
