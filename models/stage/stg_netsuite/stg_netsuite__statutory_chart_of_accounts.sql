
with source as (

    select * from {{ source('raw_netsuite', 'statutory_chart_of_accounts') }}

),

renamed as (

    select
        account_id,
        date_created,
        is_inactive,
        last_modified_date,
        name,
        number_0,
        parent_id,
        statutory_chart_of_accounts_ex,
        statutory_chart_of_accounts_id,
        subsidiary_id

    from source

)

select * from renamed
