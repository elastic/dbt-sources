
with source as (

    select * from {{ source('raw_saas_search', 'user_account_map') }}

),

renamed as (

    select
        id,
        account_id

    from source

)

select * from renamed
