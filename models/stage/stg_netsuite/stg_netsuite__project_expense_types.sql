
with source as (

    select * from {{ source('raw_netsuite', 'project_expense_types') }}

),

renamed as (

    select
        account_id,
        description,
        is_inactive,
        name,
        project_expense_type_id

    from source

)

select * from renamed
