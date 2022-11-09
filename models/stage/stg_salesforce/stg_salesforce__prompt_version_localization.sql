
with source as (

    select * from {{ source('raw_salesforce', 'prompt_version_localization') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        created_by_id,
        created_date,
        language,
        last_modified_by_id,
        last_modified_date,
        namespace_prefix,
        parent_id,
        system_modstamp,
        value

    from source

)

select * from renamed
