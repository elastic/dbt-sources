
with source as (

    select * from {{ source('raw_salesforce', 'topic') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        created_by_id,
        created_date,
        description,
        name,
        network_id,
        system_modstamp,
        talking_about,
        managed_topic_type

    from source

)

select * from renamed
