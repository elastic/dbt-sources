
with source as (

    select * from {{ source('raw_netsuite', 'nature_of_transaction') }}

),

renamed as (

    select
        country_id,
        date_created,
        is_inactive,
        last_modified_date,
        nature_of_transaction_extid,
        nature_of_transaction_id,
        nature_of_transaction_name,
        parent_id

    from source

)

select * from renamed
