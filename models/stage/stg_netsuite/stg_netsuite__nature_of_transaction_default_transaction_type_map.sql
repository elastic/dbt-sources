
with source as (

    select * from {{ source('raw_netsuite', 'nature_of_transaction_default_transaction_type_map') }}

),

renamed as (

    select
        nature_of_transaction_defau_id,
        transaction_type_list_id

    from source

)

select * from renamed
