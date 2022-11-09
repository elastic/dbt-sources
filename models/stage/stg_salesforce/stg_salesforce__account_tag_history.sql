
with source as (

    select * from {{ source('raw_salesforce', 'account_tag_history') }}

),

renamed as (

    select
        partitiontime,
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
