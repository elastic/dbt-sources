
with source as (

    select * from {{ source('raw_netsuite', 'task_contacts_history') }}

),

renamed as (

    select
        company_id,
        contact_id,
        task_id

    from source

)

select * from renamed
