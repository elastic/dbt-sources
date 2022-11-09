
with source as (

    select * from {{ source('raw_salesforce', 'object_territory_2_association') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        association_cause,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        object_id,
        sobject_type,
        system_modstamp,
        territory_2_id,
        _fivetran_deleted

    from source

)

select * from renamed
