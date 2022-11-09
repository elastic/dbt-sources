
with source as (

    select * from {{ source('raw_salesforce', 'assignment_rule') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        active,
        created_by_id,
        created_date,
        last_modified_by_id,
        last_modified_date,
        name,
        sobject_type,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
