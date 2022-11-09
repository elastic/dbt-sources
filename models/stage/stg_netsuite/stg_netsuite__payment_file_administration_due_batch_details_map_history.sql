
with source as (

    select * from {{ source('raw_netsuite', 'payment_file_administration_due_batch_details_map_history') }}

),

renamed as (

    select
        batch_details_id,
        payment_file_administration_id

    from source

)

select * from renamed
