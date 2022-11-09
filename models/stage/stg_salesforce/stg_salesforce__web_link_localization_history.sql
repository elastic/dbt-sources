
with source as (

    select * from {{ source('raw_salesforce', 'web_link_localization_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_deleted,
        _fivetran_synced,
        created_by_id,
        created_date,
        language,
        last_modified_by_id,
        last_modified_date,
        namespace_prefix,
        system_modstamp,
        value,
        web_link_id

    from source

)

select * from renamed
