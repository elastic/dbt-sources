
with source as (

    select * from {{ source('raw_netsuite', 'task_contacts') }}

),

renamed as (

    select
        company_id,
        contact_id,
        task_id

    from source

)

select * from renamed
