
with source as (

    select * from {{ source('raw_salesforce', 'territory_2_object_exclusion') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        note,
        object_id,
        system_modstamp,
        territory_2_id

    from source

)

select * from renamed
