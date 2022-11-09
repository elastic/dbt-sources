
with source as (

    select * from {{ source('raw_salesforce', 'milestone_type_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        description,
        last_modified_by_id,
        last_modified_date,
        name,
        recurrence_type,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
