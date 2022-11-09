
with source as (

    select * from {{ source('raw_salesforce', 'pricebook_2') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        description,
        is_active,
        is_deleted,
        is_standard,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        system_modstamp,
        price_book_id_18_digits_c,
        is_archived

    from source

)

select * from renamed
