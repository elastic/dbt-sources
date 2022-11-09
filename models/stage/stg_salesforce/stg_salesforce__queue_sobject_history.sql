
with source as (

    select * from {{ source('raw_salesforce', 'queue_sobject_history') }}

),

renamed as (

    select
        partitiontime,
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
