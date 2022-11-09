
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_account_search_c') }}

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
        system_modstamp,
        lean_data_search_c,
        lean_data_email_domains_c,
        lean_data_account_c

    from source

)

select * from renamed
