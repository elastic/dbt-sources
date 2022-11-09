
with source as (

    select * from {{ source('raw_netsuite_sa', 'nature_of_transaction_codes') }}

),

renamed as (

    select
        nature_of_transaction_codes_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        nature_of_transaction_codes_ex,
        nature_of_transaction_codes_na,
        notc_code,
        notc_country_id,
        notc_description,
        parent_id

    from source

)

select * from renamed
