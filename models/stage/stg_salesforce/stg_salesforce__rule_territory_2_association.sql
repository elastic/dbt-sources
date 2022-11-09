
with source as (

    select * from {{ source('raw_salesforce', 'rule_territory_2_association') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        is_deleted,
        is_inherited,
        last_modified_by_id,
        last_modified_date,
        rule_id,
        system_modstamp,
        territory_2_id

    from source

)

select * from renamed
