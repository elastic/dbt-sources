
with source as (

    select * from {{ source('raw_salesforce', 'queue_sobject') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        created_by_id,
        queue_id,
        sobject_type,
        system_modstamp

    from source

)

select * from renamed
