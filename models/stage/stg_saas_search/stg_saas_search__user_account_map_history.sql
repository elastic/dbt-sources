
with source as (

    select * from {{ source('raw_saas_search', 'user_account_map_history') }}

),

renamed as (

    select
        id,
        account_id,
        partition_date

    from source

)

select * from renamed
