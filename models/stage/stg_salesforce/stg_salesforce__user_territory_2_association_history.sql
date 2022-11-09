
with source as (

    select * from {{ source('raw_salesforce', 'user_territory_2_association_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        is_active,
        last_modified_by_id,
        last_modified_date,
        role_in_territory_2,
        system_modstamp,
        territory_2_id,
        user_id,
        _fivetran_deleted

    from source

)

select * from renamed
