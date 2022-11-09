
with source as (

    select * from {{ source('raw_salesforce', 'group_member') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        group_id,
        system_modstamp,
        user_or_group_id

    from source

)

select * from renamed
