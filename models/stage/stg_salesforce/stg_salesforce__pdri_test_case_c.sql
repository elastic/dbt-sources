
with source as (

    select * from {{ source('raw_salesforce', 'pdri_test_case_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        pdri_baseline_date_c,
        pdri_description_c,
        pdri_function_c,
        pdri_last_ran_c,
        pdri_price_book_id_c,
        pdri_product_id_c,
        pdri_quote_id_c,
        pdri_test_template_c,
        system_modstamp,
        pdri_baseline_error_c,
        pdri_baseline_status_c

    from source

)

select * from renamed
