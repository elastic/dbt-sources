
with source as (

    select * from {{ source('raw_salesforce', 'account_user_territory_2_view') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        account_id,
        last_modified_date,
        role_in_territory_2,
        territory_2_id,
        user_id,
        _fivetran_deleted

    from source

)

select * from renamed
