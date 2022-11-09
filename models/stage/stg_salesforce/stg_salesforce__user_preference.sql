
with source as (

    select * from {{ source('raw_salesforce', 'user_preference') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        preference,
        system_modstamp,
        user_id,
        value,
        _fivetran_deleted

    from source

)

select * from renamed
