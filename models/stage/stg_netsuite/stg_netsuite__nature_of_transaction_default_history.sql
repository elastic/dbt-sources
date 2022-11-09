
with source as (

    select * from {{ source('raw_netsuite', 'nature_of_transaction_default_history') }}

),

renamed as (

    select
        country_id,
        date_created,
        is_inactive,
        last_modified_date,
        nature_of_transaction_defau_ex,
        nature_of_transaction_defau_id,
        notc_id,
        parent_id

    from source

)

select * from renamed
