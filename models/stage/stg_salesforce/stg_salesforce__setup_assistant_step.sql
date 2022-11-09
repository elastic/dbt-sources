
with source as (

    select * from {{ source('raw_salesforce', 'setup_assistant_step') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        assistant_type,
        created_by_id,
        created_date,
        currency_iso_code,
        is_complete,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
