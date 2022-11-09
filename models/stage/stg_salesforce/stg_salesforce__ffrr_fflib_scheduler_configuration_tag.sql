
with source as (

    select * from {{ source('raw_salesforce', 'ffrr_fflib_scheduler_configuration_tag') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_date,
        is_deleted,
        item_id,
        name,
        system_modstamp,
        tag_definition_id,
        type,
        _fivetran_deleted

    from source

)

select * from renamed