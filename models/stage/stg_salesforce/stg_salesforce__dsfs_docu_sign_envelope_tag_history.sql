
with source as (

    select * from {{ source('raw_salesforce', 'dsfs_docu_sign_envelope_tag_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_date,
        id,
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