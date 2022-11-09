
with source as (

    select * from {{ source('raw_netsuite', 'nature_of_transaction_codes_history') }}

),

renamed as (

    select
        date_created,
        is_inactive,
        last_modified_date,
        nature_of_transaction_codes_ex,
        nature_of_transaction_codes_id,
        nature_of_transaction_codes_na,
        notc_code,
        notc_country_id,
        notc_description,
        parent_id

    from source

)

select * from renamed
