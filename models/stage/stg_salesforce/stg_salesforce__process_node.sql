
with source as (

    select * from {{ source('raw_salesforce', 'process_node') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        description,
        developer_name,
        name,
        process_definition_id,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
