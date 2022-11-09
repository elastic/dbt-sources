
with source as (

    select * from {{ source('raw_salesforce', 'account_user_territory_2_view_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        account_id,
        id,
        last_modified_date,
        role_in_territory_2,
        territory_2_id,
        user_id,
        _fivetran_deleted

    from source

)

select * from renamed
