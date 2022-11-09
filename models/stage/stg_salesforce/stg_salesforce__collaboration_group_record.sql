
with source as (

    select * from {{ source('raw_salesforce', 'collaboration_group_record') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        collaboration_group_id,
        created_by_id,
        created_date,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        network_id,
        record_id,
        system_modstamp

    from source

)

select * from renamed
